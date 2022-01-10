-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 24, 2021 at 04:00 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `rest_actionscheduler_actions`
--

CREATE TABLE `rest_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rest_actionscheduler_actions`
--

INSERT INTO `rest_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(4, 'wc-admin_import_customers', 'complete', '2021-12-01 16:20:29', '2021-12-01 16:20:29', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1638375629;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1638375629;}', 2, 1, '2021-12-01 16:21:38', '2021-12-01 19:21:38', 0, NULL),
(5, 'wc-admin_import_customers', 'complete', '2021-12-02 16:07:35', '2021-12-02 16:07:35', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1638461255;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1638461255;}', 2, 1, '2021-12-02 16:08:10', '2021-12-02 19:08:10', 0, NULL),
(6, 'wc-admin_import_customers', 'complete', '2021-12-24 13:43:33', '2021-12-24 13:43:33', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1640353413;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1640353413;}', 2, 1, '2021-12-24 13:44:08', '2021-12-24 16:44:08', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rest_actionscheduler_claims`
--

CREATE TABLE `rest_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rest_actionscheduler_groups`
--

CREATE TABLE `rest_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rest_actionscheduler_groups`
--

INSERT INTO `rest_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wc-admin-data');

-- --------------------------------------------------------

--
-- Table structure for table `rest_actionscheduler_logs`
--

CREATE TABLE `rest_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rest_actionscheduler_logs`
--

INSERT INTO `rest_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(10, 4, 'action created', '2021-12-01 16:20:24', '2021-12-01 16:20:24'),
(11, 4, 'action started via Async Request', '2021-12-01 16:21:38', '2021-12-01 16:21:38'),
(12, 4, 'action complete via Async Request', '2021-12-01 16:21:38', '2021-12-01 16:21:38'),
(13, 5, 'action created', '2021-12-02 16:07:30', '2021-12-02 16:07:30'),
(14, 5, 'action started via WP Cron', '2021-12-02 16:08:10', '2021-12-02 16:08:10'),
(15, 5, 'action complete via WP Cron', '2021-12-02 16:08:10', '2021-12-02 16:08:10'),
(16, 6, 'action created', '2021-12-24 13:43:28', '2021-12-24 13:43:28'),
(17, 6, 'action started via WP Cron', '2021-12-24 13:44:08', '2021-12-24 13:44:08'),
(18, 6, 'action complete via WP Cron', '2021-12-24 13:44:08', '2021-12-24 13:44:08');

-- --------------------------------------------------------

--
-- Table structure for table `rest_cocart_carts`
--

CREATE TABLE `rest_cocart_carts` (
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `cart_key` char(42) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cart_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cart_created` bigint(20) UNSIGNED NOT NULL,
  `cart_expiry` bigint(20) UNSIGNED NOT NULL,
  `cart_source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cart_hash` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rest_commentmeta`
--

CREATE TABLE `rest_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rest_commentmeta`
--

INSERT INTO `rest_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 85, 'is_customer_note', '1');

-- --------------------------------------------------------

--
-- Table structure for table `rest_comments`
--

CREATE TABLE `rest_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rest_comments`
--

INSERT INTO `rest_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-08-04 11:49:41', '2021-08-04 08:49:41', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0),
(16, 158, 'WooCommerce', '', '', '', '2021-09-08 22:01:03', '2021-09-08 19:01:03', 'Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(17, 162, 'WooCommerce', '', '', '', '2021-09-08 22:06:04', '2021-09-08 19:06:04', 'Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(18, 163, 'WooCommerce', '', '', '', '2021-09-08 22:07:09', '2021-09-08 19:07:09', 'Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(19, 164, 'WooCommerce', '', '', '', '2021-09-08 22:08:17', '2021-09-08 19:08:17', 'Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(20, 165, 'WooCommerce', '', '', '', '2021-09-08 22:10:36', '2021-09-08 19:10:36', 'Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(21, 166, 'WooCommerce', '', '', '', '2021-09-08 22:12:25', '2021-09-08 19:12:25', 'Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(22, 167, 'WooCommerce', '', '', '', '2021-09-08 22:24:34', '2021-09-08 19:24:34', 'Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(23, 168, 'WooCommerce', '', '', '', '2021-09-08 22:25:03', '2021-09-08 19:25:03', 'Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(24, 168, 'admin', 'burlakeugene@gmail.com', '', '', '2021-09-08 22:25:38', '2021-09-08 19:25:38', 'ds', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(25, 169, 'WooCommerce', '', '', '', '2021-09-08 22:37:12', '2021-09-08 19:37:12', 'Дата: 09/09/2021nВремя: 22:06', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(26, 169, 'WooCommerce', '', '', '', '2021-09-08 22:37:12', '2021-09-08 19:37:12', 'Оплата: Наличными', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(27, 169, 'WooCommerce', '', '', '', '2021-09-08 22:37:12', '2021-09-08 19:37:12', 'Комментарий:ncomm', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(28, 169, 'WooCommerce', '', '', '', '2021-09-08 22:37:13', '2021-09-08 19:37:13', 'Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(29, 170, 'WooCommerce', '', '', '', '2021-09-08 22:38:44', '2021-09-08 19:38:44', 'Оплата: Картой', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(30, 170, 'WooCommerce', '', '', '', '2021-09-08 22:38:44', '2021-09-08 19:38:44', 'Комментарий:\ncomm', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(32, 171, 'WooCommerce', '', '', '', '2021-09-08 22:45:33', '2021-09-08 19:45:33', 'Дата: 09/09/2021\nВремя: 19:00', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(33, 171, 'WooCommerce', '', '', '', '2021-09-08 22:45:33', '2021-09-08 19:45:33', 'Оплата: Картой', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(34, 171, 'WooCommerce', '', '', '', '2021-09-08 22:45:33', '2021-09-08 19:45:33', 'Комментарий:\ncommnet', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(35, 171, 'WooCommerce', '', '', '', '2021-09-08 22:45:33', '2021-09-08 19:45:33', 'Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(36, 173, 'WooCommerce', '', '', '', '2021-09-08 23:04:27', '2021-09-08 20:04:27', 'Оплата: Наличными', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(37, 173, 'WooCommerce', '', '', '', '2021-09-08 23:04:27', '2021-09-08 20:04:27', 'Комментарий:\ncommnet', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(38, 173, 'WooCommerce', '', '', '', '2021-09-08 23:04:27', '2021-09-08 20:04:27', 'Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(39, 174, 'WooCommerce', '', '', '', '2021-09-08 23:06:14', '2021-09-08 20:06:14', 'Оплата: Наличными', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(40, 174, 'WooCommerce', '', '', '', '2021-09-08 23:06:14', '2021-09-08 20:06:14', 'Комментарий:\ncommnet', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(41, 174, 'WooCommerce', '', '', '', '2021-09-08 23:06:14', '2021-09-08 20:06:14', 'Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(42, 175, 'WooCommerce', '', '', '', '2021-09-08 23:06:34', '2021-09-08 20:06:34', 'Оплата: Наличными', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(43, 175, 'WooCommerce', '', '', '', '2021-09-08 23:06:34', '2021-09-08 20:06:34', 'Комментарий:\ncommnet', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(44, 175, 'WooCommerce', '', '', '', '2021-09-08 23:06:34', '2021-09-08 20:06:34', 'Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(45, 176, 'WooCommerce', '', '', '', '2021-09-08 23:06:35', '2021-09-08 20:06:35', 'Оплата: Наличными', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(46, 176, 'WooCommerce', '', '', '', '2021-09-08 23:06:35', '2021-09-08 20:06:35', 'Комментарий:\ncommnet', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(47, 176, 'WooCommerce', '', '', '', '2021-09-08 23:06:35', '2021-09-08 20:06:35', 'Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(48, 177, 'WooCommerce', '', '', '', '2021-09-08 23:06:35', '2021-09-08 20:06:35', 'Оплата: Наличными', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(49, 177, 'WooCommerce', '', '', '', '2021-09-08 23:06:35', '2021-09-08 20:06:35', 'Комментарий:\ncommnet', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(50, 177, 'WooCommerce', '', '', '', '2021-09-08 23:06:35', '2021-09-08 20:06:35', 'Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(51, 178, 'WooCommerce', '', '', '', '2021-09-08 23:06:35', '2021-09-08 20:06:35', 'Оплата: Наличными', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(52, 178, 'WooCommerce', '', '', '', '2021-09-08 23:06:35', '2021-09-08 20:06:35', 'Комментарий:\ncommnet', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(53, 178, 'WooCommerce', '', '', '', '2021-09-08 23:06:35', '2021-09-08 20:06:35', 'Order status changed from Pending payment to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(54, 179, 'WooCommerce', '', '', '', '2021-09-08 23:06:35', '2021-09-08 20:06:35', 'Оплата: Наличными', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(55, 179, 'WooCommerce', '', '', '', '2021-09-08 23:06:35', '2021-09-08 20:06:35', 'Комментарий:\ncommnet', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(56, 180, 'WooCommerce', '', '', '', '2021-09-08 23:06:35', '2021-09-08 20:06:35', 'Оплата: Наличными', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(57, 180, 'WooCommerce', '', '', '', '2021-09-08 23:06:35', '2021-09-08 20:06:35', 'Комментарий:\ncommnet', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(58, 179, 'WooCommerce', '', '', '', '2021-09-08 23:06:35', '2021-09-08 20:06:35', 'Order status changed from Pending payment to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(59, 180, 'WooCommerce', '', '', '', '2021-09-08 23:06:35', '2021-09-08 20:06:35', 'Order status changed from Pending payment to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(60, 181, 'WooCommerce', '', '', '', '2021-09-08 23:09:54', '2021-09-08 20:09:54', 'Оплата: Наличными', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(61, 181, 'WooCommerce', '', '', '', '2021-09-08 23:09:54', '2021-09-08 20:09:54', 'Комментарий:\ncommnet', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(62, 181, 'WooCommerce', '', '', '', '2021-09-08 23:09:54', '2021-09-08 20:09:54', 'Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(63, 182, 'WooCommerce', '', '', '', '2021-09-08 23:10:13', '2021-09-08 20:10:13', 'Оплата: Наличными', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(64, 182, 'WooCommerce', '', '', '', '2021-09-08 23:10:13', '2021-09-08 20:10:13', 'Комментарий:\ncommnet', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(65, 182, 'WooCommerce', '', '', '', '2021-09-08 23:10:13', '2021-09-08 20:10:13', 'Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(66, 183, 'WooCommerce', '', '', '', '2021-09-08 23:11:11', '2021-09-08 20:11:11', 'Оплата: Наличными', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(67, 183, 'WooCommerce', '', '', '', '2021-09-08 23:11:11', '2021-09-08 20:11:11', 'Комментарий:\ncommnet', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(68, 183, 'WooCommerce', '', '', '', '2021-09-08 23:11:11', '2021-09-08 20:11:11', 'Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(69, 184, 'WooCommerce', '', '', '', '2021-09-08 23:12:13', '2021-09-08 20:12:13', 'Дата: 09/12/2021\nВремя: 19:00', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(70, 184, 'WooCommerce', '', '', '', '2021-09-08 23:12:13', '2021-09-08 20:12:13', 'Оплата: Наличными', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(71, 184, 'WooCommerce', '', '', '', '2021-09-08 23:12:13', '2021-09-08 20:12:13', 'Комментарий:\ncommnet', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(72, 184, 'WooCommerce', '', '', '', '2021-09-08 23:12:13', '2021-09-08 20:12:13', 'Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(73, 185, 'WooCommerce', '', '', '', '2021-09-08 23:13:18', '2021-09-08 20:13:18', 'Дата: 09/12/2021\nВремя: 19:00', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(74, 185, 'WooCommerce', '', '', '', '2021-09-08 23:13:18', '2021-09-08 20:13:18', 'Оплата: Наличными', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(75, 185, 'WooCommerce', '', '', '', '2021-09-08 23:13:18', '2021-09-08 20:13:18', 'Комментарий:\ncommnet', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(76, 185, 'WooCommerce', '', '', '', '2021-09-08 23:13:18', '2021-09-08 20:13:18', 'Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(77, 157, 'WooCommerce', '', '', '', '2021-09-08 23:15:34', '2021-09-08 20:15:34', 'Unpaid order cancelled - time limit reached. Order status changed from Pending payment to Cancelled.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(78, 159, 'WooCommerce', '', '', '', '2021-09-08 23:15:34', '2021-09-08 20:15:34', 'Unpaid order cancelled - time limit reached. Order status changed from Pending payment to Cancelled.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(79, 160, 'WooCommerce', '', '', '', '2021-09-08 23:15:34', '2021-09-08 20:15:34', 'Unpaid order cancelled - time limit reached. Order status changed from Pending payment to Cancelled.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(80, 161, 'WooCommerce', '', '', '', '2021-09-08 23:15:34', '2021-09-08 20:15:34', 'Unpaid order cancelled - time limit reached. Order status changed from Pending payment to Cancelled.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(81, 186, 'WooCommerce', '', '', '', '2021-09-08 23:15:34', '2021-09-08 20:15:34', 'Дата: 09/12/2021\nВремя: 19:00', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(82, 186, 'WooCommerce', '', '', '', '2021-09-08 23:15:34', '2021-09-08 20:15:34', 'Оплата: Наличными', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(83, 186, 'WooCommerce', '', '', '', '2021-09-08 23:15:34', '2021-09-08 20:15:34', 'Комментарий:\ncommnet', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(84, 186, 'WooCommerce', '', '', '', '2021-09-08 23:15:34', '2021-09-08 20:15:34', 'Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(85, 185, 'admin', 'burlakeugene@gmail.com', '', '', '2021-09-08 23:18:02', '2021-09-08 20:18:02', 'ыфвфывфы', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(86, 187, 'WooCommerce', '', '', '', '2021-09-08 23:20:40', '2021-09-08 20:20:40', 'Дата: 09/12/2021\nВремя: 19:00', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(87, 187, 'WooCommerce', '', '', '', '2021-09-08 23:20:40', '2021-09-08 20:20:40', 'Оплата: Картой', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(88, 187, 'WooCommerce', '', '', '', '2021-09-08 23:20:40', '2021-09-08 20:20:40', 'Комментарий:\ncommnet', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(89, 187, 'WooCommerce', '', '', '', '2021-09-08 23:20:40', '2021-09-08 20:20:40', 'Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(90, 191, 'WooCommerce', '', '', '', '2021-09-12 02:44:48', '2021-09-11 23:44:48', 'Дата: 09/11/2021\nВремя: 18:19', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(91, 191, 'WooCommerce', '', '', '', '2021-09-12 02:44:49', '2021-09-11 23:44:49', 'Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rest_links`
--

CREATE TABLE `rest_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rest_options`
--

CREATE TABLE `rest_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rest_options`
--

INSERT INTO `rest_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/rest/store', 'yes'),
(2, 'home', 'http://localhost:8888/rest/store', 'yes'),
(3, 'blogname', 'Советская пельменная', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'burlakeugene@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:250:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"products/?$\";s:27:\"index.php?post_type=product\";s:41:\"products/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:36:\"products/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:28:\"products/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:7:\"news/?$\";s:24:\"index.php?post_type=news\";s:37:\"news/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=news&feed=$matches[1]\";s:32:\"news/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=news&feed=$matches[1]\";s:24:\"news/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=news&paged=$matches[1]\";s:9:\"stores/?$\";s:26:\"index.php?post_type=stores\";s:39:\"stores/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=stores&feed=$matches[1]\";s:34:\"stores/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=stores&feed=$matches[1]\";s:26:\"stores/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=stores&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:47:\"products/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:42:\"products/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:23:\"products/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:35:\"products/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:17:\"products/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:49:\"products/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:44:\"products/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:25:\"products/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:37:\"products/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:19:\"products/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"static-block/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"static-block/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"static-block/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"static-block/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"static-block/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"static-block/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"static-block/([^/]+)/embed/?$\";s:45:\"index.php?static-block=$matches[1]&embed=true\";s:33:\"static-block/([^/]+)/trackback/?$\";s:39:\"index.php?static-block=$matches[1]&tb=1\";s:41:\"static-block/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?static-block=$matches[1]&paged=$matches[2]\";s:48:\"static-block/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?static-block=$matches[1]&cpage=$matches[2]\";s:38:\"static-block/([^/]+)/wc-api(/(.*))?/?$\";s:53:\"index.php?static-block=$matches[1]&wc-api=$matches[3]\";s:44:\"static-block/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:55:\"static-block/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:37:\"static-block/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?static-block=$matches[1]&page=$matches[2]\";s:29:\"static-block/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"static-block/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"static-block/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"static-block/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"static-block/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"static-block/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"news/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"news/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"news/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"news/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"news/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"news/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"news/([^/]+)/embed/?$\";s:37:\"index.php?news=$matches[1]&embed=true\";s:25:\"news/([^/]+)/trackback/?$\";s:31:\"index.php?news=$matches[1]&tb=1\";s:45:\"news/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?news=$matches[1]&feed=$matches[2]\";s:40:\"news/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?news=$matches[1]&feed=$matches[2]\";s:33:\"news/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?news=$matches[1]&paged=$matches[2]\";s:40:\"news/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?news=$matches[1]&cpage=$matches[2]\";s:30:\"news/([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?news=$matches[1]&wc-api=$matches[3]\";s:36:\"news/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:47:\"news/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:29:\"news/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?news=$matches[1]&page=$matches[2]\";s:21:\"news/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"news/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"news/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"news/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"news/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"news/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"stores/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"stores/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"stores/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"stores/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"stores/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"stores/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"stores/([^/]+)/embed/?$\";s:39:\"index.php?stores=$matches[1]&embed=true\";s:27:\"stores/([^/]+)/trackback/?$\";s:33:\"index.php?stores=$matches[1]&tb=1\";s:47:\"stores/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?stores=$matches[1]&feed=$matches[2]\";s:42:\"stores/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?stores=$matches[1]&feed=$matches[2]\";s:35:\"stores/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?stores=$matches[1]&paged=$matches[2]\";s:42:\"stores/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?stores=$matches[1]&cpage=$matches[2]\";s:32:\"stores/([^/]+)/wc-api(/(.*))?/?$\";s:47:\"index.php?stores=$matches[1]&wc-api=$matches[3]\";s:38:\"stores/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:49:\"stores/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:31:\"stores/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?stores=$matches[1]&page=$matches[2]\";s:23:\"stores/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"stores/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"stores/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"stores/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"stores/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"stores/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"banners/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"banners/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"banners/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"banners/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"banners/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"banners/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"banners/([^/]+)/embed/?$\";s:40:\"index.php?banners=$matches[1]&embed=true\";s:28:\"banners/([^/]+)/trackback/?$\";s:34:\"index.php?banners=$matches[1]&tb=1\";s:36:\"banners/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?banners=$matches[1]&paged=$matches[2]\";s:43:\"banners/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?banners=$matches[1]&cpage=$matches[2]\";s:33:\"banners/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?banners=$matches[1]&wc-api=$matches[3]\";s:39:\"banners/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"banners/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"banners/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?banners=$matches[1]&page=$matches[2]\";s:24:\"banners/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"banners/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"banners/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"banners/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"banners/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"banners/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:11:{i:0;s:41:\"advanced-custom-fields-pro-master/acf.php\";i:1;s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";i:2;s:33:\"classic-editor/classic-editor.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:22:\"cyr2lat/cyr-to-lat.php\";i:5;s:19:\"jetpack/jetpack.php\";i:6;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:7;s:21:\"safe-svg/safe-svg.php\";i:8;s:53:\"simple-custom-post-order/simple-custom-post-order.php\";i:9;s:29:\"static-block/static-block.php\";i:10;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'burlak', 'yes'),
(41, 'stylesheet', 'burlak', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:53:\"simple-custom-post-order/simple-custom-post-order.php\";s:18:\"scporder_uninstall\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '18', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1643618981', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'rest_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:115:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:18:\"bcn_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'ru_RU', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:167:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие записи</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:247:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Свежие комментарии</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архивы</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Рубрики</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:19:{i:1640361601;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1640361904;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1640361911;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1640362113;a:1:{s:20:\"jetpack_clean_nonces\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1640363065;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1640364581;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1640378981;a:4:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1640379600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1640401502;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1640422181;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1640422186;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1640422189;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1640423104;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1640423112;a:2:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1640423313;a:1:{s:20:\"jetpack_v2_heartbeat\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1640433902;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1640854181;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1641027962;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:36:\"HTTPS запрос неудачен.\";}}', 'yes'),
(122, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1628067335;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(138, 'can_compress_scripts', '1', 'no'),
(151, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(152, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(156, 'finished_updating_comment_type', '1', 'yes'),
(157, 'current_theme', '', 'yes'),
(158, 'theme_mods_burlak', 'a:7:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"footer\";i:20;s:6:\"header\";i:20;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1631123478;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}s:11:\"custom_logo\";i:192;s:12:\"header_image\";s:88:\"http://localhost:8888/rest/store/wp-content/uploads/2021/09/cropped-sov-pelm-1-2-2-2.png\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:194;s:3:\"url\";s:88:\"http://localhost:8888/rest/store/wp-content/uploads/2021/09/cropped-sov-pelm-1-2-2-2.png\";s:13:\"thumbnail_url\";s:88:\"http://localhost:8888/rest/store/wp-content/uploads/2021/09/cropped-sov-pelm-1-2-2-2.png\";s:6:\"height\";i:90;s:5:\"width\";i:87;}}', 'yes'),
(159, 'theme_switched', '', 'yes'),
(160, 'recently_activated', 'a:0:{}', 'yes'),
(165, 'action_scheduler_hybrid_store_demarkation', '10', 'yes'),
(166, 'schema-ActionScheduler_StoreSchema', '4.0.1628067901', 'yes'),
(167, 'schema-ActionScheduler_LoggerSchema', '2.0.1628067901', 'yes'),
(170, 'woocommerce_schema_version', '430', 'yes'),
(171, 'woocommerce_store_address', 'test', 'yes'),
(172, 'woocommerce_store_address_2', '', 'yes'),
(173, 'woocommerce_store_city', 'test', 'yes'),
(174, 'woocommerce_default_country', 'RU', 'yes'),
(175, 'woocommerce_store_postcode', 'test', 'yes'),
(176, 'woocommerce_allowed_countries', 'all', 'yes'),
(177, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(178, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(179, 'woocommerce_ship_to_countries', '', 'yes'),
(180, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(181, 'woocommerce_default_customer_address', 'base', 'yes'),
(182, 'woocommerce_calc_taxes', 'no', 'yes'),
(183, 'woocommerce_enable_coupons', 'yes', 'yes'),
(184, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(185, 'woocommerce_currency', 'RUB', 'yes'),
(186, 'woocommerce_currency_pos', 'right_space', 'yes'),
(187, 'woocommerce_price_thousand_sep', '', 'yes'),
(188, 'woocommerce_price_decimal_sep', '', 'yes'),
(189, 'woocommerce_price_num_decimals', '2', 'yes'),
(190, 'woocommerce_shop_page_id', '11', 'yes'),
(191, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(192, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(193, 'woocommerce_placeholder_image', '10', 'yes'),
(194, 'woocommerce_weight_unit', 'kg', 'yes'),
(195, 'woocommerce_dimension_unit', 'cm', 'yes'),
(196, 'woocommerce_enable_reviews', 'yes', 'yes'),
(197, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(198, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(199, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(200, 'woocommerce_review_rating_required', 'yes', 'no'),
(201, 'woocommerce_manage_stock', 'yes', 'yes'),
(202, 'woocommerce_hold_stock_minutes', '60', 'no'),
(203, 'woocommerce_notify_low_stock', 'yes', 'no'),
(204, 'woocommerce_notify_no_stock', 'yes', 'no'),
(205, 'woocommerce_stock_email_recipient', 'burlakeugene@gmail.com', 'no'),
(206, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(207, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(208, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(209, 'woocommerce_stock_format', '', 'yes'),
(210, 'woocommerce_file_download_method', 'force', 'no'),
(211, 'woocommerce_downloads_redirect_fallback_allowed', 'no', 'no'),
(212, 'woocommerce_downloads_require_login', 'no', 'no'),
(213, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(214, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(215, 'woocommerce_prices_include_tax', 'no', 'yes'),
(216, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(217, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(218, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(219, 'woocommerce_tax_classes', '', 'yes'),
(220, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(221, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(222, 'woocommerce_price_display_suffix', '', 'yes'),
(223, 'woocommerce_tax_total_display', 'itemized', 'no'),
(224, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(225, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(226, 'woocommerce_ship_to_destination', 'billing', 'no'),
(227, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(228, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(229, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(230, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(231, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(232, 'woocommerce_registration_generate_username', 'yes', 'no');
INSERT INTO `rest_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(233, 'woocommerce_registration_generate_password', 'yes', 'no'),
(234, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(235, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(236, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(237, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(238, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(239, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(240, 'woocommerce_trash_pending_orders', '', 'no'),
(241, 'woocommerce_trash_failed_orders', '', 'no'),
(242, 'woocommerce_trash_cancelled_orders', '', 'no'),
(243, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(244, 'woocommerce_email_from_name', 'Советская пельменная', 'no'),
(245, 'woocommerce_email_from_address', 'burlakeugene@gmail.com', 'no'),
(246, 'woocommerce_email_header_image', '', 'no'),
(247, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(248, 'woocommerce_email_base_color', '#96588a', 'no'),
(249, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(250, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(251, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(252, 'woocommerce_merchant_email_notifications', 'no', 'no'),
(253, 'woocommerce_cart_page_id', '12', 'no'),
(254, 'woocommerce_checkout_page_id', '13', 'no'),
(255, 'woocommerce_myaccount_page_id', '14', 'no'),
(256, 'woocommerce_terms_page_id', '', 'no'),
(257, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(258, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(259, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(260, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(261, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(262, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(263, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(264, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(265, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(266, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(267, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(268, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(269, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(270, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(271, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(272, 'woocommerce_api_enabled', 'no', 'yes'),
(273, 'woocommerce_allow_tracking', 'no', 'no'),
(274, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(275, 'woocommerce_single_image_width', '600', 'yes'),
(276, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(277, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(278, 'woocommerce_demo_store', 'no', 'no'),
(279, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:8:\"/product\";s:13:\"category_base\";s:8:\"products\";s:8:\"tag_base\";s:8:\"products\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(280, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(281, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(284, 'default_product_cat', '15', 'yes'),
(287, 'woocommerce_paypal_settings', 'a:23:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:5:\"email\";s:22:\"burlakeugene@gmail.com\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:22:\"burlakeugene@gmail.com\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";s:12:\"_should_load\";s:2:\"no\";}', 'yes'),
(288, 'woocommerce_version', '5.5.2', 'yes'),
(289, 'woocommerce_db_version', '5.5.2', 'yes'),
(290, 'woocommerce_inbox_variant_assignment', '6', 'yes'),
(294, '_transient_jetpack_autoloader_plugin_paths', 'a:2:{i:0;s:25:\"{{WP_PLUGIN_DIR}}/jetpack\";i:1;s:29:\"{{WP_PLUGIN_DIR}}/woocommerce\";}', 'yes'),
(295, 'action_scheduler_lock_async-request-runner', '1640361626', 'yes'),
(296, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(297, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"SxBVkLjUYbwFxK9OnjI2Ya3d060MTPMM\";}', 'yes'),
(298, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(299, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(300, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(301, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(302, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(303, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(304, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(305, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(306, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(307, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(308, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(309, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(310, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(313, 'woocommerce_admin_version', '2.4.4', 'yes'),
(314, 'woocommerce_admin_install_timestamp', '1628067904', 'yes'),
(315, 'wc_remote_inbox_notifications_wca_updated', '', 'no'),
(316, 'wc_remote_inbox_notifications_specs', 'a:0:{}', 'no'),
(317, 'wc_remote_inbox_notifications_stored_state', 'O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:1;}', 'no'),
(322, 'wc_blocks_db_schema_version', '260', 'yes'),
(323, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(326, '_transient_woocommerce_reports-transient-version', '1640353448', 'yes'),
(338, 'woocommerce_onboarding_profile', 'a:8:{s:12:\"setup_client\";b:1;s:8:\"industry\";a:1:{i:0;a:1:{s:4:\"slug\";s:10:\"food-drink\";}}s:13:\"product_types\";a:1:{i:0;s:8:\"physical\";}s:13:\"product_count\";s:1:\"0\";s:14:\"selling_venues\";s:2:\"no\";s:19:\"business_extensions\";a:1:{i:0;s:7:\"jetpack\";}s:5:\"theme\";s:6:\"burlak\";s:9:\"completed\";b:1;}', 'yes'),
(345, 'jetpack_activated', '1', 'yes'),
(348, 'jetpack_activation_source', 'a:2:{i:0;s:7:\"unknown\";i:1;N;}', 'yes'),
(349, 'jetpack_sync_settings_disable', '0', 'yes'),
(350, 'jetpack_options', 'a:5:{s:7:\"version\";s:15:\"10.0:1628068095\";s:11:\"old_version\";s:15:\"10.0:1628068095\";s:14:\"last_heartbeat\";i:1640352253;s:28:\"fallback_no_verify_ssl_certs\";i:0;s:9:\"time_diff\";i:0;}', 'yes'),
(351, 'jetpack_connection_active_plugins', 'a:1:{s:7:\"jetpack\";a:1:{s:4:\"name\";s:7:\"Jetpack\";}}', 'yes'),
(352, 'jetpack_testimonial', '0', 'yes'),
(356, 'jetpack_available_modules', 'a:1:{s:4:\"10.0\";a:42:{s:8:\"carousel\";s:3:\"1.5\";s:13:\"comment-likes\";s:3:\"5.1\";s:8:\"comments\";s:3:\"1.4\";s:12:\"contact-form\";s:3:\"1.3\";s:9:\"copy-post\";s:3:\"7.0\";s:20:\"custom-content-types\";s:3:\"3.1\";s:10:\"custom-css\";s:3:\"1.7\";s:21:\"enhanced-distribution\";s:3:\"1.2\";s:16:\"google-analytics\";s:3:\"4.5\";s:19:\"gravatar-hovercards\";s:3:\"1.1\";s:15:\"infinite-scroll\";s:3:\"2.0\";s:8:\"json-api\";s:3:\"1.9\";s:5:\"latex\";s:3:\"1.1\";s:11:\"lazy-images\";s:5:\"5.6.0\";s:5:\"likes\";s:3:\"2.2\";s:8:\"markdown\";s:3:\"2.8\";s:9:\"masterbar\";s:3:\"4.8\";s:7:\"monitor\";s:3:\"2.6\";s:5:\"notes\";s:3:\"1.9\";s:10:\"photon-cdn\";s:3:\"6.6\";s:6:\"photon\";s:3:\"2.0\";s:13:\"post-by-email\";s:3:\"2.0\";s:7:\"protect\";s:3:\"3.4\";s:9:\"publicize\";s:3:\"2.0\";s:13:\"related-posts\";s:3:\"2.9\";s:6:\"search\";s:3:\"5.0\";s:9:\"seo-tools\";s:3:\"4.4\";s:10:\"sharedaddy\";s:3:\"1.1\";s:10:\"shortcodes\";s:3:\"1.1\";s:10:\"shortlinks\";s:3:\"1.1\";s:8:\"sitemaps\";s:3:\"3.9\";s:3:\"sso\";s:3:\"2.6\";s:5:\"stats\";s:3:\"1.1\";s:13:\"subscriptions\";s:3:\"1.2\";s:13:\"tiled-gallery\";s:3:\"2.1\";s:10:\"vaultpress\";s:5:\"0:1.2\";s:18:\"verification-tools\";s:3:\"3.0\";s:10:\"videopress\";s:3:\"2.5\";s:17:\"widget-visibility\";s:3:\"2.4\";s:7:\"widgets\";s:3:\"1.2\";s:21:\"woocommerce-analytics\";s:3:\"8.4\";s:7:\"wordads\";s:5:\"4.5.0\";}}', 'yes'),
(360, 'do_activate', '0', 'yes'),
(365, 'sharing-options', 'a:1:{s:6:\"global\";a:5:{s:12:\"button_style\";s:9:\"icon-text\";s:13:\"sharing_label\";s:11:\"Share this:\";s:10:\"open_links\";s:4:\"same\";s:4:\"show\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:6:\"custom\";a:0:{}}}', 'yes'),
(366, 'stats_options', 'a:7:{s:9:\"admin_bar\";b:1;s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:11:\"count_roles\";a:0:{}s:7:\"blog_id\";b:0;s:12:\"do_not_track\";b:1;s:10:\"hide_smile\";b:1;s:7:\"version\";s:1:\"9\";}', 'yes'),
(374, 'woocommerce_task_list_tracked_completed_tasks', 'a:4:{i:0;s:13:\"store_details\";i:1;s:8:\"products\";i:2;s:8:\"payments\";i:3;s:8:\"shipping\";}', 'yes'),
(379, 'woocommerce_task_list_welcome_modal_dismissed', 'yes', 'yes'),
(422, 'widget_static_block_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(432, '_transient_product_query-transient-version', '1636296446', 'yes'),
(433, '_transient_product-transient-version', '1636296446', 'yes'),
(438, 'theme_mods_twentytwenty', 'a:5:{i:0;b:0;s:16:\"background_color\";s:3:\"fff\";s:18:\"nav_menu_locations\";a:2:{s:6:\"footer\";i:20;s:7:\"primary\";i:20;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1631123713;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}}}}', 'yes'),
(439, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(444, 'jetpack_content_post_details_date', '1', 'yes'),
(445, 'jetpack_content_post_details_categories', '1', 'yes'),
(446, 'jetpack_content_post_details_tags', '1', 'yes'),
(447, 'jetpack_content_post_details_author', '1', 'yes'),
(448, 'jetpack_content_post_details_comment', '1', 'yes'),
(449, '_transient_shipping-transient-version', '1628690340', 'yes'),
(498, 'recovery_mode_email_last_sent', '1631287053', 'yes'),
(572, 'cocart_install_date', '1628084908', 'yes'),
(573, 'cocart_version', '3.0.12', 'yes'),
(574, 'cocart_db_version', '3.0.0', 'yes'),
(575, 'cocart_admin_notices', 'a:0:{}', 'yes'),
(649, 'acf_version', '5.8.3', 'yes'),
(1011, '_transient_health-check-site-status-result', '{\"good\":9,\"recommended\":7,\"critical\":3}', 'yes'),
(1060, 'scporder_install', '1', 'yes'),
(1061, 'simple-rate-time', '1786713322', 'yes'),
(1062, 'scporder_options', 'a:3:{s:7:\"objects\";a:9:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:7:\"product\";i:3;s:10:\"shop_order\";i:4;s:11:\"shop_coupon\";i:5;s:12:\"static-block\";i:6;s:4:\"news\";i:7;s:6:\"stores\";i:8;s:7:\"banners\";}s:4:\"tags\";a:5:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";i:2;s:13:\"link_category\";i:3;s:11:\"product_cat\";i:4;s:11:\"product_tag\";}s:18:\"show_advanced_view\";s:0:\"\";}', 'yes'),
(1086, 'new_admin_email', 'burlakeugene@gmail.com', 'yes'),
(1143, 'site_logo', '192', 'yes'),
(1197, 'cyr_to_lat_settings', 'a:2:{s:21:\"background_post_types\";a:8:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:10:\"attachment\";i:3;s:7:\"product\";i:4;s:12:\"static-block\";i:5;s:4:\"news\";i:6;s:7:\"stories\";i:7;s:13:\"nav_menu_item\";}s:24:\"background_post_statuses\";a:5:{i:0;s:7:\"publish\";i:1;s:6:\"future\";i:2;s:7:\"private\";i:3;s:5:\"draft\";i:4;s:7:\"pending\";}}', 'yes'),
(1244, 'category_children', 'a:0:{}', 'yes'),
(1387, 'common_scripts', '', 'yes'),
(1388, 'head_additions', '', 'yes'),
(1389, 'copyrights', '© 2021 Советская пельменная', 'yes'),
(1390, 'address', 'улица Гагарина, 31, Симферополь', 'yes'),
(1391, 'phone', '+7 978 083-46-84', 'yes'),
(1392, 'email', '', 'yes'),
(1393, 'theme-color', '', 'yes'),
(1407, 'work_time', 'Пн-Пт: 9:00 - 22:00\r\nСб-Вс: 10:00 - 22:00', 'yes'),
(1515, 'product_cat_children', 'a:0:{}', 'yes'),
(1668, 'theme_mods_busicare', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:16:\"busicare-primary\";i:20;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1631117926;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}s:16:\"footer-sidebar-1\";a:0:{}s:16:\"footer-sidebar-2\";a:0:{}s:16:\"footer-sidebar-3\";a:0:{}s:16:\"footer-sidebar-4\";a:0:{}s:12:\"footer-bar-1\";a:0:{}s:11:\"woocommerce\";a:0:{}}}}', 'yes'),
(1816, 'woocommerce_task_list_hidden', 'no', 'yes'),
(2481, 'woocommerce_free_shipping_1_settings', 'a:4:{s:5:\"title\";s:13:\"Free shipping\";s:8:\"requires\";s:10:\"min_amount\";s:10:\"min_amount\";s:4:\"1000\";s:16:\"ignore_discounts\";s:2:\"no\";}', 'yes'),
(2483, 'woocommerce_cod_settings', 'a:6:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:16:\"Cash on delivery\";s:11:\"description\";s:28:\"Pay with cash upon delivery.\";s:12:\"instructions\";s:28:\"Pay with cash upon delivery.\";s:18:\"enable_for_methods\";s:0:\"\";s:18:\"enable_for_virtual\";s:3:\"yes\";}', 'yes'),
(2501, 'woocommerce_gateway_order', 'a:3:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;}', 'yes'),
(3024, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(3413, 'vkontakte', 'https://vk.com/test', 'yes'),
(3414, 'telegram', 'https://tg.com', 'yes'),
(3415, 'instagram', 'https://intagram.com', 'yes'),
(3416, 'odnoklassniki', 'https://ok.ru', 'yes'),
(3496, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(3600, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.4.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1629383627;s:7:\"version\";s:5:\"5.4.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(3618, 'secret_key', '1$PCIr[DS,b!fu,HHe(H((D]AdV(=c>K6nUru=kQ_<R#M;h>R<QvGSVMHU{a$G=z', 'no'),
(3997, 'breadcrumb_options', 'a:0:{}', 'yes'),
(3998, 'breadcrumb_text', '', 'yes'),
(3999, 'breadcrumb_separator', '', 'yes'),
(4000, 'breadcrumb_display_last_separator', 'no', 'yes'),
(4001, 'breadcrumb_word_char', 'word', 'yes'),
(4002, 'breadcrumb_word_char_count', '', 'yes'),
(4003, 'breadcrumb_word_char_end', '', 'yes'),
(4004, 'breadcrumb_margin', '', 'yes'),
(4005, 'breadcrumb_padding', '', 'yes'),
(4006, 'breadcrumb_font_size', '', 'yes'),
(4007, 'breadcrumb_link_color', '', 'yes'),
(4008, 'breadcrumb_separator_color', '', 'yes'),
(4009, 'breadcrumb_bg_color', '', 'yes'),
(4010, 'breadcrumb_themes', 'theme1', 'yes'),
(4011, 'breadcrumb_display_home', 'yes', 'yes'),
(4012, 'breadcrumb_home_text', 'Главная страница', 'yes'),
(4013, 'breadcrumb_url_hash', '', 'yes'),
(4014, 'breadcrumb_hide_wc_breadcrumb', 'no', 'yes'),
(4015, 'breadcrumb_custom_css', '.breadcrumb-container{}\r\n.breadcrumb-container ul{}\r\n.breadcrumb-container li{}\r\n.breadcrumb-container a{}\r\n.breadcrumb-container .separator{}\r\n', 'yes'),
(4016, 'breadcrumb_custom_js', '', 'yes'),
(4027, 'widget_bcn_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(4028, 'bcn_version', '6.6.0', 'no'),
(4030, 'action_scheduler_migration_status', 'complete', 'yes'),
(4033, 'bcn_options_bk', 'a:156:{s:17:\"bmainsite_display\";b:1;s:18:\"Hmainsite_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:28:\"Hmainsite_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:13:\"bhome_display\";b:1;s:14:\"Hhome_template\";s:274:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">Главная страница</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:24:\"Hhome_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:13:\"bblog_display\";b:1;s:10:\"hseparator\";s:31:\"<span class=\"separator\"></span>\";s:12:\"blimit_title\";b:0;s:17:\"amax_title_length\";i:20;s:20:\"bcurrent_item_linked\";b:0;s:28:\"bpost_page_hierarchy_display\";b:1;s:33:\"bpost_page_hierarchy_parent_first\";b:1;s:25:\"Spost_page_hierarchy_type\";s:15:\"BCN_POST_PARENT\";s:19:\"Hpost_page_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:29:\"Hpost_page_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:15:\"apost_page_root\";s:1:\"0\";s:15:\"Hpaged_template\";s:41:\"<span class=\"%type%\">Page %htitle%</span>\";s:14:\"bpaged_display\";b:0;s:19:\"Hpost_post_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:29:\"Hpost_post_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:15:\"apost_post_root\";s:1:\"0\";s:28:\"bpost_post_hierarchy_display\";b:1;s:33:\"bpost_post_hierarchy_parent_first\";b:0;s:27:\"bpost_post_taxonomy_referer\";b:0;s:25:\"Spost_post_hierarchy_type\";s:8:\"category\";s:32:\"bpost_attachment_archive_display\";b:1;s:34:\"bpost_attachment_hierarchy_display\";b:1;s:39:\"bpost_attachment_hierarchy_parent_first\";b:1;s:33:\"bpost_attachment_taxonomy_referer\";b:0;s:31:\"Spost_attachment_hierarchy_type\";s:15:\"BCN_POST_PARENT\";s:21:\"apost_attachment_root\";i:0;s:25:\"Hpost_attachment_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:35:\"Hpost_attachment_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:13:\"H404_template\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:10:\"S404_title\";s:3:\"404\";s:16:\"Hsearch_template\";s:319:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">Search results for &#039;<a property=\"item\" typeof=\"WebPage\" title=\"Go to the first page of search results for %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current>%htitle%</a>&#039;</span><meta property=\"position\" content=\"%position%\"></span>\";s:26:\"Hsearch_template_no_anchor\";s:67:\"<span class=\"%type%\">Search results for &#039;%htitle%&#039;</span>\";s:22:\"Htax_post_tag_template\";s:268:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% tag archives.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:32:\"Htax_post_tag_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:25:\"Htax_post_format_template\";s:264:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% archives.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:35:\"Htax_post_format_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:16:\"Hauthor_template\";s:258:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">Articles by: <a title=\"Go to the first page of posts by %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current>%htitle%</a></span><meta property=\"position\" content=\"%position%\"></span>\";s:26:\"Hauthor_template_no_anchor\";s:49:\"<span class=\"%type%\">Articles by: %htitle%</span>\";s:12:\"Sauthor_name\";s:12:\"display_name\";s:12:\"aauthor_root\";i:0;s:22:\"Htax_category_template\";s:273:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% category archives.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:32:\"Htax_category_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:14:\"Hdate_template\";s:264:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% archives.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:24:\"Hdate_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:38:\"bpost_acf-field-group_taxonomy_referer\";b:0;s:30:\"Hpost_acf-field-group_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:40:\"Hpost_acf-field-group_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:26:\"apost_acf-field-group_root\";i:0;s:39:\"bpost_acf-field-group_hierarchy_display\";b:0;s:37:\"bpost_acf-field-group_archive_display\";b:0;s:36:\"Spost_acf-field-group_hierarchy_type\";s:10:\"BCN_PARENT\";s:44:\"bpost_acf-field-group_hierarchy_parent_first\";b:0;s:32:\"bpost_acf-field_taxonomy_referer\";b:0;s:24:\"Hpost_acf-field_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:34:\"Hpost_acf-field_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:20:\"apost_acf-field_root\";i:0;s:33:\"bpost_acf-field_hierarchy_display\";b:0;s:31:\"bpost_acf-field_archive_display\";b:0;s:30:\"Spost_acf-field_hierarchy_type\";s:10:\"BCN_PARENT\";s:38:\"bpost_acf-field_hierarchy_parent_first\";b:0;s:30:\"bpost_product_taxonomy_referer\";b:0;s:22:\"Hpost_product_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:32:\"Hpost_product_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:18:\"apost_product_root\";i:0;s:31:\"bpost_product_hierarchy_display\";b:1;s:29:\"bpost_product_archive_display\";b:1;s:28:\"Spost_product_hierarchy_type\";s:11:\"product_cat\";s:36:\"bpost_product_hierarchy_parent_first\";b:0;s:40:\"bpost_product_variation_taxonomy_referer\";b:0;s:32:\"Hpost_product_variation_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:42:\"Hpost_product_variation_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:28:\"apost_product_variation_root\";i:0;s:41:\"bpost_product_variation_hierarchy_display\";b:0;s:39:\"bpost_product_variation_archive_display\";b:0;s:38:\"Spost_product_variation_hierarchy_type\";s:22:\"product_shipping_class\";s:46:\"bpost_product_variation_hierarchy_parent_first\";b:0;s:33:\"bpost_shop_order_taxonomy_referer\";b:0;s:25:\"Hpost_shop_order_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:35:\"Hpost_shop_order_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:21:\"apost_shop_order_root\";i:0;s:34:\"bpost_shop_order_hierarchy_display\";b:0;s:32:\"bpost_shop_order_archive_display\";b:0;s:31:\"Spost_shop_order_hierarchy_type\";s:8:\"BCN_DATE\";s:39:\"bpost_shop_order_hierarchy_parent_first\";b:0;s:40:\"bpost_shop_order_refund_taxonomy_referer\";b:0;s:32:\"Hpost_shop_order_refund_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:42:\"Hpost_shop_order_refund_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:28:\"apost_shop_order_refund_root\";i:0;s:41:\"bpost_shop_order_refund_hierarchy_display\";b:0;s:39:\"bpost_shop_order_refund_archive_display\";b:0;s:38:\"Spost_shop_order_refund_hierarchy_type\";s:8:\"BCN_DATE\";s:46:\"bpost_shop_order_refund_hierarchy_parent_first\";b:0;s:34:\"bpost_shop_coupon_taxonomy_referer\";b:0;s:26:\"Hpost_shop_coupon_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:36:\"Hpost_shop_coupon_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:22:\"apost_shop_coupon_root\";i:0;s:35:\"bpost_shop_coupon_hierarchy_display\";b:0;s:33:\"bpost_shop_coupon_archive_display\";b:0;s:32:\"Spost_shop_coupon_hierarchy_type\";s:8:\"BCN_DATE\";s:40:\"bpost_shop_coupon_hierarchy_parent_first\";b:0;s:41:\"bpost_wpcf7_contact_form_taxonomy_referer\";b:0;s:33:\"Hpost_wpcf7_contact_form_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:43:\"Hpost_wpcf7_contact_form_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:29:\"apost_wpcf7_contact_form_root\";i:0;s:42:\"bpost_wpcf7_contact_form_hierarchy_display\";b:0;s:40:\"bpost_wpcf7_contact_form_archive_display\";b:0;s:39:\"Spost_wpcf7_contact_form_hierarchy_type\";s:8:\"BCN_DATE\";s:47:\"bpost_wpcf7_contact_form_hierarchy_parent_first\";b:0;s:35:\"bpost_static-block_taxonomy_referer\";b:0;s:27:\"Hpost_static-block_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:37:\"Hpost_static-block_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:23:\"apost_static-block_root\";i:0;s:36:\"bpost_static-block_hierarchy_display\";b:0;s:34:\"bpost_static-block_archive_display\";b:1;s:33:\"Spost_static-block_hierarchy_type\";s:8:\"BCN_DATE\";s:41:\"bpost_static-block_hierarchy_parent_first\";b:0;s:27:\"bpost_news_taxonomy_referer\";b:0;s:19:\"Hpost_news_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:29:\"Hpost_news_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:15:\"apost_news_root\";i:0;s:28:\"bpost_news_hierarchy_display\";b:1;s:26:\"bpost_news_archive_display\";b:1;s:25:\"Spost_news_hierarchy_type\";s:8:\"post_tag\";s:33:\"bpost_news_hierarchy_parent_first\";b:0;s:29:\"bpost_stores_taxonomy_referer\";b:0;s:21:\"Hpost_stores_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:31:\"Hpost_stores_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:17:\"apost_stores_root\";i:0;s:30:\"bpost_stores_hierarchy_display\";b:0;s:28:\"bpost_stores_archive_display\";b:1;s:27:\"Spost_stores_hierarchy_type\";s:8:\"BCN_DATE\";s:35:\"bpost_stores_hierarchy_parent_first\";b:0;s:30:\"bpost_banners_taxonomy_referer\";b:0;s:22:\"Hpost_banners_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:32:\"Hpost_banners_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:18:\"apost_banners_root\";i:0;s:31:\"bpost_banners_hierarchy_display\";b:0;s:29:\"bpost_banners_archive_display\";b:1;s:28:\"Spost_banners_hierarchy_type\";s:8:\"BCN_DATE\";s:36:\"bpost_banners_hierarchy_parent_first\";b:0;s:26:\"Htax_product_type_template\";s:277:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% Product type archives.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:36:\"Htax_product_type_template_no_anchor\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:32:\"Htax_product_visibility_template\";s:283:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% Product visibility archives.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:42:\"Htax_product_visibility_template_no_anchor\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:25:\"Htax_product_cat_template\";s:273:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% Category archives.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:35:\"Htax_product_cat_template_no_anchor\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:25:\"Htax_product_tag_template\";s:268:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% Tag archives.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:35:\"Htax_product_tag_template_no_anchor\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:36:\"Htax_product_shipping_class_template\";s:279:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% Shipping class archives.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:46:\"Htax_product_shipping_class_template_no_anchor\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";}', 'yes');
INSERT INTO `rest_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(4034, 'bcn_options', 'a:156:{s:17:\"bmainsite_display\";b:1;s:18:\"Hmainsite_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:28:\"Hmainsite_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:13:\"bhome_display\";b:1;s:14:\"Hhome_template\";s:274:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">Главная страница</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:24:\"Hhome_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:13:\"bblog_display\";b:1;s:10:\"hseparator\";s:31:\"<span class=\"separator\"></span>\";s:12:\"blimit_title\";b:0;s:17:\"amax_title_length\";i:20;s:20:\"bcurrent_item_linked\";b:0;s:28:\"bpost_page_hierarchy_display\";b:1;s:33:\"bpost_page_hierarchy_parent_first\";b:1;s:25:\"Spost_page_hierarchy_type\";s:15:\"BCN_POST_PARENT\";s:19:\"Hpost_page_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:29:\"Hpost_page_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:15:\"apost_page_root\";s:1:\"0\";s:15:\"Hpaged_template\";s:41:\"<span class=\"%type%\">Page %htitle%</span>\";s:14:\"bpaged_display\";b:0;s:19:\"Hpost_post_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:29:\"Hpost_post_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:15:\"apost_post_root\";s:1:\"0\";s:28:\"bpost_post_hierarchy_display\";b:1;s:33:\"bpost_post_hierarchy_parent_first\";b:0;s:27:\"bpost_post_taxonomy_referer\";b:0;s:25:\"Spost_post_hierarchy_type\";s:8:\"category\";s:32:\"bpost_attachment_archive_display\";b:1;s:34:\"bpost_attachment_hierarchy_display\";b:1;s:39:\"bpost_attachment_hierarchy_parent_first\";b:1;s:33:\"bpost_attachment_taxonomy_referer\";b:0;s:31:\"Spost_attachment_hierarchy_type\";s:15:\"BCN_POST_PARENT\";s:21:\"apost_attachment_root\";i:0;s:25:\"Hpost_attachment_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:35:\"Hpost_attachment_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:13:\"H404_template\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:10:\"S404_title\";s:3:\"404\";s:16:\"Hsearch_template\";s:316:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">Поиск по &#039;<a property=\"item\" typeof=\"WebPage\" title=\"Go to the first page of search results for %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current>%htitle%</a>&#039;</span><meta property=\"position\" content=\"%position%\"></span>\";s:26:\"Hsearch_template_no_anchor\";s:64:\"<span class=\"%type%\">Поиск по &#039;%htitle%&#039;</span>\";s:22:\"Htax_post_tag_template\";s:268:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% tag archives.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:32:\"Htax_post_tag_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:25:\"Htax_post_format_template\";s:264:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% archives.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:35:\"Htax_post_format_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:16:\"Hauthor_template\";s:258:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">Articles by: <a title=\"Go to the first page of posts by %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current>%htitle%</a></span><meta property=\"position\" content=\"%position%\"></span>\";s:26:\"Hauthor_template_no_anchor\";s:49:\"<span class=\"%type%\">Articles by: %htitle%</span>\";s:12:\"Sauthor_name\";s:12:\"display_name\";s:12:\"aauthor_root\";i:0;s:22:\"Htax_category_template\";s:273:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% category archives.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:32:\"Htax_category_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:14:\"Hdate_template\";s:264:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% archives.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:24:\"Hdate_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:38:\"bpost_acf-field-group_taxonomy_referer\";b:0;s:30:\"Hpost_acf-field-group_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:40:\"Hpost_acf-field-group_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:26:\"apost_acf-field-group_root\";i:0;s:39:\"bpost_acf-field-group_hierarchy_display\";b:0;s:37:\"bpost_acf-field-group_archive_display\";b:0;s:36:\"Spost_acf-field-group_hierarchy_type\";s:10:\"BCN_PARENT\";s:44:\"bpost_acf-field-group_hierarchy_parent_first\";b:0;s:32:\"bpost_acf-field_taxonomy_referer\";b:0;s:24:\"Hpost_acf-field_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:34:\"Hpost_acf-field_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:20:\"apost_acf-field_root\";i:0;s:33:\"bpost_acf-field_hierarchy_display\";b:0;s:31:\"bpost_acf-field_archive_display\";b:0;s:30:\"Spost_acf-field_hierarchy_type\";s:10:\"BCN_PARENT\";s:38:\"bpost_acf-field_hierarchy_parent_first\";b:0;s:30:\"bpost_product_taxonomy_referer\";b:0;s:22:\"Hpost_product_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:32:\"Hpost_product_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:18:\"apost_product_root\";i:0;s:31:\"bpost_product_hierarchy_display\";b:1;s:29:\"bpost_product_archive_display\";b:1;s:28:\"Spost_product_hierarchy_type\";s:11:\"product_cat\";s:36:\"bpost_product_hierarchy_parent_first\";b:0;s:40:\"bpost_product_variation_taxonomy_referer\";b:0;s:32:\"Hpost_product_variation_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:42:\"Hpost_product_variation_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:28:\"apost_product_variation_root\";i:0;s:41:\"bpost_product_variation_hierarchy_display\";b:0;s:39:\"bpost_product_variation_archive_display\";b:0;s:38:\"Spost_product_variation_hierarchy_type\";s:22:\"product_shipping_class\";s:46:\"bpost_product_variation_hierarchy_parent_first\";b:0;s:33:\"bpost_shop_order_taxonomy_referer\";b:0;s:25:\"Hpost_shop_order_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:35:\"Hpost_shop_order_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:21:\"apost_shop_order_root\";i:0;s:34:\"bpost_shop_order_hierarchy_display\";b:0;s:32:\"bpost_shop_order_archive_display\";b:0;s:31:\"Spost_shop_order_hierarchy_type\";s:8:\"BCN_DATE\";s:39:\"bpost_shop_order_hierarchy_parent_first\";b:0;s:40:\"bpost_shop_order_refund_taxonomy_referer\";b:0;s:32:\"Hpost_shop_order_refund_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:42:\"Hpost_shop_order_refund_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:28:\"apost_shop_order_refund_root\";i:0;s:41:\"bpost_shop_order_refund_hierarchy_display\";b:0;s:39:\"bpost_shop_order_refund_archive_display\";b:0;s:38:\"Spost_shop_order_refund_hierarchy_type\";s:8:\"BCN_DATE\";s:46:\"bpost_shop_order_refund_hierarchy_parent_first\";b:0;s:34:\"bpost_shop_coupon_taxonomy_referer\";b:0;s:26:\"Hpost_shop_coupon_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:36:\"Hpost_shop_coupon_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:22:\"apost_shop_coupon_root\";i:0;s:35:\"bpost_shop_coupon_hierarchy_display\";b:0;s:33:\"bpost_shop_coupon_archive_display\";b:0;s:32:\"Spost_shop_coupon_hierarchy_type\";s:8:\"BCN_DATE\";s:40:\"bpost_shop_coupon_hierarchy_parent_first\";b:0;s:41:\"bpost_wpcf7_contact_form_taxonomy_referer\";b:0;s:33:\"Hpost_wpcf7_contact_form_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:43:\"Hpost_wpcf7_contact_form_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:29:\"apost_wpcf7_contact_form_root\";i:0;s:42:\"bpost_wpcf7_contact_form_hierarchy_display\";b:0;s:40:\"bpost_wpcf7_contact_form_archive_display\";b:0;s:39:\"Spost_wpcf7_contact_form_hierarchy_type\";s:8:\"BCN_DATE\";s:47:\"bpost_wpcf7_contact_form_hierarchy_parent_first\";b:0;s:35:\"bpost_static-block_taxonomy_referer\";b:0;s:27:\"Hpost_static-block_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:37:\"Hpost_static-block_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:23:\"apost_static-block_root\";i:0;s:36:\"bpost_static-block_hierarchy_display\";b:0;s:34:\"bpost_static-block_archive_display\";b:1;s:33:\"Spost_static-block_hierarchy_type\";s:8:\"BCN_DATE\";s:41:\"bpost_static-block_hierarchy_parent_first\";b:0;s:27:\"bpost_news_taxonomy_referer\";b:0;s:19:\"Hpost_news_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:29:\"Hpost_news_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:15:\"apost_news_root\";i:0;s:28:\"bpost_news_hierarchy_display\";b:1;s:26:\"bpost_news_archive_display\";b:1;s:25:\"Spost_news_hierarchy_type\";s:8:\"post_tag\";s:33:\"bpost_news_hierarchy_parent_first\";b:0;s:29:\"bpost_stores_taxonomy_referer\";b:0;s:21:\"Hpost_stores_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:31:\"Hpost_stores_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:17:\"apost_stores_root\";i:0;s:30:\"bpost_stores_hierarchy_display\";b:0;s:28:\"bpost_stores_archive_display\";b:1;s:27:\"Spost_stores_hierarchy_type\";s:8:\"BCN_DATE\";s:35:\"bpost_stores_hierarchy_parent_first\";b:0;s:30:\"bpost_banners_taxonomy_referer\";b:0;s:22:\"Hpost_banners_template\";s:251:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to %title%.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:32:\"Hpost_banners_template_no_anchor\";s:195:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\" class=\"%type%\">%htitle%</span><meta property=\"url\" content=\"%link%\"><meta property=\"position\" content=\"%position%\"></span>\";s:18:\"apost_banners_root\";i:0;s:31:\"bpost_banners_hierarchy_display\";b:0;s:29:\"bpost_banners_archive_display\";b:1;s:28:\"Spost_banners_hierarchy_type\";s:8:\"BCN_DATE\";s:36:\"bpost_banners_hierarchy_parent_first\";b:0;s:26:\"Htax_product_type_template\";s:277:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% Product type archives.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:36:\"Htax_product_type_template_no_anchor\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:32:\"Htax_product_visibility_template\";s:283:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% Product visibility archives.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:42:\"Htax_product_visibility_template_no_anchor\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:25:\"Htax_product_cat_template\";s:273:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% Category archives.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:35:\"Htax_product_cat_template_no_anchor\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:25:\"Htax_product_tag_template\";s:268:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% Tag archives.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:35:\"Htax_product_tag_template_no_anchor\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";s:36:\"Htax_product_shipping_class_template\";s:279:\"<span property=\"itemListElement\" typeof=\"ListItem\"><a property=\"item\" typeof=\"WebPage\" title=\"Go to the %title% Shipping class archives.\" href=\"%link%\" class=\"%type%\" bcn-aria-current><span property=\"name\">%htitle%</span></a><meta property=\"position\" content=\"%position%\"></span>\";s:46:\"Htax_product_shipping_class_template_no_anchor\";s:142:\"<span property=\"itemListElement\" typeof=\"ListItem\"><span property=\"name\">%htitle%</span><meta property=\"position\" content=\"%position%\"></span>\";}', 'yes'),
(5729, '_transient_orders-transient-version', '1631403889', 'yes'),
(5738, 'theme_mods_twentynineteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:6:\"menu-1\";i:20;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1631118028;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(5843, 'woocommerce_admin_last_orders_milestone', '10', 'yes'),
(6242, 'woocommerce_sales_record_date', '2021-09-08', 'yes'),
(6243, 'woocommerce_sales_record_amount', '123', 'yes'),
(6415, 'theme', '', 'yes'),
(6780, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(6866, '_transient_timeout_wc_term_counts', '1642944244', 'no'),
(6867, '_transient_wc_term_counts', 'a:2:{i:16;s:1:\"2\";i:17;s:1:\"3\";}', 'no'),
(6868, '_transient_timeout_acf_plugin_updates', '1640525044', 'no'),
(6869, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:6:\"5.11.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.8.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";s:5:\"5.8.3\";}}', 'no'),
(6874, '_transient_timeout__woocommerce_helper_updates', '1640395444', 'no'),
(6875, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1640352244;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(6879, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.8.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.8.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.8.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.8.2-partial-0.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:3:\"5.8\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.8.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1640352250;s:15:\"version_checked\";s:3:\"5.8\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"5.8\";s:7:\"updated\";s:19:\"2021-09-01 21:02:01\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.8/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(6880, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1640361566;s:7:\"checked\";a:5:{s:6:\"burlak\";s:0:\"\";s:8:\"busicare\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:1:{s:8:\"busicare\";a:6:{s:5:\"theme\";s:8:\"busicare\";s:11:\"new_version\";s:5:\"1.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/themes/busicare/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/theme/busicare.1.1.6.zip\";s:8:\"requires\";s:3:\"4.5\";s:12:\"requires_php\";s:3:\"5.4\";}}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:8:\"busicare\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:19:\"2021-07-19 14:10:54\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/theme/busicare/1.0/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(6881, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1640352251;s:8:\"response\";a:6:{s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:30:\"w.org/plugins/breadcrumb-navxt\";s:4:\"slug\";s:16:\"breadcrumb-navxt\";s:6:\"plugin\";s:37:\"breadcrumb-navxt/breadcrumb-navxt.php\";s:11:\"new_version\";s:5:\"7.0.0\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/breadcrumb-navxt/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/breadcrumb-navxt.7.0.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:69:\"https://ps.w.org/breadcrumb-navxt/assets/icon-256x256.png?rev=2410525\";s:2:\"1x\";s:61:\"https://ps.w.org/breadcrumb-navxt/assets/icon.svg?rev=1927103\";s:3:\"svg\";s:61:\"https://ps.w.org/breadcrumb-navxt/assets/icon.svg?rev=1927103\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/breadcrumb-navxt/assets/banner-1544x500.png?rev=1927103\";s:2:\"1x\";s:71:\"https://ps.w.org/breadcrumb-navxt/assets/banner-772x250.png?rev=1927103\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";s:3:\"7.0\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.5.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.5.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";b:0;}s:22:\"cyr2lat/cyr-to-lat.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/cyr2lat\";s:4:\"slug\";s:7:\"cyr2lat\";s:6:\"plugin\";s:22:\"cyr2lat/cyr-to-lat.php\";s:11:\"new_version\";s:5:\"5.2.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/cyr2lat/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/cyr2lat.5.2.5.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/cyr2lat/assets/icon-256x256.jpg?rev=2434252\";s:2:\"1x\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2498806\";s:3:\"svg\";s:52:\"https://ps.w.org/cyr2lat/assets/icon.svg?rev=2498806\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/cyr2lat/assets/banner-1544x500.png?rev=2434252\";s:2:\"1x\";s:62:\"https://ps.w.org/cyr2lat/assets/banner-772x250.png?rev=2434252\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.1\";s:6:\"tested\";s:3:\"5.9\";s:12:\"requires_php\";s:6:\"5.6.20\";}s:19:\"jetpack/jetpack.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/jetpack\";s:4:\"slug\";s:7:\"jetpack\";s:6:\"plugin\";s:19:\"jetpack/jetpack.php\";s:11:\"new_version\";s:4:\"10.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/jetpack/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/jetpack.10.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:60:\"https://ps.w.org/jetpack/assets/icon-256x256.png?rev=2638128\";s:2:\"1x\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=2638128\";s:3:\"svg\";s:52:\"https://ps.w.org/jetpack/assets/icon.svg?rev=2638128\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/jetpack/assets/banner-1544x500.png?rev=1791404\";s:2:\"1x\";s:62:\"https://ps.w.org/jetpack/assets/banner-772x250.png?rev=1791404\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";s:3:\"5.6\";}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"6.0.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.6.0.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.6\";s:6:\"tested\";s:5:\"5.8.2\";s:12:\"requires_php\";s:3:\"7.0\";}s:41:\"advanced-custom-fields-pro-master/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:6:\"5.11.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.8.1\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:8:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:16:\"breadcrumb-navxt\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.6.0\";s:7:\"updated\";s:19:\"2021-10-17 17:40:25\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/translation/plugin/breadcrumb-navxt/6.6.0/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"classic-editor\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"1.6.2\";s:7:\"updated\";s:19:\"2021-08-08 08:05:06\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/plugin/classic-editor/1.6.2/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"contact-form-7\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.4.2\";s:7:\"updated\";s:19:\"2021-09-28 14:41:49\";s:7:\"package\";s:81:\"https://downloads.wordpress.org/translation/plugin/contact-form-7/5.4.2/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"cyr2lat\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2021-07-29 11:03:49\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/cyr2lat/5.2.1/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:4;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"jetpack\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:4:\"10.0\";s:7:\"updated\";s:19:\"2021-08-30 12:35:42\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/plugin/jetpack/10.0/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:5;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"3.1.5\";s:7:\"updated\";s:19:\"2019-05-10 15:36:42\";s:7:\"package\";s:88:\"https://downloads.wordpress.org/translation/plugin/regenerate-thumbnails/3.1.5/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:6;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:24:\"simple-custom-post-order\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"2.5.6\";s:7:\"updated\";s:19:\"2021-12-04 14:10:48\";s:7:\"package\";s:91:\"https://downloads.wordpress.org/translation/plugin/simple-custom-post-order/2.5.6/ru_RU.zip\";s:10:\"autoupdate\";b:1;}i:7;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"woocommerce\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.5.2\";s:7:\"updated\";s:19:\"2021-08-06 18:24:42\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/woocommerce/5.5.2/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:5:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.5\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.5.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:21:\"safe-svg/safe-svg.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:22:\"w.org/plugins/safe-svg\";s:4:\"slug\";s:8:\"safe-svg\";s:6:\"plugin\";s:21:\"safe-svg/safe-svg.php\";s:11:\"new_version\";s:5:\"1.9.9\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/safe-svg/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/safe-svg.1.9.9.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:61:\"https://ps.w.org/safe-svg/assets/icon-256x256.png?rev=1706191\";s:2:\"1x\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=1706191\";s:3:\"svg\";s:53:\"https://ps.w.org/safe-svg/assets/icon.svg?rev=1706191\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/safe-svg/assets/banner-1544x500.png?rev=1706191\";s:2:\"1x\";s:63:\"https://ps.w.org/safe-svg/assets/banner-772x250.png?rev=1706191\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}s:53:\"simple-custom-post-order/simple-custom-post-order.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:38:\"w.org/plugins/simple-custom-post-order\";s:4:\"slug\";s:24:\"simple-custom-post-order\";s:6:\"plugin\";s:53:\"simple-custom-post-order/simple-custom-post-order.php\";s:11:\"new_version\";s:5:\"2.5.6\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/simple-custom-post-order/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/simple-custom-post-order.2.5.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/simple-custom-post-order/assets/icon-256x256.jpg?rev=1859717\";s:2:\"1x\";s:77:\"https://ps.w.org/simple-custom-post-order/assets/icon-256x256.jpg?rev=1859717\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/simple-custom-post-order/assets/banner-772x250.jpg?rev=1859717\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:29:\"static-block/static-block.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/static-block\";s:4:\"slug\";s:12:\"static-block\";s:6:\"plugin\";s:29:\"static-block/static-block.php\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/static-block/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/static-block.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://s.w.org/plugins/geopattern-icon/static-block_f8b109.svg\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/static-block/assets/banner-1544x500.jpg?rev=1279650\";s:2:\"1x\";s:67:\"https://ps.w.org/static-block/assets/banner-772x250.jpg?rev=1279650\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.8\";}}}', 'no'),
(6885, '_site_transient_timeout_php_check_78e1776a2900a8656cebe7d7ea2a07cc', '1640957054', 'no'),
(6886, '_site_transient_php_check_78e1776a2900a8656cebe7d7ea2a07cc', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(6893, '_transient_timeout_jetpack_a8c_data', '1640439809', 'no'),
(6894, '_transient_jetpack_a8c_data', 'a:4:{s:4:\"a12s\";i:1843;s:9:\"countries\";i:94;s:9:\"languages\";i:118;s:16:\"featured_plugins\";a:4:{i:0;s:11:\"woocommerce\";i:1;s:14:\"wp-super-cache\";i:2;s:14:\"wp-job-manager\";i:3;s:15:\"co-authors-plus\";}}', 'no'),
(6895, '_transient_timeout_jetpack_file_data_10.0', '1642859009', 'no'),
(6896, '_transient_jetpack_file_data_10.0', 'a:1:{s:32:\"3fd340ad52927afb3bbb9e98575eccfd\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:24:\"requires_user_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}}', 'no'),
(6897, '_transient_timeout_jetpack_https_test', '1640439810', 'no'),
(6898, '_transient_jetpack_https_test', '1', 'no'),
(6899, '_transient_timeout_jetpack_https_test_message', '1640439810', 'no'),
(6900, '_transient_jetpack_https_test_message', '', 'no'),
(6987, '_site_transient_timeout_theme_roots', '1640363365', 'no'),
(6988, '_site_transient_theme_roots', 'a:5:{s:6:\"burlak\";s:7:\"/themes\";s:8:\"busicare\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(6989, '_transient_timeout__woocommerce_helper_subscriptions', '1640362465', 'no'),
(6990, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `rest_postmeta`
--

CREATE TABLE `rest_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rest_postmeta`
--

INSERT INTO `rest_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(11, 10, '_wp_attached_file', 'woocommerce-placeholder.png'),
(12, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:19:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"lazy\";a:4:{s:4:\"file\";s:33:\"woocommerce-placeholder-50x50.png\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"lazy-square\";a:4:{s:4:\"file\";s:33:\"woocommerce-placeholder-50x50.png\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"product-square\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"product-rect-lazy\";a:4:{s:4:\"file\";s:33:\"woocommerce-placeholder-30x20.png\";s:5:\"width\";i:30;s:6:\"height\";i:20;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"product-rect\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-700x500.png\";s:5:\"width\";i:700;s:6:\"height\";i:500;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"news-rect-lazy\";a:4:{s:4:\"file\";s:33:\"woocommerce-placeholder-30x20.png\";s:5:\"width\";i:30;s:6:\"height\";i:20;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"news-rect\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-360x220.png\";s:5:\"width\";i:360;s:6:\"height\";i:220;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:24:\"product-rect_old_600x400\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x400.png\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:24:\"product-rect_old_300x200\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 3, '_edit_lock', '1628068234:1'),
(14, 11, '_edit_lock', '1630248688:1'),
(15, 16, '_edit_last', '1'),
(16, 16, '_edit_lock', '1630420655:1'),
(17, 16, '_regular_price', '32'),
(18, 16, 'total_sales', '55'),
(19, 16, '_tax_status', 'taxable'),
(20, 16, '_tax_class', ''),
(21, 16, '_manage_stock', 'no'),
(22, 16, '_backorders', 'no'),
(23, 16, '_sold_individually', 'no'),
(24, 16, '_virtual', 'no'),
(25, 16, '_downloadable', 'no'),
(26, 16, '_download_limit', '-1'),
(27, 16, '_download_expiry', '-1'),
(29, 16, '_stock_status', 'instock'),
(30, 16, '_wc_average_rating', '0'),
(31, 16, '_wc_review_count', '0'),
(32, 16, '_product_version', '5.5.2'),
(33, 16, '_price', '8'),
(44, 22, '_edit_last', '1'),
(45, 22, '_edit_lock', '1636296523:1'),
(46, 22, '_regular_price', '9'),
(48, 22, 'total_sales', '9'),
(49, 22, '_tax_status', 'taxable'),
(50, 22, '_tax_class', ''),
(51, 22, '_manage_stock', 'no'),
(52, 22, '_backorders', 'no'),
(53, 22, '_sold_individually', 'no'),
(54, 22, '_virtual', 'no'),
(55, 22, '_downloadable', 'no'),
(56, 22, '_download_limit', '-1'),
(57, 22, '_download_expiry', '-1'),
(59, 22, '_stock_status', 'instock'),
(60, 22, '_wc_average_rating', '0'),
(61, 22, '_wc_review_count', '0'),
(62, 22, '_product_version', '5.5.2'),
(63, 22, '_price', '9'),
(64, 22, 'popular', '0'),
(65, 22, '_popular', 'field_610abae2720d3'),
(68, 16, '_sale_price', '8'),
(70, 16, 'popular', '0'),
(71, 16, '_popular', 'field_610abae2720d3'),
(79, 23, '_wp_attached_file', '2021/08/сов-пельм-1-2.png'),
(80, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:568;s:6:\"height\";i:150;s:4:\"file\";s:33:\"2021/08/сов-пельм-1-2.png\";s:5:\"sizes\";a:14:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"сов-пельм-1-2-300x79.png\";s:5:\"width\";i:300;s:6:\"height\";i:79;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"сов-пельм-1-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"lazy\";a:4:{s:4:\"file\";s:31:\"сов-пельм-1-2-50x13.png\";s:5:\"width\";i:50;s:6:\"height\";i:13;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"lazy-square\";a:4:{s:4:\"file\";s:31:\"сов-пельм-1-2-50x50.png\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"product-square\";a:4:{s:4:\"file\";s:33:\"сов-пельм-1-2-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"product-rect-lazy\";a:4:{s:4:\"file\";s:31:\"сов-пельм-1-2-30x20.png\";s:5:\"width\";i:30;s:6:\"height\";i:20;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"news-rect-lazy\";a:4:{s:4:\"file\";s:31:\"сов-пельм-1-2-30x20.png\";s:5:\"width\";i:30;s:6:\"height\";i:20;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"news-rect\";a:4:{s:4:\"file\";s:33:\"сов-пельм-1-2-360x150.png\";s:5:\"width\";i:360;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:33:\"сов-пельм-1-2-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"сов-пельм-1-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:33:\"сов-пельм-1-2-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"сов-пельм-1-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:33:\"сов-пельм-1-2-450x119.png\";s:5:\"width\";i:450;s:6:\"height\";i:119;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"product-rect\";a:4:{s:4:\"file\";s:33:\"сов-пельм-1-2-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(85, 26, '_wp_attached_file', '2021/08/dumpling-1.svg'),
(86, 26, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:30;s:6:\"height\";i:31;s:4:\"file\";s:23:\"/2021/08/dumpling-1.svg\";s:5:\"sizes\";a:14:{s:21:\"woocommerce_thumbnail\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:14:\"dumpling-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:14:\"dumpling-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:18:\"woocommerce_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:14:\"dumpling-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:14:\"dumpling-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:14:\"dumpling-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:14:\"dumpling-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:14:\"dumpling-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:14:\"dumpling-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:14:\"dumpling-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:4:\"lazy\";a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"crop\";i:0;s:4:\"file\";s:14:\"dumpling-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:11:\"lazy-square\";a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"crop\";i:1;s:4:\"file\";s:14:\"dumpling-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"shop_catalog\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:14:\"dumpling-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:14:\"dumpling-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"shop_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:14:\"dumpling-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(89, 28, '_wp_attached_file', '2021/08/cropped-сов-пельм-1-2.png'),
(90, 28, '_wp_attachment_context', 'custom-logo'),
(91, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:568;s:6:\"height\";i:150;s:4:\"file\";s:41:\"2021/08/cropped-сов-пельм-1-2.png\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:41:\"cropped-сов-пельм-1-2-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:41:\"cropped-сов-пельм-1-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:41:\"cropped-сов-пельм-1-2-450x119.png\";s:5:\"width\";i:450;s:6:\"height\";i:119;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"cropped-сов-пельм-1-2-300x79.png\";s:5:\"width\";i:300;s:6:\"height\";i:79;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"cropped-сов-пельм-1-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"lazy\";a:4:{s:4:\"file\";s:39:\"cropped-сов-пельм-1-2-50x13.png\";s:5:\"width\";i:50;s:6:\"height\";i:13;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"lazy-square\";a:4:{s:4:\"file\";s:39:\"cropped-сов-пельм-1-2-50x50.png\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:41:\"cropped-сов-пельм-1-2-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:41:\"cropped-сов-пельм-1-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(99, 33, '_edit_last', '1'),
(100, 33, '_edit_lock', '1628179224:1'),
(101, 34, '_edit_last', '1'),
(102, 34, '_edit_lock', '1631404140:1'),
(103, 35, '_wp_attached_file', '2021/08/dumpling.svg'),
(104, 35, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:30;s:6:\"height\";i:31;s:4:\"file\";s:21:\"/2021/08/dumpling.svg\";s:5:\"sizes\";a:14:{s:21:\"woocommerce_thumbnail\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:12:\"dumpling.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:12:\"dumpling.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:18:\"woocommerce_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:12:\"dumpling.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:12:\"dumpling.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:12:\"dumpling.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:12:\"dumpling.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:12:\"dumpling.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:12:\"dumpling.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:12:\"dumpling.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:4:\"lazy\";a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"crop\";i:0;s:4:\"file\";s:12:\"dumpling.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:11:\"lazy-square\";a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"crop\";i:1;s:4:\"file\";s:12:\"dumpling.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"shop_catalog\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:12:\"dumpling.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:12:\"dumpling.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"shop_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:12:\"dumpling.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(106, 36, '_edit_last', '1'),
(107, 36, '_edit_lock', '1630435595:1'),
(108, 36, 'total_sales', '0'),
(109, 36, '_tax_status', 'taxable'),
(110, 36, '_tax_class', ''),
(111, 36, '_manage_stock', 'no'),
(112, 36, '_backorders', 'no'),
(113, 36, '_sold_individually', 'no'),
(114, 36, '_virtual', 'no'),
(115, 36, '_downloadable', 'no'),
(116, 36, '_download_limit', '-1'),
(117, 36, '_download_expiry', '-1'),
(118, 36, '_stock', NULL),
(119, 36, '_stock_status', 'instock'),
(120, 36, '_wc_average_rating', '0'),
(121, 36, '_wc_review_count', '0'),
(122, 36, '_product_version', '5.5.2'),
(123, 13, '_edit_lock', '1630478795:1'),
(124, 37, '_wp_attached_file', '2021/08/image-4.png'),
(125, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:305;s:6:\"height\";i:200;s:4:\"file\";s:19:\"2021/08/image-4.png\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"image-4-300x197.png\";s:5:\"width\";i:300;s:6:\"height\";i:197;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"image-4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"lazy\";a:4:{s:4:\"file\";s:17:\"image-4-50x33.png\";s:5:\"width\";i:50;s:6:\"height\";i:33;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"lazy-square\";a:4:{s:4:\"file\";s:17:\"image-4-50x50.png\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"product-square\";a:4:{s:4:\"file\";s:19:\"image-4-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"product-rect-lazy\";a:4:{s:4:\"file\";s:17:\"image-4-30x20.png\";s:5:\"width\";i:30;s:6:\"height\";i:20;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"news-rect-lazy\";a:4:{s:4:\"file\";s:17:\"image-4-30x20.png\";s:5:\"width\";i:30;s:6:\"height\";i:20;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"image-4-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"image-4-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"image-4-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"image-4-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"product-rect\";a:4:{s:4:\"file\";s:19:\"image-4-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(126, 16, '_thumbnail_id', '69'),
(128, 22, '_thumbnail_id', '195'),
(135, 40, '_edit_last', '1'),
(136, 40, '_edit_lock', '1638461146:1'),
(137, 41, '_edit_last', '1'),
(138, 41, '_edit_lock', '1628605709:1'),
(139, 40, 'slider', '1'),
(140, 40, '_slider', 'field_611249196044f'),
(141, 40, 'slider_fields_title', 'Каждый вторник и четверг'),
(142, 40, '_slider_fields_title', 'field_611249b26e77e'),
(143, 40, 'slider_fields_text', 'Скидка -25% на пельмешки и вареники при заказе с 10:00 до 13:00'),
(144, 40, '_slider_fields_text', 'field_611249e86e77f'),
(145, 40, 'slider_fields_link', '1'),
(146, 40, '_slider_fields_link', 'field_61124a666e783'),
(147, 40, 'slider_fields_link_data_text', 'В каталог'),
(148, 40, '_slider_fields_link_data_text', 'field_61124a256e781'),
(149, 40, 'slider_fields_link_data_link', 'http://localhost:8888/rest/store/product-category/pelmeni/'),
(150, 40, '_slider_fields_link_data_link', 'field_61124af16e786'),
(151, 40, 'slider_fields_link_data_external', '0'),
(152, 40, '_slider_fields_link_data_external', 'field_61124af96e787'),
(153, 40, 'slider_fields_link_data', ''),
(154, 40, '_slider_fields_link_data', 'field_611249f76e780'),
(155, 40, 'slider_fields', ''),
(156, 40, '_slider_fields', 'field_6112496d6e77d'),
(157, 40, 'slider_data_title', 'Каждый вторник и четверг'),
(158, 40, '_slider_data_title', 'field_611249b26e77e'),
(159, 40, 'slider_data_text', 'Скидка -25% на пельмешки и вареники при заказе с 10:00 до 13:00'),
(160, 40, '_slider_data_text', 'field_611249e86e77f'),
(161, 40, 'slider_data_link', '1'),
(162, 40, '_slider_data_link', 'field_61124a666e783'),
(163, 40, 'slider_data_link_data_text', 'В каталог'),
(164, 40, '_slider_data_link_data_text', 'field_61124a256e781'),
(165, 40, 'slider_data_link_data_link', 'http://localhost:8888/rest/store/shop?categories=pelmeni,vareniki'),
(166, 40, '_slider_data_link_data_link', 'field_61124af16e786'),
(167, 40, 'slider_data_link_data_external', '0'),
(168, 40, '_slider_data_link_data_external', 'field_61124af96e787'),
(169, 40, 'slider_data_link_data', ''),
(170, 40, '_slider_data_link_data', 'field_611249f76e780'),
(171, 40, 'slider_data', ''),
(172, 40, '_slider_data', 'field_6112496d6e77d'),
(173, 51, '_edit_last', '1'),
(174, 51, 'slider', '1'),
(175, 51, '_slider', 'field_611249196044f'),
(176, 51, '_edit_lock', '1628949878:1'),
(177, 51, 'slider_data_title', 'test'),
(178, 51, '_slider_data_title', 'field_611249b26e77e'),
(179, 51, 'slider_data_text', 'dsad'),
(180, 51, '_slider_data_text', 'field_611249e86e77f'),
(181, 51, 'slider_data_link', '0'),
(182, 51, '_slider_data_link', 'field_61124a666e783'),
(183, 51, 'slider_data', ''),
(184, 51, '_slider_data', 'field_6112496d6e77d'),
(185, 65, '_wp_attached_file', '2021/08/image-1.png'),
(186, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:847;s:6:\"height\";i:470;s:4:\"file\";s:19:\"2021/08/image-1.png\";s:5:\"sizes\";a:18:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"image-1-300x166.png\";s:5:\"width\";i:300;s:6:\"height\";i:166;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"image-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"image-1-768x426.png\";s:5:\"width\";i:768;s:6:\"height\";i:426;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"lazy\";a:4:{s:4:\"file\";s:17:\"image-1-50x28.png\";s:5:\"width\";i:50;s:6:\"height\";i:28;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"lazy-square\";a:4:{s:4:\"file\";s:17:\"image-1-50x50.png\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"product-square\";a:4:{s:4:\"file\";s:19:\"image-1-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"product-rect-lazy\";a:4:{s:4:\"file\";s:17:\"image-1-30x20.png\";s:5:\"width\";i:30;s:6:\"height\";i:20;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"product-rect\";a:4:{s:4:\"file\";s:19:\"image-1-700x470.png\";s:5:\"width\";i:700;s:6:\"height\";i:470;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"news-rect-lazy\";a:4:{s:4:\"file\";s:17:\"image-1-30x20.png\";s:5:\"width\";i:30;s:6:\"height\";i:20;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"news-rect\";a:4:{s:4:\"file\";s:19:\"image-1-360x220.png\";s:5:\"width\";i:360;s:6:\"height\";i:220;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"image-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"image-1-600x333.png\";s:5:\"width\";i:600;s:6:\"height\";i:333;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"image-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"image-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"image-1-600x333.png\";s:5:\"width\";i:600;s:6:\"height\";i:333;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"image-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:24:\"product-rect_old_600x400\";a:4:{s:4:\"file\";s:19:\"image-1-600x400.png\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:24:\"product-rect_old_300x200\";a:4:{s:4:\"file\";s:19:\"image-1-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(187, 40, '_thumbnail_id', '65'),
(188, 40, 'grid', '0'),
(189, 40, '_grid', 'field_6112516acaa4c'),
(190, 40, 'panel_available', '0'),
(191, 40, '_panel_available', 'field_6112530a1b177'),
(192, 40, 'panel_text', ''),
(193, 40, '_panel_text', 'field_6112531b1b178'),
(194, 40, 'panel_color', 'red'),
(195, 40, '_panel_color', 'field_6112532c1b179'),
(196, 40, 'panel', ''),
(197, 40, '_panel', 'field_611252d71b176'),
(200, 51, '_thumbnail_id', '37'),
(201, 51, 'grid', '1'),
(202, 51, '_grid', 'field_6112516acaa4c'),
(203, 51, 'panel_available', '1'),
(204, 51, '_panel_available', 'field_6112530a1b177'),
(205, 51, 'panel_text', 'Бесплатно'),
(206, 51, '_panel_text', 'field_6112531b1b178'),
(207, 51, 'panel_color', 'red'),
(208, 51, '_panel_color', 'field_6112532c1b179'),
(209, 51, 'panel', ''),
(210, 51, '_panel', 'field_611252d71b176'),
(211, 51, 'grid_data_title', 'Раздвоение гастрономичности!'),
(212, 51, '_grid_data_title', 'field_611251a1caa4e'),
(213, 51, 'grid_data_text', 'Вторая порция вареников с картофилем -\r\n'),
(214, 51, '_grid_data_text', 'field_611251cbcaa4f'),
(215, 51, 'grid_data_under_text', 'БЕСПЛАТНО!*'),
(216, 51, '_grid_data_under_text', 'field_611251e7caa50'),
(217, 51, 'grid_data_link', '1'),
(218, 51, '_grid_data_link', 'field_611251f9caa51'),
(219, 51, 'grid_data_link_data_link', '#'),
(220, 51, '_grid_data_link_data_link', 'field_61125242caa53'),
(221, 51, 'grid_data_link_data_external', '0'),
(222, 51, '_grid_data_link_data_external', 'field_61125264caa54'),
(223, 51, 'grid_data_link_data', ''),
(224, 51, '_grid_data_link_data', 'field_61125210caa52'),
(225, 51, 'grid_data', ''),
(226, 51, '_grid_data', 'field_61125180caa4d'),
(227, 40, 'badge_available', '1'),
(228, 40, '_badge_available', 'field_6112530a1b177'),
(229, 40, 'badge_text', 'Бесплатно'),
(230, 40, '_badge_text', 'field_6112531b1b178'),
(231, 40, 'badge_color', 'red'),
(232, 40, '_badge_color', 'field_6112532c1b179'),
(233, 40, 'badge', ''),
(234, 40, '_badge', 'field_611252d71b176'),
(235, 51, 'badge_available', '1'),
(236, 51, '_badge_available', 'field_6112530a1b177'),
(237, 51, 'badge_text', '-20%'),
(238, 51, '_badge_text', 'field_6112531b1b178'),
(239, 51, 'badge_color', 'green'),
(240, 51, '_badge_color', 'field_6112532c1b179'),
(241, 51, 'badge', ''),
(242, 51, '_badge', 'field_611252d71b176'),
(243, 67, '_edit_last', '1'),
(244, 67, '_edit_lock', '1638461123:1'),
(245, 67, 'slider', '0'),
(246, 67, '_slider', 'field_611249196044f'),
(247, 67, 'grid', '1'),
(248, 67, '_grid', 'field_6112516acaa4c'),
(249, 67, 'grid_data_title', 'test1'),
(250, 67, '_grid_data_title', 'field_611251a1caa4e'),
(251, 67, 'grid_data_text', 'test2'),
(252, 67, '_grid_data_text', 'field_611251cbcaa4f'),
(253, 67, 'grid_data_under_text', 'test3'),
(254, 67, '_grid_data_under_text', 'field_611251e7caa50'),
(255, 67, 'grid_data_link', '0'),
(256, 67, '_grid_data_link', 'field_611251f9caa51'),
(257, 67, 'grid_data', ''),
(258, 67, '_grid_data', 'field_61125180caa4d'),
(259, 67, 'badge_available', '1'),
(260, 67, '_badge_available', 'field_6112530a1b177'),
(261, 67, 'badge_text', 'Test'),
(262, 67, '_badge_text', 'field_6112531b1b178'),
(263, 67, 'badge_color', 'orange'),
(264, 67, '_badge_color', 'field_6112532c1b179'),
(265, 67, 'badge', ''),
(266, 67, '_badge', 'field_611252d71b176'),
(267, 67, '_thumbnail_id', '65'),
(268, 40, 'grid_data_title', 'fs'),
(269, 40, '_grid_data_title', 'field_611251a1caa4e'),
(270, 40, 'grid_data_text', 'fs'),
(271, 40, '_grid_data_text', 'field_611251cbcaa4f'),
(272, 40, 'grid_data_under_text', ''),
(273, 40, '_grid_data_under_text', 'field_611251e7caa50'),
(274, 40, 'grid_data_link', '0'),
(275, 40, '_grid_data_link', 'field_611251f9caa51'),
(276, 40, 'grid_data', ''),
(277, 40, '_grid_data', 'field_61125180caa4d'),
(279, 68, '_edit_last', '1'),
(280, 68, '_edit_lock', '1630157028:1'),
(281, 69, '_wp_attached_file', '2021/08/image-1-1.png'),
(282, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:847;s:6:\"height\";i:470;s:4:\"file\";s:21:\"2021/08/image-1-1.png\";s:5:\"sizes\";a:18:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"image-1-1-300x166.png\";s:5:\"width\";i:300;s:6:\"height\";i:166;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"image-1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"image-1-1-768x426.png\";s:5:\"width\";i:768;s:6:\"height\";i:426;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"lazy\";a:4:{s:4:\"file\";s:19:\"image-1-1-50x28.png\";s:5:\"width\";i:50;s:6:\"height\";i:28;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"lazy-square\";a:4:{s:4:\"file\";s:19:\"image-1-1-50x50.png\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"product-square\";a:4:{s:4:\"file\";s:21:\"image-1-1-120x120.png\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"product-rect-lazy\";a:4:{s:4:\"file\";s:19:\"image-1-1-30x20.png\";s:5:\"width\";i:30;s:6:\"height\";i:20;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"product-rect\";a:4:{s:4:\"file\";s:21:\"image-1-1-700x470.png\";s:5:\"width\";i:700;s:6:\"height\";i:470;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"news-rect-lazy\";a:4:{s:4:\"file\";s:19:\"image-1-1-30x20.png\";s:5:\"width\";i:30;s:6:\"height\";i:20;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"news-rect\";a:4:{s:4:\"file\";s:21:\"image-1-1-360x220.png\";s:5:\"width\";i:360;s:6:\"height\";i:220;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"image-1-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"image-1-1-600x333.png\";s:5:\"width\";i:600;s:6:\"height\";i:333;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"image-1-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"image-1-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"image-1-1-600x333.png\";s:5:\"width\";i:600;s:6:\"height\";i:333;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"image-1-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:24:\"product-rect_old_600x400\";a:4:{s:4:\"file\";s:21:\"image-1-1-600x400.png\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:24:\"product-rect_old_300x200\";a:4:{s:4:\"file\";s:21:\"image-1-1-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(284, 16, '_weight', '0.25'),
(287, 71, '_edit_last', '1'),
(288, 71, '_edit_lock', '1629130234:1'),
(289, 72, '_edit_last', '1'),
(290, 72, '_edit_lock', '1629142284:1'),
(291, 73, '_edit_last', '1'),
(292, 73, '_edit_lock', '1630152423:1'),
(293, 34, 'coords', 'a:3:{s:7:\"address\";s:0:\"\";s:3:\"lat\";s:18:\"44.961655443934426\";s:3:\"lng\";s:17:\"34.10351477196205\";}'),
(294, 34, '_coords', 'field_611d42e45ef94'),
(295, 34, 'address', 'улица Гагарина, 31'),
(296, 34, '_address', 'field_611d43055ef95'),
(297, 68, 'coords', 'a:3:{s:7:\"address\";s:0:\"\";s:3:\"lat\";s:18:\"-37.80321246470997\";s:3:\"lng\";s:18:\"145.00301960876467\";}'),
(298, 68, '_coords', 'field_611d42e45ef94'),
(299, 68, 'address', 'улица Гагарина, 32'),
(300, 68, '_address', 'field_611d43055ef95'),
(305, 82, '_wp_attached_file', '2021/08/group-68475.png'),
(306, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:80;s:6:\"height\";i:94;s:4:\"file\";s:23:\"2021/08/group-68475.png\";s:5:\"sizes\";a:4:{s:4:\"lazy\";a:4:{s:4:\"file\";s:21:\"group-68475-43x50.png\";s:5:\"width\";i:43;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"lazy-square\";a:4:{s:4:\"file\";s:21:\"group-68475-50x50.png\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"product-rect-lazy\";a:4:{s:4:\"file\";s:21:\"group-68475-30x20.png\";s:5:\"width\";i:30;s:6:\"height\";i:20;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"news-rect-lazy\";a:4:{s:4:\"file\";s:21:\"group-68475-30x20.png\";s:5:\"width\";i:30;s:6:\"height\";i:20;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(307, 68, 'map_lat', '44.941480'),
(308, 68, '_map_lat', 'field_611d45b755fb4'),
(309, 68, 'map_lng', '34.073303'),
(310, 68, '_map_lng', 'field_611d462755fb5'),
(311, 68, 'map_marker', '82'),
(312, 68, '_map_marker', 'field_611d463c55fb6'),
(313, 68, 'map', ''),
(314, 68, '_map', 'field_611d45a555fb3'),
(315, 34, 'map_lat', '44.984257'),
(316, 34, '_map_lat', 'field_611d45b755fb4'),
(317, 34, 'map_lng', '34.108051'),
(318, 34, '_map_lng', 'field_611d462755fb5'),
(319, 34, 'map_marker', '82'),
(320, 34, '_map_marker', 'field_611d463c55fb6'),
(321, 34, 'map', ''),
(322, 34, '_map', 'field_611d45a555fb3'),
(332, 84, '_menu_item_type', 'taxonomy'),
(333, 84, '_menu_item_menu_item_parent', '0'),
(334, 84, '_menu_item_object_id', '16'),
(335, 84, '_menu_item_object', 'product_cat'),
(336, 84, '_menu_item_target', ''),
(337, 84, '_menu_item_classes', 'a:1:{i:0;s:4:\"ajax\";}'),
(338, 84, '_menu_item_xfn', ''),
(339, 84, '_menu_item_url', ''),
(341, 85, '_menu_item_type', 'taxonomy'),
(342, 85, '_menu_item_menu_item_parent', '0'),
(343, 85, '_menu_item_object_id', '17'),
(344, 85, '_menu_item_object', 'product_cat'),
(345, 85, '_menu_item_target', ''),
(346, 85, '_menu_item_classes', 'a:1:{i:0;s:4:\"ajax\";}'),
(347, 85, '_menu_item_xfn', ''),
(348, 85, '_menu_item_url', ''),
(349, 86, '_edit_last', '1'),
(350, 86, 'tr_start_date', ''),
(351, 86, 'tr_start_date_hour', '0'),
(352, 86, 'tr_start_date_minute', '0'),
(353, 86, 'tr_end_date', ''),
(354, 86, 'tr_end_date_hour', '0'),
(355, 86, 'tr_end_date_minute', '0'),
(356, 86, '_edit_lock', '1631566201:1'),
(357, 87, '_edit_last', '1'),
(358, 87, '_edit_lock', '1629383445:1'),
(359, 91, '_form', '<div class=\"form\"><div class=\"form__item\">[text* your-name placeholder \"Ваше имя\"]</div><div class=\"form__item\">[text* your-phone-email placeholder \"Контактный телефон или email\"]</div><div class=\"form__item\">[textarea* your-message placeholder \"Текст вопроса\"]</div><div class=\"form__item\"><div class=\"control control--checkbox\">[acceptance politic]<div class=\"control__fake\">Даю согласие на обработку персональных данных</div>[/acceptance]</div></div><div class=\"form__item form__item--submit\"><div class=\"form__item__submit-inner\">[submit class:button class:button--red \"Отправить\"]</div></div></div>[hidden your-place class:place]'),
(360, 91, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:32:\"Сообщение с сайта\";s:6:\"sender\";s:22:\"burlakeugene@gmail.com\";s:9:\"recipient\";s:22:\"burlakeugene@gmail.com\";s:4:\"body\";s:92:\"От: [your-name] <[your-phone-email]>\n\nМесто:\n[your-place]\n\nТекст:\n[your-message]\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(361, 91, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:38:\"[_site_title] <burlakeugene@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(362, 91, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:40:\"Сообщение отправлено!\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:31:\"Поле обязательно\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(363, 91, '_additional_settings', ''),
(364, 91, '_locale', 'ru_RU'),
(370, 86, 'title', 'Обратная связь'),
(371, 86, '_title', 'field_611e6b6fd53c8'),
(372, 86, 'text', 'Если у Вас возникли вопросы или предложения - свяжитесь с нами!'),
(373, 86, '_text', 'field_611e6b86d53c9'),
(374, 86, 'shortcode', '[contact-form-7 id=\"91\" title=\"callback\"]'),
(375, 86, '_shortcode', 'field_611e6b93d53ca'),
(381, 93, '_edit_last', '1'),
(382, 93, '_edit_lock', '1630073753:1'),
(383, 93, '_thumbnail_id', '69'),
(385, 95, '_edit_last', '1'),
(386, 95, '_edit_lock', '1630070338:1'),
(387, 93, 'related', 'a:3:{i:0;s:2:\"72\";i:1;s:2:\"71\";i:2;s:2:\"93\";}'),
(388, 93, '_related', 'field_6128e649323dc'),
(394, 100, '_edit_last', '1'),
(395, 100, '_edit_lock', '1640361593:1'),
(398, 107, '_edit_last', '1'),
(399, 107, '_edit_lock', '1640361447:1'),
(400, 113, '_wp_attached_file', '2021/08/group-68469.svg'),
(401, 113, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:24:\"/2021/08/group-68469.svg\";s:5:\"sizes\";a:19:{s:21:\"woocommerce_thumbnail\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:15:\"group-68469.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:15:\"group-68469.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:18:\"woocommerce_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:15:\"group-68469.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:15:\"group-68469.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:15:\"group-68469.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:15:\"group-68469.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:15:\"group-68469.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:15:\"group-68469.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:15:\"group-68469.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:4:\"lazy\";a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"crop\";i:0;s:4:\"file\";s:15:\"group-68469.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:11:\"lazy-square\";a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"crop\";i:1;s:4:\"file\";s:15:\"group-68469.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"product-square\";a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"crop\";i:1;s:4:\"file\";s:15:\"group-68469.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:17:\"product-rect-lazy\";a:5:{s:5:\"width\";i:30;s:6:\"height\";i:20;s:4:\"crop\";i:1;s:4:\"file\";s:15:\"group-68469.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"product-rect\";a:5:{s:5:\"width\";i:300;s:6:\"height\";i:200;s:4:\"crop\";i:1;s:4:\"file\";s:15:\"group-68469.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"news-rect-lazy\";a:5:{s:5:\"width\";i:30;s:6:\"height\";i:20;s:4:\"crop\";i:1;s:4:\"file\";s:15:\"group-68469.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"news-rect\";a:5:{s:5:\"width\";i:360;s:6:\"height\";i:220;s:4:\"crop\";i:1;s:4:\"file\";s:15:\"group-68469.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"shop_catalog\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:15:\"group-68469.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:15:\"group-68469.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"shop_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:15:\"group-68469.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(402, 114, '_wp_attached_file', '2021/08/group-68469-1.svg'),
(403, 114, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:26:\"/2021/08/group-68469-1.svg\";s:5:\"sizes\";a:19:{s:21:\"woocommerce_thumbnail\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:18:\"woocommerce_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:17:\"group-68469-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"group-68469-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"group-68469-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"group-68469-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:4:\"lazy\";a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:11:\"lazy-square\";a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"product-square\";a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:17:\"product-rect-lazy\";a:5:{s:5:\"width\";i:30;s:6:\"height\";i:20;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"product-rect\";a:5:{s:5:\"width\";i:300;s:6:\"height\";i:200;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"news-rect-lazy\";a:5:{s:5:\"width\";i:30;s:6:\"height\";i:20;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"news-rect\";a:5:{s:5:\"width\";i:360;s:6:\"height\";i:220;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"shop_catalog\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"shop_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-1.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(404, 100, 'block_0_title', 'Условия доставки'),
(405, 100, '_block_0_title', 'field_6129041285397'),
(406, 100, 'block_0_items_0_icon', '113'),
(407, 100, '_block_0_items_0_icon', 'field_6129043385399'),
(408, 100, 'block_0_items_0_text', 'Бесплатная доставка при заказе от 1500 рублей.'),
(409, 100, '_block_0_items_0_text', 'field_612904488539a'),
(410, 100, 'block_0_items_1_icon', '114'),
(411, 100, '_block_0_items_1_icon', 'field_6129043385399'),
(412, 100, 'block_0_items_1_text', 'Сумма минимального заказа – 950 рублей'),
(413, 100, '_block_0_items_1_text', 'field_612904488539a'),
(414, 100, 'block_0_items', '4'),
(415, 100, '_block_0_items', 'field_6129041e85398'),
(416, 100, 'block', '4'),
(417, 100, '_block', 'field_612903d885396'),
(418, 115, 'block_0_title', 'Условия доставки'),
(419, 115, '_block_0_title', 'field_6129041285397'),
(420, 115, 'block_0_items_0_icon', '113'),
(421, 115, '_block_0_items_0_icon', 'field_6129043385399'),
(422, 115, 'block_0_items_0_text', 'Бесплатная доставка при заказе от 1500 рублей.'),
(423, 115, '_block_0_items_0_text', 'field_612904488539a'),
(424, 115, 'block_0_items_1_icon', '114'),
(425, 115, '_block_0_items_1_icon', 'field_6129043385399'),
(426, 115, 'block_0_items_1_text', 'Сумма минимального заказа – 950 рублей'),
(427, 115, '_block_0_items_1_text', 'field_612904488539a'),
(428, 115, 'block_0_items', '2'),
(429, 115, '_block_0_items', 'field_6129041e85398'),
(430, 115, 'block', '1'),
(431, 115, '_block', 'field_612903d885396'),
(432, 116, '_wp_attached_file', '2021/08/group-68469-2.svg');
INSERT INTO `rest_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(433, 116, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:26:\"/2021/08/group-68469-2.svg\";s:5:\"sizes\";a:19:{s:21:\"woocommerce_thumbnail\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:18:\"woocommerce_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:17:\"group-68469-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"group-68469-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"group-68469-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"group-68469-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:4:\"lazy\";a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:11:\"lazy-square\";a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"product-square\";a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:17:\"product-rect-lazy\";a:5:{s:5:\"width\";i:30;s:6:\"height\";i:20;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"product-rect\";a:5:{s:5:\"width\";i:300;s:6:\"height\";i:200;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"news-rect-lazy\";a:5:{s:5:\"width\";i:30;s:6:\"height\";i:20;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"news-rect\";a:5:{s:5:\"width\";i:360;s:6:\"height\";i:220;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"shop_catalog\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"shop_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-2.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(434, 117, '_wp_attached_file', '2021/08/group-68469-3.svg'),
(435, 117, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:26:\"/2021/08/group-68469-3.svg\";s:5:\"sizes\";a:19:{s:21:\"woocommerce_thumbnail\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:18:\"woocommerce_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:17:\"group-68469-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"group-68469-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"group-68469-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"group-68469-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:4:\"lazy\";a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:11:\"lazy-square\";a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"product-square\";a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:17:\"product-rect-lazy\";a:5:{s:5:\"width\";i:30;s:6:\"height\";i:20;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"product-rect\";a:5:{s:5:\"width\";i:300;s:6:\"height\";i:200;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"news-rect-lazy\";a:5:{s:5:\"width\";i:30;s:6:\"height\";i:20;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"news-rect\";a:5:{s:5:\"width\";i:360;s:6:\"height\";i:220;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"shop_catalog\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"shop_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-3.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(436, 118, '_wp_attached_file', '2021/08/group-68469-4.svg'),
(437, 118, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:26:\"/2021/08/group-68469-4.svg\";s:5:\"sizes\";a:19:{s:21:\"woocommerce_thumbnail\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-4.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-4.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:18:\"woocommerce_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-4.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:17:\"group-68469-4.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"group-68469-4.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"group-68469-4.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"group-68469-4.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-4.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-4.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:4:\"lazy\";a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-4.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:11:\"lazy-square\";a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-4.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"product-square\";a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-4.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:17:\"product-rect-lazy\";a:5:{s:5:\"width\";i:30;s:6:\"height\";i:20;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-4.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"product-rect\";a:5:{s:5:\"width\";i:300;s:6:\"height\";i:200;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-4.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"news-rect-lazy\";a:5:{s:5:\"width\";i:30;s:6:\"height\";i:20;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-4.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"news-rect\";a:5:{s:5:\"width\";i:360;s:6:\"height\";i:220;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-4.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"shop_catalog\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-4.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-4.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"shop_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-4.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(438, 119, '_wp_attached_file', '2021/08/group-68469-5.svg'),
(439, 119, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:26:\"/2021/08/group-68469-5.svg\";s:5:\"sizes\";a:19:{s:21:\"woocommerce_thumbnail\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:18:\"woocommerce_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:17:\"group-68469-5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"group-68469-5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"group-68469-5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"group-68469-5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:4:\"lazy\";a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:11:\"lazy-square\";a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"product-square\";a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:17:\"product-rect-lazy\";a:5:{s:5:\"width\";i:30;s:6:\"height\";i:20;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"product-rect\";a:5:{s:5:\"width\";i:300;s:6:\"height\";i:200;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"news-rect-lazy\";a:5:{s:5:\"width\";i:30;s:6:\"height\";i:20;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"news-rect\";a:5:{s:5:\"width\";i:360;s:6:\"height\";i:220;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"shop_catalog\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"shop_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-5.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(440, 120, '_wp_attached_file', '2021/08/group-68469-6.svg'),
(441, 120, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:26:\"/2021/08/group-68469-6.svg\";s:5:\"sizes\";a:19:{s:21:\"woocommerce_thumbnail\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:18:\"woocommerce_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:17:\"group-68469-6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"group-68469-6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"group-68469-6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"group-68469-6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:4:\"lazy\";a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:11:\"lazy-square\";a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"product-square\";a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:17:\"product-rect-lazy\";a:5:{s:5:\"width\";i:30;s:6:\"height\";i:20;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"product-rect\";a:5:{s:5:\"width\";i:300;s:6:\"height\";i:200;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"news-rect-lazy\";a:5:{s:5:\"width\";i:30;s:6:\"height\";i:20;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"news-rect\";a:5:{s:5:\"width\";i:360;s:6:\"height\";i:220;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"shop_catalog\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"shop_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-6.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(442, 121, '_wp_attached_file', '2021/08/group-68469-7.svg'),
(443, 121, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:26:\"/2021/08/group-68469-7.svg\";s:5:\"sizes\";a:19:{s:21:\"woocommerce_thumbnail\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-7.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-7.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:18:\"woocommerce_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-7.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:17:\"group-68469-7.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"group-68469-7.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"group-68469-7.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"group-68469-7.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-7.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-7.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:4:\"lazy\";a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-7.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:11:\"lazy-square\";a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-7.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"product-square\";a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-7.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:17:\"product-rect-lazy\";a:5:{s:5:\"width\";i:30;s:6:\"height\";i:20;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-7.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"product-rect\";a:5:{s:5:\"width\";i:300;s:6:\"height\";i:200;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-7.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"news-rect-lazy\";a:5:{s:5:\"width\";i:30;s:6:\"height\";i:20;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-7.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"news-rect\";a:5:{s:5:\"width\";i:360;s:6:\"height\";i:220;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-7.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"shop_catalog\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-7.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-7.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"shop_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-7.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(444, 122, '_wp_attached_file', '2021/08/group-68469-8.svg'),
(445, 122, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:26:\"/2021/08/group-68469-8.svg\";s:5:\"sizes\";a:19:{s:21:\"woocommerce_thumbnail\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-8.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-8.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:18:\"woocommerce_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-8.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:17:\"group-68469-8.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"group-68469-8.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"group-68469-8.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"group-68469-8.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-8.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-8.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:4:\"lazy\";a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-8.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:11:\"lazy-square\";a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-8.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"product-square\";a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-8.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:17:\"product-rect-lazy\";a:5:{s:5:\"width\";i:30;s:6:\"height\";i:20;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-8.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"product-rect\";a:5:{s:5:\"width\";i:300;s:6:\"height\";i:200;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-8.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"news-rect-lazy\";a:5:{s:5:\"width\";i:30;s:6:\"height\";i:20;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-8.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"news-rect\";a:5:{s:5:\"width\";i:360;s:6:\"height\";i:220;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-8.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"shop_catalog\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-8.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-8.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"shop_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-8.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(446, 123, '_wp_attached_file', '2021/08/group-68469-9.svg'),
(447, 123, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:26:\"/2021/08/group-68469-9.svg\";s:5:\"sizes\";a:19:{s:21:\"woocommerce_thumbnail\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-9.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-9.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:18:\"woocommerce_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-9.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:17:\"group-68469-9.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"group-68469-9.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"group-68469-9.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:17:\"group-68469-9.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-9.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-9.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:4:\"lazy\";a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-9.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:11:\"lazy-square\";a:5:{s:5:\"width\";i:50;s:6:\"height\";i:50;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-9.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"product-square\";a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-9.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:17:\"product-rect-lazy\";a:5:{s:5:\"width\";i:30;s:6:\"height\";i:20;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-9.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"product-rect\";a:5:{s:5:\"width\";i:300;s:6:\"height\";i:200;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-9.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"news-rect-lazy\";a:5:{s:5:\"width\";i:30;s:6:\"height\";i:20;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-9.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"news-rect\";a:5:{s:5:\"width\";i:360;s:6:\"height\";i:220;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-9.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"shop_catalog\";a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-9.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:5:{s:5:\"width\";i:600;s:6:\"height\";i:0;s:4:\"crop\";i:0;s:4:\"file\";s:17:\"group-68469-9.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:14:\"shop_thumbnail\";a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"crop\";i:1;s:4:\"file\";s:17:\"group-68469-9.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(448, 100, 'block_0_items_2_icon', '116'),
(449, 100, '_block_0_items_2_icon', 'field_6129043385399'),
(450, 100, 'block_0_items_2_text', 'Доставка осуществляется\r\nв пределах Симферополя\r\nс 10:00 до 22:00'),
(451, 100, '_block_0_items_2_text', 'field_612904488539a'),
(452, 100, 'block_0_items_3_icon', '117'),
(453, 100, '_block_0_items_3_icon', 'field_6129043385399'),
(454, 100, 'block_0_items_3_text', 'Заказы на доставку день\r\nв день принимаются\r\nс 10:00 до 21:00'),
(455, 100, '_block_0_items_3_text', 'field_612904488539a'),
(456, 100, 'block_1_title', 'Заказ можно сделать несколькими способами'),
(457, 100, '_block_1_title', 'field_6129041285397'),
(458, 100, 'block_1_items_0_icon', '118'),
(459, 100, '_block_1_items_0_icon', 'field_6129043385399'),
(460, 100, 'block_1_items_0_text', 'Сделать заказ и оформить на нашем сайте'),
(461, 100, '_block_1_items_0_text', 'field_612904488539a'),
(462, 100, 'block_1_items_1_icon', '119'),
(463, 100, '_block_1_items_1_icon', 'field_6129043385399'),
(464, 100, 'block_1_items_1_text', 'В режиме телефонного звонке с менеджером'),
(465, 100, '_block_1_items_1_text', 'field_612904488539a'),
(466, 100, 'block_1_items', '2'),
(467, 100, '_block_1_items', 'field_6129041e85398'),
(468, 100, 'block_2_title', 'Оплата заказа'),
(469, 100, '_block_2_title', 'field_6129041285397'),
(470, 100, 'block_2_items_0_icon', '120'),
(471, 100, '_block_2_items_0_icon', 'field_6129043385399'),
(472, 100, 'block_2_items_0_text', 'Вы можете оплатить наличными курьеру'),
(473, 100, '_block_2_items_0_text', 'field_612904488539a'),
(474, 100, 'block_2_items_1_icon', '121'),
(475, 100, '_block_2_items_1_icon', 'field_6129043385399'),
(476, 100, 'block_2_items_1_text', 'Так же есть возможность осуществить оплату при самовывозе'),
(477, 100, '_block_2_items_1_text', 'field_612904488539a'),
(478, 100, 'block_2_items', '2'),
(479, 100, '_block_2_items', 'field_6129041e85398'),
(480, 100, 'block_3_title', 'Доставка ко времени'),
(481, 100, '_block_3_title', 'field_6129041285397'),
(482, 100, 'block_3_items_0_icon', '122'),
(483, 100, '_block_3_items_0_icon', 'field_6129043385399'),
(484, 100, 'block_3_items_0_text', 'Обязательное условие: заказ должен быть сделан не менее\r\nчем за 3 часа до желаемого времени доставки'),
(485, 100, '_block_3_items_0_text', 'field_612904488539a'),
(486, 100, 'block_3_items_1_icon', '123'),
(487, 100, '_block_3_items_1_icon', 'field_6129043385399'),
(488, 100, 'block_3_items_1_text', 'Заказ будет доставлен точно в указанное вами время'),
(489, 100, '_block_3_items_1_text', 'field_612904488539a'),
(490, 100, 'block_3_items', '2'),
(491, 100, '_block_3_items', 'field_6129041e85398'),
(492, 124, 'block_0_title', 'Условия доставки'),
(493, 124, '_block_0_title', 'field_6129041285397'),
(494, 124, 'block_0_items_0_icon', '113'),
(495, 124, '_block_0_items_0_icon', 'field_6129043385399'),
(496, 124, 'block_0_items_0_text', 'Бесплатная доставка при заказе от 1500 рублей.'),
(497, 124, '_block_0_items_0_text', 'field_612904488539a'),
(498, 124, 'block_0_items_1_icon', '114'),
(499, 124, '_block_0_items_1_icon', 'field_6129043385399'),
(500, 124, 'block_0_items_1_text', 'Сумма минимального заказа – 950 рублей'),
(501, 124, '_block_0_items_1_text', 'field_612904488539a'),
(502, 124, 'block_0_items', '4'),
(503, 124, '_block_0_items', 'field_6129041e85398'),
(504, 124, 'block', '4'),
(505, 124, '_block', 'field_612903d885396'),
(506, 124, 'block_0_items_2_icon', '116'),
(507, 124, '_block_0_items_2_icon', 'field_6129043385399'),
(508, 124, 'block_0_items_2_text', 'Доставка осуществляется\r\nв пределах Симферополя\r\nс 10:00 до 22:00'),
(509, 124, '_block_0_items_2_text', 'field_612904488539a'),
(510, 124, 'block_0_items_3_icon', '117'),
(511, 124, '_block_0_items_3_icon', 'field_6129043385399'),
(512, 124, 'block_0_items_3_text', 'Заказы на доставку день\r\nв день принимаются\r\nс 10:00 до 21:00'),
(513, 124, '_block_0_items_3_text', 'field_612904488539a'),
(514, 124, 'block_1_title', 'Заказ можно сделать несколькими способами'),
(515, 124, '_block_1_title', 'field_6129041285397'),
(516, 124, 'block_1_items_0_icon', '118'),
(517, 124, '_block_1_items_0_icon', 'field_6129043385399'),
(518, 124, 'block_1_items_0_text', 'Сделать заказ и оформить на нашем сайте'),
(519, 124, '_block_1_items_0_text', 'field_612904488539a'),
(520, 124, 'block_1_items_1_icon', '119'),
(521, 124, '_block_1_items_1_icon', 'field_6129043385399'),
(522, 124, 'block_1_items_1_text', 'В режиме телефонного звонке с менеджером'),
(523, 124, '_block_1_items_1_text', 'field_612904488539a'),
(524, 124, 'block_1_items', '2'),
(525, 124, '_block_1_items', 'field_6129041e85398'),
(526, 124, 'block_2_title', 'Оплата заказа'),
(527, 124, '_block_2_title', 'field_6129041285397'),
(528, 124, 'block_2_items_0_icon', '120'),
(529, 124, '_block_2_items_0_icon', 'field_6129043385399'),
(530, 124, 'block_2_items_0_text', 'Вы можете оплатить наличными курьеру'),
(531, 124, '_block_2_items_0_text', 'field_612904488539a'),
(532, 124, 'block_2_items_1_icon', '121'),
(533, 124, '_block_2_items_1_icon', 'field_6129043385399'),
(534, 124, 'block_2_items_1_text', 'Так же есть возможность осуществить оплату при самовывозе'),
(535, 124, '_block_2_items_1_text', 'field_612904488539a'),
(536, 124, 'block_2_items', '2'),
(537, 124, '_block_2_items', 'field_6129041e85398'),
(538, 124, 'block_3_title', 'Доставка ко времени'),
(539, 124, '_block_3_title', 'field_6129041285397'),
(540, 124, 'block_3_items_0_icon', '122'),
(541, 124, '_block_3_items_0_icon', 'field_6129043385399'),
(542, 124, 'block_3_items_0_text', 'Обязательное условие: заказ должен быть сделан не менее\r\nчем за 3 часа до желаемого времени доставки'),
(543, 124, '_block_3_items_0_text', 'field_612904488539a'),
(544, 124, 'block_3_items_1_icon', '123'),
(545, 124, '_block_3_items_1_icon', 'field_6129043385399'),
(546, 124, 'block_3_items_1_text', 'Заказ будет доставлен точно в указанное вами время'),
(547, 124, '_block_3_items_1_text', 'field_612904488539a'),
(548, 124, 'block_3_items', '2'),
(549, 124, '_block_3_items', 'field_6129041e85398'),
(553, 125, 'block_0_title', 'Условия доставки'),
(554, 125, '_block_0_title', 'field_6129041285397'),
(555, 125, 'block_0_items_0_icon', '113'),
(556, 125, '_block_0_items_0_icon', 'field_6129043385399'),
(557, 125, 'block_0_items_0_text', 'Бесплатная доставка при заказе от 1500 рублей.'),
(558, 125, '_block_0_items_0_text', 'field_612904488539a'),
(559, 125, 'block_0_items_1_icon', '114'),
(560, 125, '_block_0_items_1_icon', 'field_6129043385399'),
(561, 125, 'block_0_items_1_text', 'Сумма минимального заказа – 950 рублей'),
(562, 125, '_block_0_items_1_text', 'field_612904488539a'),
(563, 125, 'block_0_items', '4'),
(564, 125, '_block_0_items', 'field_6129041e85398'),
(565, 125, 'block', '4'),
(566, 125, '_block', 'field_612903d885396'),
(567, 125, 'block_0_items_2_icon', '116'),
(568, 125, '_block_0_items_2_icon', 'field_6129043385399'),
(569, 125, 'block_0_items_2_text', 'Доставка осуществляется\r\nв пределах Симферополя\r\nс 10:00 до 22:00'),
(570, 125, '_block_0_items_2_text', 'field_612904488539a'),
(571, 125, 'block_0_items_3_icon', '117'),
(572, 125, '_block_0_items_3_icon', 'field_6129043385399'),
(573, 125, 'block_0_items_3_text', 'Заказы на доставку день\r\nв день принимаются\r\nс 10:00 до 21:00'),
(574, 125, '_block_0_items_3_text', 'field_612904488539a'),
(575, 125, 'block_1_title', 'Заказ можно сделать несколькими способами'),
(576, 125, '_block_1_title', 'field_6129041285397'),
(577, 125, 'block_1_items_0_icon', '118'),
(578, 125, '_block_1_items_0_icon', 'field_6129043385399'),
(579, 125, 'block_1_items_0_text', 'Сделать заказ и оформить на нашем сайте'),
(580, 125, '_block_1_items_0_text', 'field_612904488539a'),
(581, 125, 'block_1_items_1_icon', '119'),
(582, 125, '_block_1_items_1_icon', 'field_6129043385399'),
(583, 125, 'block_1_items_1_text', 'В режиме телефонного звонке с менеджером'),
(584, 125, '_block_1_items_1_text', 'field_612904488539a'),
(585, 125, 'block_1_items', '2'),
(586, 125, '_block_1_items', 'field_6129041e85398'),
(587, 125, 'block_2_title', 'Оплата заказа'),
(588, 125, '_block_2_title', 'field_6129041285397'),
(589, 125, 'block_2_items_0_icon', '120'),
(590, 125, '_block_2_items_0_icon', 'field_6129043385399'),
(591, 125, 'block_2_items_0_text', 'Вы можете оплатить наличными курьеру'),
(592, 125, '_block_2_items_0_text', 'field_612904488539a'),
(593, 125, 'block_2_items_1_icon', '121'),
(594, 125, '_block_2_items_1_icon', 'field_6129043385399'),
(595, 125, 'block_2_items_1_text', 'Так же есть возможность осуществить оплату при самовывозе'),
(596, 125, '_block_2_items_1_text', 'field_612904488539a'),
(597, 125, 'block_2_items', '2'),
(598, 125, '_block_2_items', 'field_6129041e85398'),
(599, 125, 'block_3_title', 'Доставка ко времени'),
(600, 125, '_block_3_title', 'field_6129041285397'),
(601, 125, 'block_3_items_0_icon', '122'),
(602, 125, '_block_3_items_0_icon', 'field_6129043385399'),
(603, 125, 'block_3_items_0_text', 'Обязательное условие: заказ должен быть сделан не менее\r\nчем за 3 часа до желаемого времени доставки'),
(604, 125, '_block_3_items_0_text', 'field_612904488539a'),
(605, 125, 'block_3_items_1_icon', '123'),
(606, 125, '_block_3_items_1_icon', 'field_6129043385399'),
(607, 125, 'block_3_items_1_text', 'Заказ будет доставлен точно в указанное вами время'),
(608, 125, '_block_3_items_1_text', 'field_612904488539a'),
(609, 125, 'block_3_items', '2'),
(610, 125, '_block_3_items', 'field_6129041e85398'),
(616, 68, 'phone', '+7 978 083-46-84'),
(617, 68, '_phone', 'field_612a213f71533'),
(618, 68, 'work_time', 'Пн-Пт: 9:00 - 22:00\r\nСб-Вс: 10:00 - 22:00'),
(619, 68, '_work_time', 'field_612a214b71534'),
(620, 129, '_edit_last', '1'),
(621, 129, 'address', ''),
(622, 129, '_address', 'field_611d43055ef95'),
(623, 129, 'map_lat', '45.002335'),
(624, 129, '_map_lat', 'field_611d45b755fb4'),
(625, 129, 'map_lng', '34.062957'),
(626, 129, '_map_lng', 'field_611d462755fb5'),
(627, 129, 'map_marker', '82'),
(628, 129, '_map_marker', 'field_611d463c55fb6'),
(629, 129, 'map', ''),
(630, 129, '_map', 'field_611d45a555fb3'),
(631, 129, 'phone', ''),
(632, 129, '_phone', 'field_612a213f71533'),
(633, 129, 'work_time', ''),
(634, 129, '_work_time', 'field_612a214b71534'),
(635, 129, '_edit_lock', '1630156790:1'),
(636, 34, 'phone', ''),
(637, 34, '_phone', 'field_612a213f71533'),
(638, 34, 'work_time', ''),
(639, 34, '_work_time', 'field_612a214b71534'),
(640, 11, '_edit_last', '1'),
(643, 131, '_edit_last', '1'),
(644, 131, '_edit_lock', '1630354389:1'),
(646, 16, 'description', 'Изюминкой «Цезаря» была, и остаётся его заправка, – особый уникальный соус. Надеемся, что наш шеф-повар сумел максимально сохранить классические нотки, которые оставил миру в наследство великий маэстро Цезарь.'),
(647, 16, '_description', 'field_612cfbabe6e77'),
(648, 16, 'composition', 'что то\r\n\r\nчто то еще\r\n\r\nчто то то еще'),
(649, 16, '_composition', 'field_612cfbfee6e78'),
(652, 16, 'data_description', 'Изюминкой «Цезаря» была, и остаётся его заправка, – особый уникальный соус.\r\n\r\nНадеемся, что наш шеф-повар сумел максимально сохранить классические нотки, которые оставил миру в наследство великий маэстро Цезарь.'),
(653, 16, '_data_description', 'field_612cfbabe6e77'),
(654, 16, 'data_composition', 'что то\r\nчто то еще\r\nчто то то еще\r\n<ul>\r\n 	<li>1</li>\r\n 	<li>2</li>\r\n 	<li>3</li>\r\n</ul>'),
(655, 16, '_data_composition', 'field_612cfbfee6e78'),
(656, 16, 'data_ralated', 'a:3:{i:0;s:2:\"22\";i:1;s:2:\"36\";i:2;s:2:\"16\";}'),
(657, 16, '_data_ralated', 'field_612cfd80007e7'),
(658, 16, 'data', ''),
(659, 16, '_data', 'field_612cfdc71c2cc'),
(661, 16, 'data_related', 'a:2:{i:0;s:2:\"22\";i:1;s:2:\"36\";}'),
(662, 16, '_data_related', 'field_612cfd80007e7'),
(665, 36, 'data_description', ''),
(666, 36, '_data_description', 'field_612cfbabe6e77'),
(667, 36, 'data_composition', ''),
(668, 36, '_data_composition', 'field_612cfbfee6e78'),
(669, 36, 'data_related', ''),
(670, 36, '_data_related', 'field_612cfd80007e7'),
(671, 36, 'data', ''),
(672, 36, '_data', 'field_612cfdc71c2cc'),
(673, 136, '_edit_last', '1'),
(674, 136, 'total_sales', '0'),
(675, 136, '_tax_status', 'taxable'),
(676, 136, '_tax_class', ''),
(677, 136, '_manage_stock', 'no'),
(678, 136, '_backorders', 'no'),
(679, 136, '_sold_individually', 'no'),
(680, 136, '_virtual', 'no'),
(681, 136, '_downloadable', 'no'),
(682, 136, '_download_limit', '-1'),
(683, 136, '_download_expiry', '-1'),
(684, 136, '_stock', NULL),
(685, 136, '_stock_status', 'instock'),
(686, 136, '_wc_average_rating', '0'),
(687, 136, '_wc_review_count', '0'),
(688, 136, '_product_version', '5.5.2'),
(689, 136, 'data_description', ''),
(690, 136, '_data_description', 'field_612cfbabe6e77'),
(691, 136, 'data_composition', ''),
(692, 136, '_data_composition', 'field_612cfbfee6e78'),
(693, 136, 'data_related', ''),
(694, 136, '_data_related', 'field_612cfd80007e7'),
(695, 136, 'data', ''),
(696, 136, '_data', 'field_612cfdc71c2cc'),
(697, 136, '_edit_lock', '1630438717:1'),
(698, 13, '_edit_last', '1'),
(1252, 157, '_order_key', 'wc_order_JGL3feqPhGpeO'),
(1253, 157, '_customer_user', '1'),
(1254, 157, '_payment_method', NULL),
(1255, 157, '_customer_ip_address', '::1'),
(1256, 157, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(1257, 157, '_created_via', 'checkout'),
(1258, 157, '_cart_hash', 'bff7e1d23c1adff2f6355dae6fcd61a6'),
(1259, 157, '_billing_email', 'burlakeugene@gmail.com'),
(1260, 157, '_order_currency', 'RUB'),
(1261, 157, '_cart_discount', '0'),
(1262, 157, '_cart_discount_tax', '0'),
(1263, 157, '_order_shipping', '0'),
(1264, 157, '_order_shipping_tax', '0'),
(1265, 157, '_order_tax', '0'),
(1266, 157, '_order_total', '16.00'),
(1267, 157, '_order_version', '5.5.2'),
(1268, 157, '_prices_include_tax', 'no'),
(1269, 157, '_billing_address_index', '         burlakeugene@gmail.com '),
(1270, 157, '_shipping_address_index', '        '),
(1271, 157, 'is_vat_exempt', 'no'),
(1272, 158, '_order_key', 'wc_order_H4t4ZO3SWQ2tM'),
(1273, 158, '_customer_user', '1'),
(1274, 158, '_payment_method', NULL),
(1275, 158, '_customer_ip_address', '::1'),
(1276, 158, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(1277, 158, '_created_via', 'checkout'),
(1278, 158, '_cart_hash', 'bff7e1d23c1adff2f6355dae6fcd61a6'),
(1279, 158, '_billing_email', 'burlakeugene@gmail.com'),
(1280, 158, '_order_currency', 'RUB'),
(1281, 158, '_cart_discount', '0'),
(1282, 158, '_cart_discount_tax', '0'),
(1283, 158, '_order_shipping', '0'),
(1284, 158, '_order_shipping_tax', '0'),
(1285, 158, '_order_tax', '0'),
(1286, 158, '_order_total', '16.00'),
(1287, 158, '_order_version', '5.5.2'),
(1288, 158, '_prices_include_tax', 'no'),
(1289, 158, '_billing_address_index', '         burlakeugene@gmail.com '),
(1290, 158, '_shipping_address_index', '        '),
(1291, 158, 'is_vat_exempt', 'no'),
(1292, 158, '_date_paid', '1631127663'),
(1293, 158, '_paid_date', '2021-09-08 22:01:03'),
(1294, 158, '_download_permissions_granted', 'yes'),
(1295, 158, '_recorded_sales', 'yes'),
(1296, 158, '_recorded_coupon_usage_counts', 'yes'),
(1297, 158, '_order_stock_reduced', 'yes'),
(1298, 158, '_new_order_email_sent', 'true'),
(1299, 158, '_edit_lock', '1631127825:1'),
(1300, 159, '_order_key', 'wc_order_oWioRXiWSnlmc'),
(1301, 159, '_customer_user', '1'),
(1302, 159, '_payment_method', NULL),
(1303, 159, '_customer_ip_address', '::1'),
(1304, 159, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(1305, 159, '_created_via', 'checkout'),
(1306, 159, '_cart_hash', '3e7a4de437d33feca30bf4c8e1459bba'),
(1307, 159, '_billing_email', 'burlakeugene@gmail.com'),
(1308, 159, '_order_currency', 'RUB'),
(1309, 159, '_cart_discount', '0'),
(1310, 159, '_cart_discount_tax', '0'),
(1311, 159, '_order_shipping', '0'),
(1312, 159, '_order_shipping_tax', '0'),
(1313, 159, '_order_tax', '0'),
(1314, 159, '_order_total', '24.00'),
(1315, 159, '_order_version', '5.5.2'),
(1316, 159, '_prices_include_tax', 'no'),
(1317, 159, '_billing_address_index', '         burlakeugene@gmail.com '),
(1318, 159, '_shipping_address_index', '        '),
(1319, 159, 'is_vat_exempt', 'no'),
(1320, 160, '_order_key', 'wc_order_dSFQEhy4IoxuE'),
(1321, 160, '_customer_user', '1'),
(1322, 160, '_payment_method', NULL),
(1323, 160, '_customer_ip_address', '::1'),
(1324, 160, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(1325, 160, '_created_via', 'checkout'),
(1326, 160, '_cart_hash', '3e7a4de437d33feca30bf4c8e1459bba'),
(1327, 160, '_billing_email', 'burlakeugene@gmail.com'),
(1328, 160, '_order_currency', 'RUB'),
(1329, 160, '_cart_discount', '0'),
(1330, 160, '_cart_discount_tax', '0'),
(1331, 160, '_order_shipping', '0'),
(1332, 160, '_order_shipping_tax', '0'),
(1333, 160, '_order_tax', '0'),
(1334, 160, '_order_total', '24.00'),
(1335, 160, '_order_version', '5.5.2'),
(1336, 160, '_prices_include_tax', 'no'),
(1337, 160, '_billing_address_index', '         burlakeugene@gmail.com '),
(1338, 160, '_shipping_address_index', '        '),
(1339, 160, 'is_vat_exempt', 'no'),
(1340, 161, '_order_key', 'wc_order_Tt9Gedn7QJx5K'),
(1341, 161, '_customer_user', '1'),
(1342, 161, '_payment_method', NULL),
(1343, 161, '_customer_ip_address', '::1'),
(1344, 161, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(1345, 161, '_created_via', 'checkout'),
(1346, 161, '_cart_hash', '3e7a4de437d33feca30bf4c8e1459bba'),
(1347, 161, '_billing_email', 'burlakeugene@gmail.com'),
(1348, 161, '_order_currency', 'RUB'),
(1349, 161, '_cart_discount', '0'),
(1350, 161, '_cart_discount_tax', '0'),
(1351, 161, '_order_shipping', '0'),
(1352, 161, '_order_shipping_tax', '0'),
(1353, 161, '_order_tax', '0'),
(1354, 161, '_order_total', '24.00'),
(1355, 161, '_order_version', '5.5.2'),
(1356, 161, '_prices_include_tax', 'no'),
(1357, 161, '_billing_address_index', '         burlakeugene@gmail.com '),
(1358, 161, '_shipping_address_index', '        '),
(1359, 161, 'is_vat_exempt', 'no'),
(1360, 162, '_order_key', 'wc_order_G9qBDIsLIPbek'),
(1361, 162, '_customer_user', '1'),
(1362, 162, '_payment_method', NULL),
(1363, 162, '_customer_ip_address', '::1'),
(1364, 162, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(1365, 162, '_created_via', 'checkout'),
(1366, 162, '_cart_hash', '3e7a4de437d33feca30bf4c8e1459bba'),
(1367, 162, '_billing_email', 'burlakeugene@gmail.com'),
(1368, 162, '_order_currency', 'RUB'),
(1369, 162, '_cart_discount', '0'),
(1370, 162, '_cart_discount_tax', '0'),
(1371, 162, '_order_shipping', '0'),
(1372, 162, '_order_shipping_tax', '0'),
(1373, 162, '_order_tax', '0'),
(1374, 162, '_order_total', '24.00'),
(1375, 162, '_order_version', '5.5.2'),
(1376, 162, '_prices_include_tax', 'no'),
(1377, 162, '_billing_address_index', '         burlakeugene@gmail.com '),
(1378, 162, '_shipping_address_index', '        '),
(1379, 162, 'is_vat_exempt', 'no'),
(1380, 162, '_date_paid', '1631127963'),
(1381, 162, '_paid_date', '2021-09-08 22:06:03'),
(1382, 162, '_download_permissions_granted', 'yes'),
(1383, 162, '_recorded_sales', 'yes'),
(1384, 162, '_recorded_coupon_usage_counts', 'yes'),
(1385, 162, '_order_stock_reduced', 'yes'),
(1386, 162, '_new_order_email_sent', 'true'),
(1387, 162, '_edit_lock', '1631127973:1'),
(1388, 163, '_order_key', 'wc_order_2Ej35n5ZY3Pwj'),
(1389, 163, '_customer_user', '0'),
(1390, 163, '_payment_method', NULL),
(1391, 163, '_customer_ip_address', '::1'),
(1392, 163, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(1393, 163, '_created_via', 'checkout'),
(1394, 163, '_cart_hash', 'ae2f70c137645c4a8091b1052a710a4d'),
(1395, 163, '_order_currency', 'RUB'),
(1396, 163, '_cart_discount', '0'),
(1397, 163, '_cart_discount_tax', '0'),
(1398, 163, '_order_shipping', '0'),
(1399, 163, '_order_shipping_tax', '0'),
(1400, 163, '_order_tax', '0'),
(1401, 163, '_order_total', '25.00'),
(1402, 163, '_order_version', '5.5.2'),
(1403, 163, '_prices_include_tax', 'no'),
(1404, 163, '_billing_address_index', '          '),
(1405, 163, '_shipping_address_index', '        '),
(1406, 163, 'is_vat_exempt', 'no'),
(1407, 163, '_date_paid', '1631128029'),
(1408, 163, '_paid_date', '2021-09-08 22:07:09'),
(1409, 163, '_download_permissions_granted', 'yes'),
(1410, 163, '_recorded_sales', 'yes'),
(1411, 163, '_recorded_coupon_usage_counts', 'yes'),
(1412, 163, '_order_stock_reduced', 'yes'),
(1413, 163, '_new_order_email_sent', 'true'),
(1414, 163, '_edit_lock', '1631127985:1'),
(1415, 164, '_order_key', 'wc_order_x90ARN0kR2DT0'),
(1416, 164, '_customer_user', '1'),
(1417, 164, '_payment_method', NULL),
(1418, 164, '_customer_ip_address', '::1'),
(1419, 164, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(1420, 164, '_created_via', 'checkout'),
(1421, 164, '_cart_hash', '640385b51ea2167b914d3421338d0e8f'),
(1422, 164, '_billing_email', 'burlakeugene@gmail.com'),
(1423, 164, '_order_currency', 'RUB'),
(1424, 164, '_cart_discount', '0'),
(1425, 164, '_cart_discount_tax', '0'),
(1426, 164, '_order_shipping', '0'),
(1427, 164, '_order_shipping_tax', '0'),
(1428, 164, '_order_tax', '0'),
(1429, 164, '_order_total', '8.00'),
(1430, 164, '_order_version', '5.5.2'),
(1431, 164, '_prices_include_tax', 'no'),
(1432, 164, '_billing_address_index', '         burlakeugene@gmail.com '),
(1433, 164, '_shipping_address_index', '        '),
(1434, 164, 'is_vat_exempt', 'no'),
(1435, 164, '_date_paid', '1631128097'),
(1436, 164, '_paid_date', '2021-09-08 22:08:17'),
(1437, 164, '_download_permissions_granted', 'yes'),
(1438, 164, '_recorded_sales', 'yes'),
(1439, 164, '_recorded_coupon_usage_counts', 'yes'),
(1440, 164, '_order_stock_reduced', 'yes'),
(1441, 164, '_new_order_email_sent', 'true'),
(1442, 164, '_edit_lock', '1631128097:1'),
(1443, 165, '_order_key', 'wc_order_uNsObEtwUjQYr'),
(1444, 165, '_customer_user', '1'),
(1445, 165, '_payment_method', NULL),
(1446, 165, '_customer_ip_address', '::1'),
(1447, 165, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(1448, 165, '_created_via', 'checkout'),
(1449, 165, '_cart_hash', '640385b51ea2167b914d3421338d0e8f'),
(1450, 165, '_billing_email', 'burlakeugene@gmail.com');
INSERT INTO `rest_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1451, 165, '_order_currency', 'RUB'),
(1452, 165, '_cart_discount', '0'),
(1453, 165, '_cart_discount_tax', '0'),
(1454, 165, '_order_shipping', '0'),
(1455, 165, '_order_shipping_tax', '0'),
(1456, 165, '_order_tax', '0'),
(1457, 165, '_order_total', '8.00'),
(1458, 165, '_order_version', '5.5.2'),
(1459, 165, '_prices_include_tax', 'no'),
(1460, 165, '_billing_address_index', '   test      burlakeugene@gmail.com '),
(1461, 165, '_shipping_address_index', '        '),
(1462, 165, 'is_vat_exempt', 'no'),
(1463, 165, '_billing_address_1', 'test'),
(1464, 165, '_date_paid', '1631128235'),
(1465, 165, '_paid_date', '2021-09-08 22:10:35'),
(1466, 165, '_download_permissions_granted', 'yes'),
(1467, 165, '_recorded_sales', 'yes'),
(1468, 165, '_recorded_coupon_usage_counts', 'yes'),
(1469, 165, '_order_stock_reduced', 'yes'),
(1470, 165, '_new_order_email_sent', 'true'),
(1471, 165, '_edit_lock', '1631128205:1'),
(1472, 166, '_order_key', 'wc_order_NM9qoVk4tHeZP'),
(1473, 166, '_customer_user', '1'),
(1474, 166, '_payment_method', NULL),
(1475, 166, '_customer_ip_address', '::1'),
(1476, 166, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(1477, 166, '_created_via', 'checkout'),
(1478, 166, '_cart_hash', '640385b51ea2167b914d3421338d0e8f'),
(1479, 166, '_billing_email', 'burlakeugene@gmail.com'),
(1480, 166, '_order_currency', 'RUB'),
(1481, 166, '_cart_discount', '0'),
(1482, 166, '_cart_discount_tax', '0'),
(1483, 166, '_order_shipping', '0'),
(1484, 166, '_order_shipping_tax', '0'),
(1485, 166, '_order_tax', '0'),
(1486, 166, '_order_total', '8.00'),
(1487, 166, '_order_version', '5.5.2'),
(1488, 166, '_prices_include_tax', 'no'),
(1489, 166, '_billing_address_index', 'Eguene   address      burlakeugene@gmail.com +7(421) 421-42-14'),
(1490, 166, '_shipping_address_index', '        '),
(1491, 166, 'is_vat_exempt', 'no'),
(1492, 166, '_billing_first_name', 'Eguene'),
(1493, 166, '_billing_address_1', 'address'),
(1494, 166, '_billing_phone', '+7(421) 421-42-14'),
(1495, 166, '_date_paid', '1631128345'),
(1496, 166, '_paid_date', '2021-09-08 22:12:25'),
(1497, 166, '_download_permissions_granted', 'yes'),
(1498, 166, '_recorded_sales', 'yes'),
(1499, 166, '_recorded_coupon_usage_counts', 'yes'),
(1500, 166, '_order_stock_reduced', 'yes'),
(1501, 166, '_new_order_email_sent', 'true'),
(1502, 166, '_edit_lock', '1631128934:1'),
(1503, 167, '_order_key', 'wc_order_Ov2Ee9cSG2IKA'),
(1504, 167, '_customer_user', '1'),
(1505, 167, '_payment_method', NULL),
(1506, 167, '_customer_ip_address', '::1'),
(1507, 167, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(1508, 167, '_created_via', 'checkout'),
(1509, 167, '_cart_hash', '640385b51ea2167b914d3421338d0e8f'),
(1510, 167, '_billing_email', 'burlakeugene@gmail.com'),
(1511, 167, '_order_currency', 'RUB'),
(1512, 167, '_cart_discount', '0'),
(1513, 167, '_cart_discount_tax', '0'),
(1514, 167, '_order_shipping', '0'),
(1515, 167, '_order_shipping_tax', '0'),
(1516, 167, '_order_tax', '0'),
(1517, 167, '_order_total', '8.00'),
(1518, 167, '_order_version', '5.5.2'),
(1519, 167, '_prices_include_tax', 'no'),
(1520, 167, '_billing_address_index', 'Eguene   address 2      burlakeugene@gmail.com +7(421) 421-42-14'),
(1521, 167, '_shipping_address_index', '        '),
(1522, 167, 'is_vat_exempt', 'no'),
(1523, 167, '_billing_first_name', 'Eguene'),
(1524, 167, '_billing_address_1', 'address 2'),
(1525, 167, '_billing_phone', '+7(421) 421-42-14'),
(1526, 167, '_date_paid', '1631129074'),
(1527, 167, '_paid_date', '2021-09-08 22:24:34'),
(1528, 167, '_download_permissions_granted', 'yes'),
(1529, 167, '_recorded_sales', 'yes'),
(1530, 167, '_recorded_coupon_usage_counts', 'yes'),
(1531, 167, '_order_stock_reduced', 'yes'),
(1532, 167, '_new_order_email_sent', 'true'),
(1533, 167, '_edit_lock', '1631128963:1'),
(1534, 168, '_order_key', 'wc_order_4OwgOKYMHIN5T'),
(1535, 168, '_customer_user', '1'),
(1536, 168, '_payment_method', NULL),
(1537, 168, '_customer_ip_address', '::1'),
(1538, 168, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(1539, 168, '_created_via', 'checkout'),
(1540, 168, '_cart_hash', '640385b51ea2167b914d3421338d0e8f'),
(1541, 168, '_billing_email', 'burlakeugene@gmail.com'),
(1542, 168, '_order_currency', 'RUB'),
(1543, 168, '_cart_discount', '0'),
(1544, 168, '_cart_discount_tax', '0'),
(1545, 168, '_order_shipping', '0'),
(1546, 168, '_order_shipping_tax', '0'),
(1547, 168, '_order_tax', '0'),
(1548, 168, '_order_total', '8.00'),
(1549, 168, '_order_version', '5.5.2'),
(1550, 168, '_prices_include_tax', 'no'),
(1551, 168, '_billing_address_index', 'Eguene   улица Гагарина, 32      burlakeugene@gmail.com +7(421) 421-42-14'),
(1552, 168, '_shipping_address_index', '        '),
(1553, 168, 'is_vat_exempt', 'no'),
(1554, 168, '_billing_first_name', 'Eguene'),
(1555, 168, '_billing_address_1', 'улица Гагарина, 32'),
(1556, 168, '_billing_phone', '+7(421) 421-42-14'),
(1557, 168, '_date_paid', '1631129103'),
(1558, 168, '_paid_date', '2021-09-08 22:25:03'),
(1559, 168, '_download_permissions_granted', 'yes'),
(1560, 168, '_recorded_sales', 'yes'),
(1561, 168, '_recorded_coupon_usage_counts', 'yes'),
(1562, 168, '_order_stock_reduced', 'yes'),
(1563, 168, '_new_order_email_sent', 'true'),
(1564, 168, '_edit_lock', '1631129694:1'),
(1565, 169, '_order_key', 'wc_order_i7OSnzBRrIbio'),
(1566, 169, '_customer_user', '1'),
(1567, 169, '_payment_method', NULL),
(1568, 169, '_customer_ip_address', '::1'),
(1569, 169, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(1570, 169, '_created_via', 'checkout'),
(1571, 169, '_cart_hash', '640385b51ea2167b914d3421338d0e8f'),
(1572, 169, '_billing_email', 'burlakeugene@gmail.com'),
(1573, 169, '_order_currency', 'RUB'),
(1574, 169, '_cart_discount', '0'),
(1575, 169, '_cart_discount_tax', '0'),
(1576, 169, '_order_shipping', '0'),
(1577, 169, '_order_shipping_tax', '0'),
(1578, 169, '_order_tax', '0'),
(1579, 169, '_order_total', '8.00'),
(1580, 169, '_order_version', '5.5.2'),
(1581, 169, '_prices_include_tax', 'no'),
(1582, 169, '_billing_address_index', 'Eguene   address      burlakeugene@gmail.com +7(421) 421-42-14'),
(1583, 169, '_shipping_address_index', '        '),
(1584, 169, 'is_vat_exempt', 'no'),
(1585, 169, '_billing_first_name', 'Eguene'),
(1586, 169, '_billing_address_1', 'address'),
(1587, 169, '_billing_phone', '+7(421) 421-42-14'),
(1588, 169, '_date_paid', '1631129833'),
(1589, 169, '_paid_date', '2021-09-08 22:37:13'),
(1590, 169, '_download_permissions_granted', 'yes'),
(1591, 169, '_recorded_sales', 'yes'),
(1592, 169, '_recorded_coupon_usage_counts', 'yes'),
(1593, 169, '_order_stock_reduced', 'yes'),
(1594, 169, '_new_order_email_sent', 'true'),
(1595, 169, '_edit_lock', '1631129785:1'),
(1596, 170, '_order_key', 'wc_order_0JQUC4GcCu7oE'),
(1597, 170, '_customer_user', '1'),
(1598, 170, '_payment_method', NULL),
(1599, 170, '_customer_ip_address', '::1'),
(1600, 170, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(1601, 170, '_created_via', 'checkout'),
(1602, 170, '_cart_hash', 'bff7e1d23c1adff2f6355dae6fcd61a6'),
(1603, 170, '_billing_email', 'burlakeugene@gmail.com'),
(1604, 170, '_order_currency', 'RUB'),
(1605, 170, '_cart_discount', '0'),
(1606, 170, '_cart_discount_tax', '0'),
(1607, 170, '_order_shipping', '0'),
(1608, 170, '_order_shipping_tax', '0'),
(1609, 170, '_order_tax', '0'),
(1610, 170, '_order_total', '16.00'),
(1611, 170, '_order_version', '5.5.2'),
(1612, 170, '_prices_include_tax', 'no'),
(1613, 170, '_billing_address_index', 'Eguene   address      burlakeugene@gmail.com +7(421) 421-42-14'),
(1614, 170, '_shipping_address_index', '        '),
(1615, 170, 'is_vat_exempt', 'no'),
(1616, 170, '_billing_first_name', 'Eguene'),
(1617, 170, '_billing_address_1', 'address'),
(1618, 170, '_billing_phone', '+7(421) 421-42-14'),
(1619, 170, '_date_paid', '1631129924'),
(1620, 170, '_paid_date', '2021-09-08 22:38:44'),
(1621, 170, '_download_permissions_granted', 'yes'),
(1622, 170, '_recorded_sales', 'yes'),
(1623, 170, '_recorded_coupon_usage_counts', 'yes'),
(1624, 170, '_order_stock_reduced', 'yes'),
(1625, 170, '_new_order_email_sent', 'true'),
(1626, 170, '_edit_lock', '1631129932:1'),
(1627, 171, '_order_key', 'wc_order_hMULSi22lbPga'),
(1628, 171, '_customer_user', '0'),
(1629, 171, '_payment_method', NULL),
(1630, 171, '_customer_ip_address', '::1'),
(1631, 171, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(1632, 171, '_created_via', 'checkout'),
(1633, 171, '_cart_hash', 'ae2f70c137645c4a8091b1052a710a4d'),
(1634, 171, '_order_currency', 'RUB'),
(1635, 171, '_cart_discount', '0'),
(1636, 171, '_cart_discount_tax', '0'),
(1637, 171, '_order_shipping', '0'),
(1638, 171, '_order_shipping_tax', '0'),
(1639, 171, '_order_tax', '0'),
(1640, 171, '_order_total', '25.00'),
(1641, 171, '_order_version', '5.5.2'),
(1642, 171, '_prices_include_tax', 'no'),
(1643, 171, '_billing_address_index', 'EUgnee   dsadsadas dsa das       +7(321) 312-32-13'),
(1644, 171, '_shipping_address_index', '        '),
(1645, 171, 'is_vat_exempt', 'no'),
(1646, 171, '_billing_first_name', 'EUgnee'),
(1647, 171, '_billing_address_1', 'dsadsadas dsa das'),
(1648, 171, '_billing_phone', '+7(321) 312-32-13'),
(1649, 171, '_date_paid', '1631130333'),
(1650, 171, '_paid_date', '2021-09-08 22:45:33'),
(1651, 171, '_download_permissions_granted', 'yes'),
(1652, 171, '_recorded_sales', 'yes'),
(1653, 171, '_recorded_coupon_usage_counts', 'yes'),
(1654, 171, '_order_stock_reduced', 'yes'),
(1655, 171, '_new_order_email_sent', 'true'),
(1656, 171, '_edit_lock', '1631131333:1'),
(1657, 173, '_order_key', 'wc_order_QP9JAavFPLXPg'),
(1658, 173, '_customer_user', '1'),
(1659, 173, '_payment_method', NULL),
(1660, 173, '_customer_ip_address', '::1'),
(1661, 173, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(1662, 173, '_created_via', 'checkout'),
(1663, 173, '_cart_hash', '640385b51ea2167b914d3421338d0e8f'),
(1664, 173, '_billing_email', 'burlakeugene@gmail.com'),
(1665, 173, '_order_currency', 'RUB'),
(1666, 173, '_cart_discount', '0'),
(1667, 173, '_cart_discount_tax', '0'),
(1668, 173, '_order_shipping', '0'),
(1669, 173, '_order_shipping_tax', '0'),
(1670, 173, '_order_tax', '0'),
(1671, 173, '_order_total', '8.00'),
(1672, 173, '_order_version', '5.5.2'),
(1673, 173, '_prices_include_tax', 'no'),
(1674, 173, '_billing_address_index', 'EUgnee   dsadsadas dsa das      burlakeugene@gmail.com +7(321) 312-32-13'),
(1675, 173, '_shipping_address_index', '        '),
(1676, 173, 'is_vat_exempt', 'no'),
(1677, 173, '_billing_first_name', 'EUgnee'),
(1678, 173, '_billing_address_1', 'dsadsadas dsa das'),
(1679, 173, '_billing_phone', '+7(321) 312-32-13'),
(1680, 173, '_date_paid', '1631131467'),
(1681, 173, '_paid_date', '2021-09-08 23:04:27'),
(1682, 173, '_download_permissions_granted', 'yes'),
(1683, 173, '_recorded_sales', 'yes'),
(1684, 173, '_recorded_coupon_usage_counts', 'yes'),
(1685, 173, '_order_stock_reduced', 'yes'),
(1686, 173, '_new_order_email_sent', 'true'),
(1687, 173, '_edit_lock', '1631131441:1'),
(1688, 174, '_order_key', 'wc_order_XeUXlPd5llnLm'),
(1689, 174, '_customer_user', '1'),
(1690, 174, '_payment_method', NULL),
(1691, 174, '_customer_ip_address', '::1'),
(1692, 174, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(1693, 174, '_created_via', 'checkout'),
(1694, 174, '_cart_hash', 'ae2f70c137645c4a8091b1052a710a4d'),
(1695, 174, '_billing_email', 'burlakeugene@gmail.com'),
(1696, 174, '_order_currency', 'RUB'),
(1697, 174, '_cart_discount', '0'),
(1698, 174, '_cart_discount_tax', '0'),
(1699, 174, '_order_shipping', '0'),
(1700, 174, '_order_shipping_tax', '0'),
(1701, 174, '_order_tax', '0'),
(1702, 174, '_order_total', '25.00'),
(1703, 174, '_order_version', '5.5.2'),
(1704, 174, '_prices_include_tax', 'no'),
(1705, 174, '_billing_address_index', 'EUgnee   dsadsadas dsa das      burlakeugene@gmail.com +7(321) 312-32-13'),
(1706, 174, '_shipping_address_index', '        '),
(1707, 174, 'is_vat_exempt', 'no'),
(1708, 174, '_billing_first_name', 'EUgnee'),
(1709, 174, '_billing_address_1', 'dsadsadas dsa das'),
(1710, 174, '_billing_phone', '+7(321) 312-32-13'),
(1711, 174, '_date_paid', '1631131574'),
(1712, 174, '_paid_date', '2021-09-08 23:06:14'),
(1713, 174, '_download_permissions_granted', 'yes'),
(1714, 174, '_recorded_sales', 'yes'),
(1715, 174, '_recorded_coupon_usage_counts', 'yes'),
(1716, 174, '_order_stock_reduced', 'yes'),
(1717, 174, '_new_order_email_sent', 'true'),
(1718, 175, '_order_key', 'wc_order_x7nYsyRs8iQ6f'),
(1719, 175, '_customer_user', '1'),
(1720, 175, '_payment_method', NULL),
(1721, 175, '_customer_ip_address', '::1'),
(1722, 175, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(1723, 175, '_created_via', 'checkout'),
(1724, 175, '_cart_hash', 'bff7e1d23c1adff2f6355dae6fcd61a6'),
(1725, 175, '_billing_email', 'burlakeugene@gmail.com'),
(1726, 175, '_order_currency', 'RUB'),
(1727, 175, '_cart_discount', '0'),
(1728, 175, '_cart_discount_tax', '0'),
(1729, 175, '_order_shipping', '0'),
(1730, 175, '_order_shipping_tax', '0'),
(1731, 175, '_order_tax', '0'),
(1732, 175, '_order_total', '16.00'),
(1733, 175, '_order_version', '5.5.2'),
(1734, 175, '_prices_include_tax', 'no'),
(1735, 175, '_billing_address_index', 'EUgnee   dsadsadas dsa das      burlakeugene@gmail.com +7(321) 312-32-13'),
(1736, 175, '_shipping_address_index', '        '),
(1737, 175, 'is_vat_exempt', 'no'),
(1738, 175, '_billing_first_name', 'EUgnee'),
(1739, 175, '_billing_address_1', 'dsadsadas dsa das'),
(1740, 175, '_billing_phone', '+7(321) 312-32-13'),
(1741, 175, '_date_paid', '1631131594'),
(1742, 175, '_paid_date', '2021-09-08 23:06:34'),
(1743, 175, '_download_permissions_granted', 'yes'),
(1744, 175, '_recorded_sales', 'yes'),
(1745, 175, '_recorded_coupon_usage_counts', 'yes'),
(1746, 175, '_order_stock_reduced', 'yes'),
(1747, 176, '_order_key', 'wc_order_vBG92mJLDKZF3'),
(1748, 176, '_customer_user', '1'),
(1749, 176, '_payment_method', NULL),
(1750, 176, '_customer_ip_address', '::1'),
(1751, 176, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(1752, 176, '_created_via', 'checkout'),
(1753, 176, '_cart_hash', 'bff7e1d23c1adff2f6355dae6fcd61a6'),
(1754, 176, '_billing_email', 'burlakeugene@gmail.com'),
(1755, 176, '_order_currency', 'RUB'),
(1756, 176, '_cart_discount', '0'),
(1757, 176, '_cart_discount_tax', '0'),
(1758, 176, '_order_shipping', '0'),
(1759, 176, '_order_shipping_tax', '0'),
(1760, 176, '_order_tax', '0'),
(1761, 176, '_order_total', '16.00'),
(1762, 176, '_order_version', '5.5.2'),
(1763, 176, '_prices_include_tax', 'no'),
(1764, 176, '_billing_address_index', 'EUgnee   dsadsadas dsa das      burlakeugene@gmail.com +7(321) 312-32-13'),
(1765, 176, '_shipping_address_index', '        '),
(1766, 176, 'is_vat_exempt', 'no'),
(1767, 175, '_new_order_email_sent', 'true'),
(1768, 176, '_billing_first_name', 'EUgnee'),
(1769, 176, '_billing_address_1', 'dsadsadas dsa das'),
(1770, 176, '_billing_phone', '+7(321) 312-32-13'),
(1771, 176, '_date_paid', '1631131595'),
(1772, 176, '_paid_date', '2021-09-08 23:06:35'),
(1773, 176, '_download_permissions_granted', 'yes'),
(1774, 176, '_recorded_sales', 'yes'),
(1775, 176, '_recorded_coupon_usage_counts', 'yes'),
(1776, 176, '_order_stock_reduced', 'yes'),
(1777, 177, '_order_key', 'wc_order_cNwyO79wpkB6g'),
(1778, 177, '_customer_user', '1'),
(1779, 177, '_payment_method', NULL),
(1780, 177, '_customer_ip_address', '::1'),
(1781, 177, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(1782, 177, '_created_via', 'checkout'),
(1783, 177, '_cart_hash', 'bff7e1d23c1adff2f6355dae6fcd61a6'),
(1784, 177, '_billing_email', 'burlakeugene@gmail.com'),
(1785, 177, '_order_currency', 'RUB'),
(1786, 177, '_cart_discount', '0'),
(1787, 177, '_cart_discount_tax', '0'),
(1788, 177, '_order_shipping', '0'),
(1789, 177, '_order_shipping_tax', '0'),
(1790, 177, '_order_tax', '0'),
(1791, 177, '_order_total', '16.00'),
(1792, 177, '_order_version', '5.5.2'),
(1793, 177, '_prices_include_tax', 'no'),
(1794, 177, '_billing_address_index', 'EUgnee   dsadsadas dsa das      burlakeugene@gmail.com +7(321) 312-32-13'),
(1795, 177, '_shipping_address_index', '        '),
(1796, 177, 'is_vat_exempt', 'no'),
(1797, 176, '_new_order_email_sent', 'true'),
(1798, 177, '_billing_first_name', 'EUgnee'),
(1799, 177, '_billing_address_1', 'dsadsadas dsa das'),
(1800, 177, '_billing_phone', '+7(321) 312-32-13'),
(1801, 177, '_date_paid', '1631131595'),
(1802, 177, '_paid_date', '2021-09-08 23:06:35'),
(1803, 177, '_download_permissions_granted', 'yes'),
(1804, 177, '_recorded_sales', 'yes'),
(1805, 177, '_recorded_coupon_usage_counts', 'yes'),
(1806, 177, '_order_stock_reduced', 'yes'),
(1807, 178, '_order_key', 'wc_order_D5YZfuSFdguD7'),
(1808, 178, '_customer_user', '1'),
(1809, 178, '_payment_method', NULL),
(1810, 178, '_customer_ip_address', '::1'),
(1811, 178, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(1812, 178, '_created_via', 'checkout'),
(1813, 178, '_billing_email', 'burlakeugene@gmail.com'),
(1814, 178, '_order_currency', 'RUB'),
(1815, 178, '_cart_discount', '0'),
(1816, 178, '_cart_discount_tax', '0'),
(1817, 178, '_order_shipping', '0'),
(1818, 178, '_order_shipping_tax', '0'),
(1819, 178, '_order_tax', '0'),
(1820, 178, '_order_total', '0.00'),
(1821, 178, '_order_version', '5.5.2'),
(1822, 178, '_prices_include_tax', 'no'),
(1823, 178, '_billing_address_index', 'EUgnee   dsadsadas dsa das      burlakeugene@gmail.com +7(321) 312-32-13'),
(1824, 178, '_shipping_address_index', '        '),
(1825, 178, 'is_vat_exempt', 'no'),
(1826, 178, '_billing_first_name', 'EUgnee'),
(1827, 178, '_billing_address_1', 'dsadsadas dsa das'),
(1828, 178, '_billing_phone', '+7(321) 312-32-13'),
(1829, 177, '_new_order_email_sent', 'true'),
(1830, 178, '_date_completed', '1631131595'),
(1831, 178, '_date_paid', '1631131595'),
(1832, 178, '_paid_date', '2021-09-08 23:06:35'),
(1833, 178, '_completed_date', '2021-09-08 23:06:35'),
(1834, 178, '_download_permissions_granted', 'yes'),
(1835, 178, '_recorded_sales', 'yes'),
(1836, 178, '_recorded_coupon_usage_counts', 'yes'),
(1837, 178, '_order_stock_reduced', 'yes'),
(1838, 179, '_order_key', 'wc_order_GHfaGlQVGjH1f'),
(1839, 179, '_customer_user', '1'),
(1840, 179, '_payment_method', NULL),
(1841, 179, '_customer_ip_address', '::1'),
(1842, 179, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(1843, 179, '_created_via', 'checkout'),
(1844, 179, '_billing_email', 'burlakeugene@gmail.com'),
(1845, 179, '_order_currency', 'RUB'),
(1846, 179, '_cart_discount', '0'),
(1847, 179, '_cart_discount_tax', '0'),
(1848, 179, '_order_shipping', '0'),
(1849, 179, '_order_shipping_tax', '0'),
(1850, 179, '_order_tax', '0'),
(1851, 179, '_order_total', '0.00'),
(1852, 179, '_order_version', '5.5.2'),
(1853, 179, '_prices_include_tax', 'no'),
(1854, 179, '_billing_address_index', 'EUgnee   dsadsadas dsa das      burlakeugene@gmail.com +7(321) 312-32-13'),
(1855, 179, '_shipping_address_index', '        '),
(1856, 179, 'is_vat_exempt', 'no'),
(1857, 178, '_new_order_email_sent', 'true'),
(1858, 179, '_billing_first_name', 'EUgnee'),
(1859, 179, '_billing_address_1', 'dsadsadas dsa das'),
(1860, 179, '_billing_phone', '+7(321) 312-32-13'),
(1861, 179, '_date_completed', '1631131595'),
(1862, 179, '_date_paid', '1631131595'),
(1863, 179, '_paid_date', '2021-09-08 23:06:35'),
(1864, 179, '_completed_date', '2021-09-08 23:06:35'),
(1865, 179, '_download_permissions_granted', 'yes'),
(1866, 179, '_recorded_sales', 'yes'),
(1867, 179, '_recorded_coupon_usage_counts', 'yes'),
(1868, 179, '_order_stock_reduced', 'yes'),
(1869, 180, '_order_key', 'wc_order_Ng9XysBRRxfqZ'),
(1870, 180, '_customer_user', '1'),
(1871, 180, '_payment_method', NULL),
(1872, 180, '_customer_ip_address', '::1'),
(1873, 180, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(1874, 180, '_created_via', 'checkout'),
(1875, 180, '_billing_email', 'burlakeugene@gmail.com'),
(1876, 180, '_order_currency', 'RUB'),
(1877, 180, '_cart_discount', '0'),
(1878, 180, '_cart_discount_tax', '0'),
(1879, 180, '_order_shipping', '0'),
(1880, 180, '_order_shipping_tax', '0'),
(1881, 180, '_order_tax', '0'),
(1882, 180, '_order_total', '0.00'),
(1883, 180, '_order_version', '5.5.2'),
(1884, 180, '_prices_include_tax', 'no'),
(1885, 180, '_billing_address_index', 'EUgnee   dsadsadas dsa das      burlakeugene@gmail.com +7(321) 312-32-13'),
(1886, 180, '_shipping_address_index', '        '),
(1887, 180, 'is_vat_exempt', 'no'),
(1888, 180, '_billing_first_name', 'EUgnee'),
(1889, 180, '_billing_address_1', 'dsadsadas dsa das'),
(1890, 180, '_billing_phone', '+7(321) 312-32-13'),
(1891, 180, '_date_completed', '1631131595'),
(1892, 180, '_date_paid', '1631131595'),
(1893, 179, '_new_order_email_sent', 'true'),
(1894, 180, '_paid_date', '2021-09-08 23:06:35'),
(1895, 180, '_completed_date', '2021-09-08 23:06:35'),
(1896, 180, '_download_permissions_granted', 'yes'),
(1897, 180, '_recorded_sales', 'yes'),
(1898, 180, '_recorded_coupon_usage_counts', 'yes'),
(1899, 180, '_order_stock_reduced', 'yes'),
(1900, 180, '_new_order_email_sent', 'true'),
(1901, 177, '_edit_lock', '1631131501:1'),
(1902, 181, '_order_key', 'wc_order_ioDIxfBPWk9UQ'),
(1903, 181, '_customer_user', '1'),
(1904, 181, '_payment_method', NULL),
(1905, 181, '_customer_ip_address', '::1'),
(1906, 181, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(1907, 181, '_created_via', 'checkout'),
(1908, 181, '_cart_hash', '6aabc6134261cd73ab6a4f95bfd22d05'),
(1909, 181, '_billing_email', 'burlakeugene@gmail.com'),
(1910, 181, '_order_currency', 'RUB'),
(1911, 181, '_cart_discount', '0'),
(1912, 181, '_cart_discount_tax', '0'),
(1913, 181, '_order_shipping', '0'),
(1914, 181, '_order_shipping_tax', '0'),
(1915, 181, '_order_tax', '0'),
(1916, 181, '_order_total', '17.00'),
(1917, 181, '_order_version', '5.5.2'),
(1918, 181, '_prices_include_tax', 'no'),
(1919, 181, '_billing_address_index', 'EUgnee   dsadsadas dsa das      burlakeugene@gmail.com +7(321) 312-32-13'),
(1920, 181, '_shipping_address_index', '        '),
(1921, 181, 'is_vat_exempt', 'no'),
(1922, 181, '_billing_first_name', 'EUgnee'),
(1923, 181, '_billing_address_1', 'dsadsadas dsa das'),
(1924, 181, '_billing_phone', '+7(321) 312-32-13'),
(1925, 181, '_date_paid', '1631131794'),
(1926, 181, '_paid_date', '2021-09-08 23:09:54'),
(1927, 181, '_download_permissions_granted', 'yes'),
(1928, 181, '_recorded_sales', 'yes'),
(1929, 181, '_recorded_coupon_usage_counts', 'yes'),
(1930, 181, '_order_stock_reduced', 'yes'),
(1931, 181, '_new_order_email_sent', 'true'),
(1932, 182, '_order_key', 'wc_order_Pgj2BmPzEbJdS'),
(1933, 182, '_customer_user', '1'),
(1934, 182, '_payment_method', NULL),
(1935, 182, '_customer_ip_address', '::1'),
(1936, 182, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(1937, 182, '_created_via', 'checkout'),
(1938, 182, '_cart_hash', '640385b51ea2167b914d3421338d0e8f'),
(1939, 182, '_billing_email', 'burlakeugene@gmail.com'),
(1940, 182, '_order_currency', 'RUB'),
(1941, 182, '_cart_discount', '0'),
(1942, 182, '_cart_discount_tax', '0'),
(1943, 182, '_order_shipping', '0'),
(1944, 182, '_order_shipping_tax', '0'),
(1945, 182, '_order_tax', '0'),
(1946, 182, '_order_total', '8.00'),
(1947, 182, '_order_version', '5.5.2'),
(1948, 182, '_prices_include_tax', 'no'),
(1949, 182, '_billing_address_index', 'EUgnee   dsadsadas dsa das      burlakeugene@gmail.com +7(321) 312-32-13'),
(1950, 182, '_shipping_address_index', '        '),
(1951, 182, 'is_vat_exempt', 'no'),
(1952, 182, '_billing_first_name', 'EUgnee'),
(1953, 182, '_billing_address_1', 'dsadsadas dsa das'),
(1954, 182, '_billing_phone', '+7(321) 312-32-13'),
(1955, 182, '_date_paid', '1631131813'),
(1956, 182, '_paid_date', '2021-09-08 23:10:13'),
(1957, 182, '_download_permissions_granted', 'yes'),
(1958, 182, '_recorded_sales', 'yes'),
(1959, 182, '_recorded_coupon_usage_counts', 'yes'),
(1960, 182, '_order_stock_reduced', 'yes'),
(1961, 182, '_new_order_email_sent', 'true'),
(1962, 183, '_order_key', 'wc_order_WwSIpQq1La52i'),
(1963, 183, '_customer_user', '1'),
(1964, 183, '_payment_method', NULL),
(1965, 183, '_customer_ip_address', '::1'),
(1966, 183, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(1967, 183, '_created_via', 'checkout'),
(1968, 183, '_cart_hash', 'bff7e1d23c1adff2f6355dae6fcd61a6'),
(1969, 183, '_billing_email', 'burlakeugene@gmail.com'),
(1970, 183, '_order_currency', 'RUB'),
(1971, 183, '_cart_discount', '0'),
(1972, 183, '_cart_discount_tax', '0'),
(1973, 183, '_order_shipping', '0'),
(1974, 183, '_order_shipping_tax', '0'),
(1975, 183, '_order_tax', '0'),
(1976, 183, '_order_total', '16.00'),
(1977, 183, '_order_version', '5.5.2'),
(1978, 183, '_prices_include_tax', 'no'),
(1979, 183, '_billing_address_index', 'EUgnee   dsadsadas dsa das      burlakeugene@gmail.com +7(321) 312-32-13'),
(1980, 183, '_shipping_address_index', '        '),
(1981, 183, 'is_vat_exempt', 'no'),
(1982, 183, '_billing_first_name', 'EUgnee'),
(1983, 183, '_billing_address_1', 'dsadsadas dsa das'),
(1984, 183, '_billing_phone', '+7(321) 312-32-13'),
(1985, 183, '_date_paid', '1631131871'),
(1986, 183, '_paid_date', '2021-09-08 23:11:11'),
(1987, 183, '_download_permissions_granted', 'yes'),
(1988, 183, '_recorded_sales', 'yes'),
(1989, 183, '_recorded_coupon_usage_counts', 'yes'),
(1990, 183, '_order_stock_reduced', 'yes'),
(1991, 183, '_new_order_email_sent', 'true'),
(1992, 184, '_order_key', 'wc_order_vkBIiSAyH3is7'),
(1993, 184, '_customer_user', '1'),
(1994, 184, '_payment_method', NULL),
(1995, 184, '_customer_ip_address', '::1'),
(1996, 184, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(1997, 184, '_created_via', 'checkout'),
(1998, 184, '_cart_hash', '6aabc6134261cd73ab6a4f95bfd22d05'),
(1999, 184, '_billing_email', 'burlakeugene@gmail.com'),
(2000, 184, '_order_currency', 'RUB'),
(2001, 184, '_cart_discount', '0'),
(2002, 184, '_cart_discount_tax', '0'),
(2003, 184, '_order_shipping', '0'),
(2004, 184, '_order_shipping_tax', '0'),
(2005, 184, '_order_tax', '0'),
(2006, 184, '_order_total', '17.00'),
(2007, 184, '_order_version', '5.5.2'),
(2008, 184, '_prices_include_tax', 'no'),
(2009, 184, '_billing_address_index', 'EUgnee   dsadsadas dsa das      burlakeugene@gmail.com +7(321) 312-32-13'),
(2010, 184, '_shipping_address_index', '        '),
(2011, 184, 'is_vat_exempt', 'no'),
(2012, 184, '_billing_first_name', 'EUgnee'),
(2013, 184, '_billing_address_1', 'dsadsadas dsa das'),
(2014, 184, '_billing_phone', '+7(321) 312-32-13'),
(2015, 184, '_date_paid', '1631131933'),
(2016, 184, '_paid_date', '2021-09-08 23:12:13'),
(2017, 184, '_download_permissions_granted', 'yes'),
(2018, 184, '_recorded_sales', 'yes'),
(2019, 184, '_recorded_coupon_usage_counts', 'yes'),
(2020, 184, '_order_stock_reduced', 'yes'),
(2021, 184, '_new_order_email_sent', 'true'),
(2022, 184, '_edit_lock', '1631131860:1'),
(2023, 185, '_order_key', 'wc_order_lI9AobpCCRZCO'),
(2024, 185, '_customer_user', '1'),
(2025, 185, '_payment_method', NULL),
(2026, 185, '_customer_ip_address', '::1'),
(2027, 185, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(2028, 185, '_created_via', 'checkout'),
(2029, 185, '_cart_hash', 'bff7e1d23c1adff2f6355dae6fcd61a6'),
(2030, 185, '_billing_email', 'burlakeugene@gmail.com'),
(2031, 185, '_order_currency', 'RUB'),
(2032, 185, '_cart_discount', '0'),
(2033, 185, '_cart_discount_tax', '0'),
(2034, 185, '_order_shipping', '0'),
(2035, 185, '_order_shipping_tax', '0'),
(2036, 185, '_order_tax', '0'),
(2037, 185, '_order_total', '16.00'),
(2038, 185, '_order_version', '5.5.2'),
(2039, 185, '_prices_include_tax', 'no'),
(2040, 185, '_billing_address_index', 'EUgnee   new address 2      burlakeugene@gmail.com +7(321) 312-32-13'),
(2041, 185, '_shipping_address_index', '        '),
(2042, 185, 'is_vat_exempt', 'no'),
(2043, 185, '_billing_first_name', 'EUgnee'),
(2044, 185, '_billing_address_1', 'new address 2'),
(2045, 185, '_billing_phone', '+7(321) 312-32-13'),
(2046, 185, '_date_paid', '1631131998'),
(2047, 185, '_paid_date', '2021-09-08 23:13:18'),
(2048, 185, '_download_permissions_granted', 'yes'),
(2049, 185, '_recorded_sales', 'yes'),
(2050, 185, '_recorded_coupon_usage_counts', 'yes'),
(2051, 185, '_order_stock_reduced', 'yes'),
(2052, 185, '_new_order_email_sent', 'true'),
(2053, 185, '_edit_lock', '1631132302:1'),
(2054, 186, '_order_key', 'wc_order_NhHQxIBaSyrXa'),
(2055, 186, '_customer_user', '1'),
(2056, 186, '_payment_method', NULL),
(2057, 186, '_customer_ip_address', '::1'),
(2058, 186, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(2059, 186, '_created_via', 'checkout'),
(2060, 186, '_cart_hash', '640385b51ea2167b914d3421338d0e8f'),
(2061, 186, '_billing_email', 'burlakeugene@gmail.com'),
(2062, 186, '_order_currency', 'RUB'),
(2063, 186, '_cart_discount', '0'),
(2064, 186, '_cart_discount_tax', '0'),
(2065, 186, '_order_shipping', '0'),
(2066, 186, '_order_shipping_tax', '0'),
(2067, 186, '_order_tax', '0'),
(2068, 186, '_order_total', '8.00'),
(2069, 186, '_order_version', '5.5.2'),
(2070, 186, '_prices_include_tax', 'no'),
(2071, 186, '_billing_address_index', 'EUgnee   new address243232      burlakeugene@gmail.com +7(321) 312-32-13'),
(2072, 186, '_shipping_address_index', '        '),
(2073, 186, 'is_vat_exempt', 'no'),
(2074, 186, '_billing_first_name', 'EUgnee'),
(2075, 186, '_billing_address_1', 'new address243232'),
(2076, 186, '_billing_phone', '+7(321) 312-32-13'),
(2077, 186, '_date_paid', '1631132134'),
(2078, 186, '_paid_date', '2021-09-08 23:15:34'),
(2079, 186, '_download_permissions_granted', 'yes'),
(2080, 186, '_recorded_sales', 'yes'),
(2081, 186, '_recorded_coupon_usage_counts', 'yes'),
(2082, 186, '_order_stock_reduced', 'yes'),
(2083, 186, '_new_order_email_sent', 'true'),
(2084, 187, '_order_key', 'wc_order_nGFqv6YrQsT6J'),
(2085, 187, '_customer_user', '1'),
(2086, 187, '_payment_method', NULL),
(2087, 187, '_customer_ip_address', '::1'),
(2088, 187, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(2089, 187, '_created_via', 'checkout'),
(2090, 187, '_cart_hash', 'a4afab7e2e09353b81d57dfb8d283097'),
(2091, 187, '_billing_email', 'burlakeugene@gmail.com'),
(2092, 187, '_order_currency', 'RUB'),
(2093, 187, '_cart_discount', '0'),
(2094, 187, '_cart_discount_tax', '0'),
(2095, 187, '_order_shipping', '0'),
(2096, 187, '_order_shipping_tax', '0'),
(2097, 187, '_order_tax', '0'),
(2098, 187, '_order_total', '25.00'),
(2099, 187, '_order_version', '5.5.2'),
(2100, 187, '_prices_include_tax', 'no'),
(2101, 187, '_billing_address_index', 'EUgnee   test address      burlakeugene@gmail.com +7(321) 312-32-13'),
(2102, 187, '_shipping_address_index', '        '),
(2103, 187, 'is_vat_exempt', 'no'),
(2104, 187, '_billing_first_name', 'EUgnee'),
(2105, 187, '_billing_address_1', 'test address'),
(2106, 187, '_billing_phone', '+7(321) 312-32-13'),
(2107, 187, '_date_paid', '1631132440'),
(2108, 187, '_paid_date', '2021-09-08 23:20:40'),
(2109, 187, '_download_permissions_granted', 'yes'),
(2110, 187, '_recorded_sales', 'yes'),
(2111, 187, '_recorded_coupon_usage_counts', 'yes'),
(2112, 187, '_order_stock_reduced', 'yes'),
(2113, 187, '_new_order_email_sent', 'true'),
(2114, 187, '_edit_lock', '1631167711:1'),
(2115, 188, '_wp_attached_file', '2021/09/cropped-sov-pelm-1-2-1.png'),
(2116, 188, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:102;s:6:\"height\";i:102;s:4:\"file\";s:34:\"2021/09/cropped-sov-pelm-1-2-1.png\";s:5:\"sizes\";a:6:{s:4:\"lazy\";a:4:{s:4:\"file\";s:32:\"cropped-sov-pelm-1-2-1-50x50.png\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"lazy-square\";a:4:{s:4:\"file\";s:32:\"cropped-sov-pelm-1-2-1-50x50.png\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"product-rect-lazy\";a:4:{s:4:\"file\";s:32:\"cropped-sov-pelm-1-2-1-30x20.png\";s:5:\"width\";i:30;s:6:\"height\";i:20;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"news-rect-lazy\";a:4:{s:4:\"file\";s:32:\"cropped-sov-pelm-1-2-1-30x20.png\";s:5:\"width\";i:30;s:6:\"height\";i:20;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"cropped-sov-pelm-1-2-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"cropped-sov-pelm-1-2-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2125, 191, '_order_key', 'wc_order_56nbtLFcodOJG'),
(2126, 191, '_customer_user', '1'),
(2127, 191, '_payment_method', NULL),
(2128, 191, '_customer_ip_address', '::1'),
(2129, 191, '_customer_user_agent', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4603.0 Safari/537.36'),
(2130, 191, '_created_via', 'checkout'),
(2131, 191, '_cart_hash', '2e64990ecd98ec95d60c1b5831883497'),
(2132, 191, '_billing_email', 'burlakeugene@gmail.com'),
(2133, 191, '_order_currency', 'RUB'),
(2134, 191, '_cart_discount', '0'),
(2135, 191, '_cart_discount_tax', '0'),
(2136, 191, '_order_shipping', '0'),
(2137, 191, '_order_shipping_tax', '0'),
(2138, 191, '_order_tax', '0'),
(2139, 191, '_order_total', '57.00'),
(2140, 191, '_order_version', '5.5.2'),
(2141, 191, '_prices_include_tax', 'no'),
(2142, 191, '_billing_address_index', 'dsadsa   улица Гагарина, 31      burlakeugene@gmail.com +7(321) 321-32-13'),
(2143, 191, '_shipping_address_index', '        '),
(2144, 191, 'is_vat_exempt', 'no'),
(2145, 191, '_billing_first_name', 'dsadsa'),
(2146, 191, '_billing_address_1', 'улица Гагарина, 31'),
(2147, 191, '_billing_phone', '+7(321) 321-32-13'),
(2148, 191, '_date_paid', '1631403888'),
(2149, 191, '_paid_date', '2021-09-12 02:44:48'),
(2150, 191, '_download_permissions_granted', 'yes'),
(2151, 191, '_recorded_sales', 'yes'),
(2152, 191, '_recorded_coupon_usage_counts', 'yes'),
(2153, 191, '_order_stock_reduced', 'yes'),
(2154, 191, '_new_order_email_sent', 'true'),
(2155, 192, '_wp_attached_file', '2021/09/cropped-sov-pelm-1-2-2-1.png'),
(2156, 192, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:524;s:6:\"height\";i:90;s:4:\"file\";s:36:\"2021/09/cropped-sov-pelm-1-2-2-1.png\";s:5:\"sizes\";a:13:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"cropped-sov-pelm-1-2-2-1-300x52.png\";s:5:\"width\";i:300;s:6:\"height\";i:52;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"cropped-sov-pelm-1-2-2-1-150x90.png\";s:5:\"width\";i:150;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:4:\"lazy\";a:4:{s:4:\"file\";s:33:\"cropped-sov-pelm-1-2-2-1-50x9.png\";s:5:\"width\";i:50;s:6:\"height\";i:9;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"lazy-square\";a:4:{s:4:\"file\";s:34:\"cropped-sov-pelm-1-2-2-1-50x50.png\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"product-square\";a:4:{s:4:\"file\";s:35:\"cropped-sov-pelm-1-2-2-1-120x90.png\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"product-rect-lazy\";a:4:{s:4:\"file\";s:34:\"cropped-sov-pelm-1-2-2-1-30x20.png\";s:5:\"width\";i:30;s:6:\"height\";i:20;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"news-rect-lazy\";a:4:{s:4:\"file\";s:34:\"cropped-sov-pelm-1-2-2-1-30x20.png\";s:5:\"width\";i:30;s:6:\"height\";i:20;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"news-rect\";a:4:{s:4:\"file\";s:35:\"cropped-sov-pelm-1-2-2-1-360x90.png\";s:5:\"width\";i:360;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"cropped-sov-pelm-1-2-2-1-300x90.png\";s:5:\"width\";i:300;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"cropped-sov-pelm-1-2-2-1-100x90.png\";s:5:\"width\";i:100;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:35:\"cropped-sov-pelm-1-2-2-1-300x90.png\";s:5:\"width\";i:300;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"cropped-sov-pelm-1-2-2-1-100x90.png\";s:5:\"width\";i:100;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"product-rect\";a:4:{s:4:\"file\";s:35:\"cropped-sov-pelm-1-2-2-1-300x90.png\";s:5:\"width\";i:300;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2159, 194, '_wp_attached_file', '2021/09/cropped-sov-pelm-1-2-2-2.png'),
(2160, 194, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:87;s:6:\"height\";i:90;s:4:\"file\";s:36:\"2021/09/cropped-sov-pelm-1-2-2-2.png\";s:5:\"sizes\";a:4:{s:4:\"lazy\";a:4:{s:4:\"file\";s:34:\"cropped-sov-pelm-1-2-2-2-48x50.png\";s:5:\"width\";i:48;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"lazy-square\";a:4:{s:4:\"file\";s:34:\"cropped-sov-pelm-1-2-2-2-50x50.png\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"product-rect-lazy\";a:4:{s:4:\"file\";s:34:\"cropped-sov-pelm-1-2-2-2-30x20.png\";s:5:\"width\";i:30;s:6:\"height\";i:20;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"news-rect-lazy\";a:4:{s:4:\"file\";s:34:\"cropped-sov-pelm-1-2-2-2-30x20.png\";s:5:\"width\";i:30;s:6:\"height\";i:20;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2161, 194, '_wp_attachment_custom_header_last_used_burlak', '1631562853'),
(2162, 194, '_wp_attachment_is_custom_header', 'burlak'),
(2163, 195, '_wp_attached_file', '2021/08/2.jpeg'),
(2164, 195, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1282;s:4:\"file\";s:14:\"2021/08/2.jpeg\";s:5:\"sizes\";a:20:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"2-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"2-1024x684.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"2-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"2-768x513.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"2-1536x1026.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1026;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"lazy\";a:4:{s:4:\"file\";s:12:\"2-50x33.jpeg\";s:5:\"width\";i:50;s:6:\"height\";i:33;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"lazy-square\";a:4:{s:4:\"file\";s:12:\"2-50x50.jpeg\";s:5:\"width\";i:50;s:6:\"height\";i:50;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"product-square\";a:4:{s:4:\"file\";s:14:\"2-120x120.jpeg\";s:5:\"width\";i:120;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"product-rect-lazy\";a:4:{s:4:\"file\";s:12:\"2-30x20.jpeg\";s:5:\"width\";i:30;s:6:\"height\";i:20;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"product-rect\";a:4:{s:4:\"file\";s:14:\"2-700x500.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:500;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"news-rect-lazy\";a:4:{s:4:\"file\";s:12:\"2-30x20.jpeg\";s:5:\"width\";i:30;s:6:\"height\";i:20;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"news-rect\";a:4:{s:4:\"file\";s:14:\"2-360x220.jpeg\";s:5:\"width\";i:360;s:6:\"height\";i:220;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"2-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"2-600x401.jpeg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"2-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"2-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"2-600x401.jpeg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"2-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"product-rect_old_600x400\";a:4:{s:4:\"file\";s:14:\"2-600x400.jpeg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:24:\"product-rect_old_300x200\";a:4:{s:4:\"file\";s:14:\"2-300x200.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(2165, 22, '_stock', NULL),
(2166, 22, 'data_description', ''),
(2167, 22, '_data_description', 'field_612cfbabe6e77'),
(2168, 22, 'data_composition', ''),
(2169, 22, '_data_composition', 'field_612cfbfee6e78'),
(2170, 22, 'data_related', ''),
(2171, 22, '_data_related', 'field_612cfd80007e7'),
(2172, 22, 'data', ''),
(2173, 22, '_data', 'field_612cfdc71c2cc'),
(2174, 100, 'tabs_0_title', 'Условия доставки'),
(2175, 100, '_tabs_0_title', 'field_61c5d6b1847af'),
(2176, 100, 'tabs_0_blocks_0_title', 'Условия доставки'),
(2177, 100, '_tabs_0_blocks_0_title', 'field_61c5d6ea847b1'),
(2178, 100, 'tabs_0_blocks_0_items_0_icon', '113'),
(2179, 100, '_tabs_0_blocks_0_items_0_icon', 'field_61c5d706847b3'),
(2180, 100, 'tabs_0_blocks_0_items_0_label', 'Бесплатная доставка при заказе от 1500 рублей.'),
(2181, 100, '_tabs_0_blocks_0_items_0_label', 'field_61c5d745847b4'),
(2182, 100, 'tabs_0_blocks_0_items_0_text', ''),
(2183, 100, '_tabs_0_blocks_0_items_0_text', 'field_61c5d75f847b5'),
(2184, 100, 'tabs_0_blocks_0_items', '2'),
(2185, 100, '_tabs_0_blocks_0_items', 'field_61c5d6f8847b2'),
(2186, 100, 'tabs_0_blocks', '1'),
(2187, 100, '_tabs_0_blocks', 'field_61c5d6c0847b0'),
(2188, 100, 'tabs', '1'),
(2189, 100, '_tabs', 'field_61c5d69f847ae'),
(2190, 204, 'block_0_title', 'Условия доставки'),
(2191, 204, '_block_0_title', 'field_6129041285397'),
(2192, 204, 'block_0_items_0_icon', '113'),
(2193, 204, '_block_0_items_0_icon', 'field_6129043385399'),
(2194, 204, 'block_0_items_0_text', 'Бесплатная доставка при заказе от 1500 рублей.'),
(2195, 204, '_block_0_items_0_text', 'field_612904488539a'),
(2196, 204, 'block_0_items_1_icon', '114'),
(2197, 204, '_block_0_items_1_icon', 'field_6129043385399'),
(2198, 204, 'block_0_items_1_text', 'Сумма минимального заказа – 950 рублей'),
(2199, 204, '_block_0_items_1_text', 'field_612904488539a'),
(2200, 204, 'block_0_items', '4'),
(2201, 204, '_block_0_items', 'field_6129041e85398'),
(2202, 204, 'block', '4'),
(2203, 204, '_block', 'field_612903d885396'),
(2204, 204, 'block_0_items_2_icon', '116'),
(2205, 204, '_block_0_items_2_icon', 'field_6129043385399'),
(2206, 204, 'block_0_items_2_text', 'Доставка осуществляется\r\nв пределах Симферополя\r\nс 10:00 до 22:00'),
(2207, 204, '_block_0_items_2_text', 'field_612904488539a'),
(2208, 204, 'block_0_items_3_icon', '117'),
(2209, 204, '_block_0_items_3_icon', 'field_6129043385399'),
(2210, 204, 'block_0_items_3_text', 'Заказы на доставку день\r\nв день принимаются\r\nс 10:00 до 21:00'),
(2211, 204, '_block_0_items_3_text', 'field_612904488539a'),
(2212, 204, 'block_1_title', 'Заказ можно сделать несколькими способами'),
(2213, 204, '_block_1_title', 'field_6129041285397'),
(2214, 204, 'block_1_items_0_icon', '118'),
(2215, 204, '_block_1_items_0_icon', 'field_6129043385399'),
(2216, 204, 'block_1_items_0_text', 'Сделать заказ и оформить на нашем сайте'),
(2217, 204, '_block_1_items_0_text', 'field_612904488539a'),
(2218, 204, 'block_1_items_1_icon', '119'),
(2219, 204, '_block_1_items_1_icon', 'field_6129043385399'),
(2220, 204, 'block_1_items_1_text', 'В режиме телефонного звонке с менеджером'),
(2221, 204, '_block_1_items_1_text', 'field_612904488539a'),
(2222, 204, 'block_1_items', '2'),
(2223, 204, '_block_1_items', 'field_6129041e85398'),
(2224, 204, 'block_2_title', 'Оплата заказа'),
(2225, 204, '_block_2_title', 'field_6129041285397'),
(2226, 204, 'block_2_items_0_icon', '120'),
(2227, 204, '_block_2_items_0_icon', 'field_6129043385399'),
(2228, 204, 'block_2_items_0_text', 'Вы можете оплатить наличными курьеру'),
(2229, 204, '_block_2_items_0_text', 'field_612904488539a'),
(2230, 204, 'block_2_items_1_icon', '121'),
(2231, 204, '_block_2_items_1_icon', 'field_6129043385399'),
(2232, 204, 'block_2_items_1_text', 'Так же есть возможность осуществить оплату при самовывозе'),
(2233, 204, '_block_2_items_1_text', 'field_612904488539a'),
(2234, 204, 'block_2_items', '2'),
(2235, 204, '_block_2_items', 'field_6129041e85398'),
(2236, 204, 'block_3_title', 'Доставка ко времени'),
(2237, 204, '_block_3_title', 'field_6129041285397'),
(2238, 204, 'block_3_items_0_icon', '122'),
(2239, 204, '_block_3_items_0_icon', 'field_6129043385399'),
(2240, 204, 'block_3_items_0_text', 'Обязательное условие: заказ должен быть сделан не менее\r\nчем за 3 часа до желаемого времени доставки'),
(2241, 204, '_block_3_items_0_text', 'field_612904488539a'),
(2242, 204, 'block_3_items_1_icon', '123'),
(2243, 204, '_block_3_items_1_icon', 'field_6129043385399'),
(2244, 204, 'block_3_items_1_text', 'Заказ будет доставлен точно в указанное вами время'),
(2245, 204, '_block_3_items_1_text', 'field_612904488539a'),
(2246, 204, 'block_3_items', '2'),
(2247, 204, '_block_3_items', 'field_6129041e85398'),
(2248, 204, 'tabs_0_title', 'Условия доставки'),
(2249, 204, '_tabs_0_title', 'field_61c5d6b1847af'),
(2250, 204, 'tabs_0_blocks_0_title', 'Условия доставки'),
(2251, 204, '_tabs_0_blocks_0_title', 'field_61c5d6ea847b1'),
(2252, 204, 'tabs_0_blocks_0_items_0_icon', ''),
(2253, 204, '_tabs_0_blocks_0_items_0_icon', 'field_61c5d706847b3'),
(2254, 204, 'tabs_0_blocks_0_items_0_label', ''),
(2255, 204, '_tabs_0_blocks_0_items_0_label', 'field_61c5d745847b4'),
(2256, 204, 'tabs_0_blocks_0_items_0_text', ''),
(2257, 204, '_tabs_0_blocks_0_items_0_text', 'field_61c5d75f847b5'),
(2258, 204, 'tabs_0_blocks_0_items', '1'),
(2259, 204, '_tabs_0_blocks_0_items', 'field_61c5d6f8847b2'),
(2260, 204, 'tabs_0_blocks', '1'),
(2261, 204, '_tabs_0_blocks', 'field_61c5d6c0847b0'),
(2262, 204, 'tabs', '1'),
(2263, 204, '_tabs', 'field_61c5d69f847ae'),
(2264, 100, 'tabs_0_blocks_0_items_1_icon', '114'),
(2265, 100, '_tabs_0_blocks_0_items_1_icon', 'field_61c5d706847b3'),
(2266, 100, 'tabs_0_blocks_0_items_1_label', 'Сумма минимального заказа – 950 рублей'),
(2267, 100, '_tabs_0_blocks_0_items_1_label', 'field_61c5d745847b4'),
(2268, 100, 'tabs_0_blocks_0_items_1_text', ''),
(2269, 100, '_tabs_0_blocks_0_items_1_text', 'field_61c5d75f847b5'),
(2284, 205, 'block_0_title', 'Условия доставки'),
(2285, 205, '_block_0_title', 'field_6129041285397'),
(2286, 205, 'block_0_items_0_icon', '113'),
(2287, 205, '_block_0_items_0_icon', 'field_6129043385399'),
(2288, 205, 'block_0_items_0_text', 'Бесплатная доставка при заказе от 1500 рублей.'),
(2289, 205, '_block_0_items_0_text', 'field_612904488539a'),
(2290, 205, 'block_0_items_1_icon', '114'),
(2291, 205, '_block_0_items_1_icon', 'field_6129043385399'),
(2292, 205, 'block_0_items_1_text', 'Сумма минимального заказа – 950 рублей'),
(2293, 205, '_block_0_items_1_text', 'field_612904488539a'),
(2294, 205, 'block_0_items', '4'),
(2295, 205, '_block_0_items', 'field_6129041e85398'),
(2296, 205, 'block', '4'),
(2297, 205, '_block', 'field_612903d885396'),
(2298, 205, 'block_0_items_2_icon', '116'),
(2299, 205, '_block_0_items_2_icon', 'field_6129043385399'),
(2300, 205, 'block_0_items_2_text', 'Доставка осуществляется\r\nв пределах Симферополя\r\nс 10:00 до 22:00'),
(2301, 205, '_block_0_items_2_text', 'field_612904488539a'),
(2302, 205, 'block_0_items_3_icon', '117'),
(2303, 205, '_block_0_items_3_icon', 'field_6129043385399'),
(2304, 205, 'block_0_items_3_text', 'Заказы на доставку день\r\nв день принимаются\r\nс 10:00 до 21:00'),
(2305, 205, '_block_0_items_3_text', 'field_612904488539a'),
(2306, 205, 'block_1_title', 'Заказ можно сделать несколькими способами'),
(2307, 205, '_block_1_title', 'field_6129041285397'),
(2308, 205, 'block_1_items_0_icon', '118'),
(2309, 205, '_block_1_items_0_icon', 'field_6129043385399'),
(2310, 205, 'block_1_items_0_text', 'Сделать заказ и оформить на нашем сайте'),
(2311, 205, '_block_1_items_0_text', 'field_612904488539a');
INSERT INTO `rest_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2312, 205, 'block_1_items_1_icon', '119'),
(2313, 205, '_block_1_items_1_icon', 'field_6129043385399'),
(2314, 205, 'block_1_items_1_text', 'В режиме телефонного звонке с менеджером'),
(2315, 205, '_block_1_items_1_text', 'field_612904488539a'),
(2316, 205, 'block_1_items', '2'),
(2317, 205, '_block_1_items', 'field_6129041e85398'),
(2318, 205, 'block_2_title', 'Оплата заказа'),
(2319, 205, '_block_2_title', 'field_6129041285397'),
(2320, 205, 'block_2_items_0_icon', '120'),
(2321, 205, '_block_2_items_0_icon', 'field_6129043385399'),
(2322, 205, 'block_2_items_0_text', 'Вы можете оплатить наличными курьеру'),
(2323, 205, '_block_2_items_0_text', 'field_612904488539a'),
(2324, 205, 'block_2_items_1_icon', '121'),
(2325, 205, '_block_2_items_1_icon', 'field_6129043385399'),
(2326, 205, 'block_2_items_1_text', 'Так же есть возможность осуществить оплату при самовывозе'),
(2327, 205, '_block_2_items_1_text', 'field_612904488539a'),
(2328, 205, 'block_2_items', '2'),
(2329, 205, '_block_2_items', 'field_6129041e85398'),
(2330, 205, 'block_3_title', 'Доставка ко времени'),
(2331, 205, '_block_3_title', 'field_6129041285397'),
(2332, 205, 'block_3_items_0_icon', '122'),
(2333, 205, '_block_3_items_0_icon', 'field_6129043385399'),
(2334, 205, 'block_3_items_0_text', 'Обязательное условие: заказ должен быть сделан не менее\r\nчем за 3 часа до желаемого времени доставки'),
(2335, 205, '_block_3_items_0_text', 'field_612904488539a'),
(2336, 205, 'block_3_items_1_icon', '123'),
(2337, 205, '_block_3_items_1_icon', 'field_6129043385399'),
(2338, 205, 'block_3_items_1_text', 'Заказ будет доставлен точно в указанное вами время'),
(2339, 205, '_block_3_items_1_text', 'field_612904488539a'),
(2340, 205, 'block_3_items', '2'),
(2341, 205, '_block_3_items', 'field_6129041e85398'),
(2342, 205, 'tabs_0_title', 'Условия доставки'),
(2343, 205, '_tabs_0_title', 'field_61c5d6b1847af'),
(2344, 205, 'tabs_0_blocks_0_title', 'Условия доставки'),
(2345, 205, '_tabs_0_blocks_0_title', 'field_61c5d6ea847b1'),
(2346, 205, 'tabs_0_blocks_0_items_0_icon', '113'),
(2347, 205, '_tabs_0_blocks_0_items_0_icon', 'field_61c5d706847b3'),
(2348, 205, 'tabs_0_blocks_0_items_0_label', 'Бесплатная доставка при заказе от 1500 рублей.'),
(2349, 205, '_tabs_0_blocks_0_items_0_label', 'field_61c5d745847b4'),
(2350, 205, 'tabs_0_blocks_0_items_0_text', ''),
(2351, 205, '_tabs_0_blocks_0_items_0_text', 'field_61c5d75f847b5'),
(2352, 205, 'tabs_0_blocks_0_items', '2'),
(2353, 205, '_tabs_0_blocks_0_items', 'field_61c5d6f8847b2'),
(2354, 205, 'tabs_0_blocks', '1'),
(2355, 205, '_tabs_0_blocks', 'field_61c5d6c0847b0'),
(2356, 205, 'tabs', '2'),
(2357, 205, '_tabs', 'field_61c5d69f847ae'),
(2358, 205, 'tabs_0_blocks_0_items_1_icon', '114'),
(2359, 205, '_tabs_0_blocks_0_items_1_icon', 'field_61c5d706847b3'),
(2360, 205, 'tabs_0_blocks_0_items_1_label', 'Сумма минимального заказа – 950 рублей'),
(2361, 205, '_tabs_0_blocks_0_items_1_label', 'field_61c5d745847b4'),
(2362, 205, 'tabs_0_blocks_0_items_1_text', ''),
(2363, 205, '_tabs_0_blocks_0_items_1_text', 'field_61c5d75f847b5'),
(2364, 205, 'tabs_1_title', 'Вкладка'),
(2365, 205, '_tabs_1_title', 'field_61c5d6b1847af'),
(2366, 205, 'tabs_1_blocks_0_title', 'Элементы'),
(2367, 205, '_tabs_1_blocks_0_title', 'field_61c5d6ea847b1'),
(2368, 205, 'tabs_1_blocks_0_items_0_icon', ''),
(2369, 205, '_tabs_1_blocks_0_items_0_icon', 'field_61c5d706847b3'),
(2370, 205, 'tabs_1_blocks_0_items_0_label', ''),
(2371, 205, '_tabs_1_blocks_0_items_0_label', 'field_61c5d745847b4'),
(2372, 205, 'tabs_1_blocks_0_items_0_text', 'тут может быть <strong>текст</strong>'),
(2373, 205, '_tabs_1_blocks_0_items_0_text', 'field_61c5d75f847b5'),
(2374, 205, 'tabs_1_blocks_0_items', '1'),
(2375, 205, '_tabs_1_blocks_0_items', 'field_61c5d6f8847b2'),
(2376, 205, 'tabs_1_blocks', '1'),
(2377, 205, '_tabs_1_blocks', 'field_61c5d6c0847b0'),
(2378, 206, 'block_0_title', 'Условия доставки'),
(2379, 206, '_block_0_title', 'field_6129041285397'),
(2380, 206, 'block_0_items_0_icon', '113'),
(2381, 206, '_block_0_items_0_icon', 'field_6129043385399'),
(2382, 206, 'block_0_items_0_text', 'Бесплатная доставка при заказе от 1500 рублей.'),
(2383, 206, '_block_0_items_0_text', 'field_612904488539a'),
(2384, 206, 'block_0_items_1_icon', '114'),
(2385, 206, '_block_0_items_1_icon', 'field_6129043385399'),
(2386, 206, 'block_0_items_1_text', 'Сумма минимального заказа – 950 рублей'),
(2387, 206, '_block_0_items_1_text', 'field_612904488539a'),
(2388, 206, 'block_0_items', '4'),
(2389, 206, '_block_0_items', 'field_6129041e85398'),
(2390, 206, 'block', '4'),
(2391, 206, '_block', 'field_612903d885396'),
(2392, 206, 'block_0_items_2_icon', '116'),
(2393, 206, '_block_0_items_2_icon', 'field_6129043385399'),
(2394, 206, 'block_0_items_2_text', 'Доставка осуществляется\r\nв пределах Симферополя\r\nс 10:00 до 22:00'),
(2395, 206, '_block_0_items_2_text', 'field_612904488539a'),
(2396, 206, 'block_0_items_3_icon', '117'),
(2397, 206, '_block_0_items_3_icon', 'field_6129043385399'),
(2398, 206, 'block_0_items_3_text', 'Заказы на доставку день\r\nв день принимаются\r\nс 10:00 до 21:00'),
(2399, 206, '_block_0_items_3_text', 'field_612904488539a'),
(2400, 206, 'block_1_title', 'Заказ можно сделать несколькими способами'),
(2401, 206, '_block_1_title', 'field_6129041285397'),
(2402, 206, 'block_1_items_0_icon', '118'),
(2403, 206, '_block_1_items_0_icon', 'field_6129043385399'),
(2404, 206, 'block_1_items_0_text', 'Сделать заказ и оформить на нашем сайте'),
(2405, 206, '_block_1_items_0_text', 'field_612904488539a'),
(2406, 206, 'block_1_items_1_icon', '119'),
(2407, 206, '_block_1_items_1_icon', 'field_6129043385399'),
(2408, 206, 'block_1_items_1_text', 'В режиме телефонного звонке с менеджером'),
(2409, 206, '_block_1_items_1_text', 'field_612904488539a'),
(2410, 206, 'block_1_items', '2'),
(2411, 206, '_block_1_items', 'field_6129041e85398'),
(2412, 206, 'block_2_title', 'Оплата заказа'),
(2413, 206, '_block_2_title', 'field_6129041285397'),
(2414, 206, 'block_2_items_0_icon', '120'),
(2415, 206, '_block_2_items_0_icon', 'field_6129043385399'),
(2416, 206, 'block_2_items_0_text', 'Вы можете оплатить наличными курьеру'),
(2417, 206, '_block_2_items_0_text', 'field_612904488539a'),
(2418, 206, 'block_2_items_1_icon', '121'),
(2419, 206, '_block_2_items_1_icon', 'field_6129043385399'),
(2420, 206, 'block_2_items_1_text', 'Так же есть возможность осуществить оплату при самовывозе'),
(2421, 206, '_block_2_items_1_text', 'field_612904488539a'),
(2422, 206, 'block_2_items', '2'),
(2423, 206, '_block_2_items', 'field_6129041e85398'),
(2424, 206, 'block_3_title', 'Доставка ко времени'),
(2425, 206, '_block_3_title', 'field_6129041285397'),
(2426, 206, 'block_3_items_0_icon', '122'),
(2427, 206, '_block_3_items_0_icon', 'field_6129043385399'),
(2428, 206, 'block_3_items_0_text', 'Обязательное условие: заказ должен быть сделан не менее\r\nчем за 3 часа до желаемого времени доставки'),
(2429, 206, '_block_3_items_0_text', 'field_612904488539a'),
(2430, 206, 'block_3_items_1_icon', '123'),
(2431, 206, '_block_3_items_1_icon', 'field_6129043385399'),
(2432, 206, 'block_3_items_1_text', 'Заказ будет доставлен точно в указанное вами время'),
(2433, 206, '_block_3_items_1_text', 'field_612904488539a'),
(2434, 206, 'block_3_items', '2'),
(2435, 206, '_block_3_items', 'field_6129041e85398'),
(2436, 206, 'tabs_0_title', 'Условия доставки'),
(2437, 206, '_tabs_0_title', 'field_61c5d6b1847af'),
(2438, 206, 'tabs_0_blocks_0_title', 'Условия доставки'),
(2439, 206, '_tabs_0_blocks_0_title', 'field_61c5d6ea847b1'),
(2440, 206, 'tabs_0_blocks_0_items_0_icon', '113'),
(2441, 206, '_tabs_0_blocks_0_items_0_icon', 'field_61c5d706847b3'),
(2442, 206, 'tabs_0_blocks_0_items_0_label', 'Бесплатная доставка при заказе от 1500 рублей.'),
(2443, 206, '_tabs_0_blocks_0_items_0_label', 'field_61c5d745847b4'),
(2444, 206, 'tabs_0_blocks_0_items_0_text', ''),
(2445, 206, '_tabs_0_blocks_0_items_0_text', 'field_61c5d75f847b5'),
(2446, 206, 'tabs_0_blocks_0_items', '2'),
(2447, 206, '_tabs_0_blocks_0_items', 'field_61c5d6f8847b2'),
(2448, 206, 'tabs_0_blocks', '1'),
(2449, 206, '_tabs_0_blocks', 'field_61c5d6c0847b0'),
(2450, 206, 'tabs', '2'),
(2451, 206, '_tabs', 'field_61c5d69f847ae'),
(2452, 206, 'tabs_0_blocks_0_items_1_icon', '114'),
(2453, 206, '_tabs_0_blocks_0_items_1_icon', 'field_61c5d706847b3'),
(2454, 206, 'tabs_0_blocks_0_items_1_label', 'Сумма минимального заказа – 950 рублей'),
(2455, 206, '_tabs_0_blocks_0_items_1_label', 'field_61c5d745847b4'),
(2456, 206, 'tabs_0_blocks_0_items_1_text', ''),
(2457, 206, '_tabs_0_blocks_0_items_1_text', 'field_61c5d75f847b5'),
(2458, 206, 'tabs_1_title', 'Вкладка'),
(2459, 206, '_tabs_1_title', 'field_61c5d6b1847af'),
(2460, 206, 'tabs_1_blocks_0_title', 'Элементы'),
(2461, 206, '_tabs_1_blocks_0_title', 'field_61c5d6ea847b1'),
(2462, 206, 'tabs_1_blocks_0_items_0_icon', '114'),
(2463, 206, '_tabs_1_blocks_0_items_0_icon', 'field_61c5d706847b3'),
(2464, 206, 'tabs_1_blocks_0_items_0_label', ''),
(2465, 206, '_tabs_1_blocks_0_items_0_label', 'field_61c5d745847b4'),
(2466, 206, 'tabs_1_blocks_0_items_0_text', 'тут может быть <strong>текст</strong>'),
(2467, 206, '_tabs_1_blocks_0_items_0_text', 'field_61c5d75f847b5'),
(2468, 206, 'tabs_1_blocks_0_items', '1'),
(2469, 206, '_tabs_1_blocks_0_items', 'field_61c5d6f8847b2'),
(2470, 206, 'tabs_1_blocks', '1'),
(2471, 206, '_tabs_1_blocks', 'field_61c5d6c0847b0'),
(2472, 207, 'block_0_title', 'Условия доставки'),
(2473, 207, '_block_0_title', 'field_6129041285397'),
(2474, 207, 'block_0_items_0_icon', '113'),
(2475, 207, '_block_0_items_0_icon', 'field_6129043385399'),
(2476, 207, 'block_0_items_0_text', 'Бесплатная доставка при заказе от 1500 рублей.'),
(2477, 207, '_block_0_items_0_text', 'field_612904488539a'),
(2478, 207, 'block_0_items_1_icon', '114'),
(2479, 207, '_block_0_items_1_icon', 'field_6129043385399'),
(2480, 207, 'block_0_items_1_text', 'Сумма минимального заказа – 950 рублей'),
(2481, 207, '_block_0_items_1_text', 'field_612904488539a'),
(2482, 207, 'block_0_items', '4'),
(2483, 207, '_block_0_items', 'field_6129041e85398'),
(2484, 207, 'block', '4'),
(2485, 207, '_block', 'field_612903d885396'),
(2486, 207, 'block_0_items_2_icon', '116'),
(2487, 207, '_block_0_items_2_icon', 'field_6129043385399'),
(2488, 207, 'block_0_items_2_text', 'Доставка осуществляется\r\nв пределах Симферополя\r\nс 10:00 до 22:00'),
(2489, 207, '_block_0_items_2_text', 'field_612904488539a'),
(2490, 207, 'block_0_items_3_icon', '117'),
(2491, 207, '_block_0_items_3_icon', 'field_6129043385399'),
(2492, 207, 'block_0_items_3_text', 'Заказы на доставку день\r\nв день принимаются\r\nс 10:00 до 21:00'),
(2493, 207, '_block_0_items_3_text', 'field_612904488539a'),
(2494, 207, 'block_1_title', 'Заказ можно сделать несколькими способами'),
(2495, 207, '_block_1_title', 'field_6129041285397'),
(2496, 207, 'block_1_items_0_icon', '118'),
(2497, 207, '_block_1_items_0_icon', 'field_6129043385399'),
(2498, 207, 'block_1_items_0_text', 'Сделать заказ и оформить на нашем сайте'),
(2499, 207, '_block_1_items_0_text', 'field_612904488539a'),
(2500, 207, 'block_1_items_1_icon', '119'),
(2501, 207, '_block_1_items_1_icon', 'field_6129043385399'),
(2502, 207, 'block_1_items_1_text', 'В режиме телефонного звонке с менеджером'),
(2503, 207, '_block_1_items_1_text', 'field_612904488539a'),
(2504, 207, 'block_1_items', '2'),
(2505, 207, '_block_1_items', 'field_6129041e85398'),
(2506, 207, 'block_2_title', 'Оплата заказа'),
(2507, 207, '_block_2_title', 'field_6129041285397'),
(2508, 207, 'block_2_items_0_icon', '120'),
(2509, 207, '_block_2_items_0_icon', 'field_6129043385399'),
(2510, 207, 'block_2_items_0_text', 'Вы можете оплатить наличными курьеру'),
(2511, 207, '_block_2_items_0_text', 'field_612904488539a'),
(2512, 207, 'block_2_items_1_icon', '121'),
(2513, 207, '_block_2_items_1_icon', 'field_6129043385399'),
(2514, 207, 'block_2_items_1_text', 'Так же есть возможность осуществить оплату при самовывозе'),
(2515, 207, '_block_2_items_1_text', 'field_612904488539a'),
(2516, 207, 'block_2_items', '2'),
(2517, 207, '_block_2_items', 'field_6129041e85398'),
(2518, 207, 'block_3_title', 'Доставка ко времени'),
(2519, 207, '_block_3_title', 'field_6129041285397'),
(2520, 207, 'block_3_items_0_icon', '122'),
(2521, 207, '_block_3_items_0_icon', 'field_6129043385399'),
(2522, 207, 'block_3_items_0_text', 'Обязательное условие: заказ должен быть сделан не менее\r\nчем за 3 часа до желаемого времени доставки'),
(2523, 207, '_block_3_items_0_text', 'field_612904488539a'),
(2524, 207, 'block_3_items_1_icon', '123'),
(2525, 207, '_block_3_items_1_icon', 'field_6129043385399'),
(2526, 207, 'block_3_items_1_text', 'Заказ будет доставлен точно в указанное вами время'),
(2527, 207, '_block_3_items_1_text', 'field_612904488539a'),
(2528, 207, 'block_3_items', '2'),
(2529, 207, '_block_3_items', 'field_6129041e85398'),
(2530, 207, 'tabs_0_title', 'Условия доставки'),
(2531, 207, '_tabs_0_title', 'field_61c5d6b1847af'),
(2532, 207, 'tabs_0_blocks_0_title', 'Условия доставки'),
(2533, 207, '_tabs_0_blocks_0_title', 'field_61c5d6ea847b1'),
(2534, 207, 'tabs_0_blocks_0_items_0_icon', '113'),
(2535, 207, '_tabs_0_blocks_0_items_0_icon', 'field_61c5d706847b3'),
(2536, 207, 'tabs_0_blocks_0_items_0_label', 'Бесплатная доставка при заказе от 1500 рублей.'),
(2537, 207, '_tabs_0_blocks_0_items_0_label', 'field_61c5d745847b4'),
(2538, 207, 'tabs_0_blocks_0_items_0_text', ''),
(2539, 207, '_tabs_0_blocks_0_items_0_text', 'field_61c5d75f847b5'),
(2540, 207, 'tabs_0_blocks_0_items', '2'),
(2541, 207, '_tabs_0_blocks_0_items', 'field_61c5d6f8847b2'),
(2542, 207, 'tabs_0_blocks', '1'),
(2543, 207, '_tabs_0_blocks', 'field_61c5d6c0847b0'),
(2544, 207, 'tabs', '2'),
(2545, 207, '_tabs', 'field_61c5d69f847ae'),
(2546, 207, 'tabs_0_blocks_0_items_1_icon', '114'),
(2547, 207, '_tabs_0_blocks_0_items_1_icon', 'field_61c5d706847b3'),
(2548, 207, 'tabs_0_blocks_0_items_1_label', 'Сумма минимального заказа – 950 рублей'),
(2549, 207, '_tabs_0_blocks_0_items_1_label', 'field_61c5d745847b4'),
(2550, 207, 'tabs_0_blocks_0_items_1_text', ''),
(2551, 207, '_tabs_0_blocks_0_items_1_text', 'field_61c5d75f847b5'),
(2552, 207, 'tabs_1_title', 'Вкладка'),
(2553, 207, '_tabs_1_title', 'field_61c5d6b1847af'),
(2554, 207, 'tabs_1_blocks_0_title', 'Элементы'),
(2555, 207, '_tabs_1_blocks_0_title', 'field_61c5d6ea847b1'),
(2556, 207, 'tabs_1_blocks_0_items_0_icon', '114'),
(2557, 207, '_tabs_1_blocks_0_items_0_icon', 'field_61c5d706847b3'),
(2558, 207, 'tabs_1_blocks_0_items_0_label', 'dsadas'),
(2559, 207, '_tabs_1_blocks_0_items_0_label', 'field_61c5d745847b4'),
(2560, 207, 'tabs_1_blocks_0_items_0_text', 'тут может быть <strong>текст</strong>'),
(2561, 207, '_tabs_1_blocks_0_items_0_text', 'field_61c5d75f847b5'),
(2562, 207, 'tabs_1_blocks_0_items', '1'),
(2563, 207, '_tabs_1_blocks_0_items', 'field_61c5d6f8847b2'),
(2564, 207, 'tabs_1_blocks', '1'),
(2565, 207, '_tabs_1_blocks', 'field_61c5d6c0847b0'),
(2566, 208, 'block_0_title', 'Условия доставки'),
(2567, 208, '_block_0_title', 'field_6129041285397'),
(2568, 208, 'block_0_items_0_icon', '113'),
(2569, 208, '_block_0_items_0_icon', 'field_6129043385399'),
(2570, 208, 'block_0_items_0_text', 'Бесплатная доставка при заказе от 1500 рублей.'),
(2571, 208, '_block_0_items_0_text', 'field_612904488539a'),
(2572, 208, 'block_0_items_1_icon', '114'),
(2573, 208, '_block_0_items_1_icon', 'field_6129043385399'),
(2574, 208, 'block_0_items_1_text', 'Сумма минимального заказа – 950 рублей'),
(2575, 208, '_block_0_items_1_text', 'field_612904488539a'),
(2576, 208, 'block_0_items', '4'),
(2577, 208, '_block_0_items', 'field_6129041e85398'),
(2578, 208, 'block', '4'),
(2579, 208, '_block', 'field_612903d885396'),
(2580, 208, 'block_0_items_2_icon', '116'),
(2581, 208, '_block_0_items_2_icon', 'field_6129043385399'),
(2582, 208, 'block_0_items_2_text', 'Доставка осуществляется\r\nв пределах Симферополя\r\nс 10:00 до 22:00'),
(2583, 208, '_block_0_items_2_text', 'field_612904488539a'),
(2584, 208, 'block_0_items_3_icon', '117'),
(2585, 208, '_block_0_items_3_icon', 'field_6129043385399'),
(2586, 208, 'block_0_items_3_text', 'Заказы на доставку день\r\nв день принимаются\r\nс 10:00 до 21:00'),
(2587, 208, '_block_0_items_3_text', 'field_612904488539a'),
(2588, 208, 'block_1_title', 'Заказ можно сделать несколькими способами'),
(2589, 208, '_block_1_title', 'field_6129041285397'),
(2590, 208, 'block_1_items_0_icon', '118'),
(2591, 208, '_block_1_items_0_icon', 'field_6129043385399'),
(2592, 208, 'block_1_items_0_text', 'Сделать заказ и оформить на нашем сайте'),
(2593, 208, '_block_1_items_0_text', 'field_612904488539a'),
(2594, 208, 'block_1_items_1_icon', '119'),
(2595, 208, '_block_1_items_1_icon', 'field_6129043385399'),
(2596, 208, 'block_1_items_1_text', 'В режиме телефонного звонке с менеджером'),
(2597, 208, '_block_1_items_1_text', 'field_612904488539a'),
(2598, 208, 'block_1_items', '2'),
(2599, 208, '_block_1_items', 'field_6129041e85398'),
(2600, 208, 'block_2_title', 'Оплата заказа'),
(2601, 208, '_block_2_title', 'field_6129041285397'),
(2602, 208, 'block_2_items_0_icon', '120'),
(2603, 208, '_block_2_items_0_icon', 'field_6129043385399'),
(2604, 208, 'block_2_items_0_text', 'Вы можете оплатить наличными курьеру'),
(2605, 208, '_block_2_items_0_text', 'field_612904488539a'),
(2606, 208, 'block_2_items_1_icon', '121'),
(2607, 208, '_block_2_items_1_icon', 'field_6129043385399'),
(2608, 208, 'block_2_items_1_text', 'Так же есть возможность осуществить оплату при самовывозе'),
(2609, 208, '_block_2_items_1_text', 'field_612904488539a'),
(2610, 208, 'block_2_items', '2'),
(2611, 208, '_block_2_items', 'field_6129041e85398'),
(2612, 208, 'block_3_title', 'Доставка ко времени'),
(2613, 208, '_block_3_title', 'field_6129041285397'),
(2614, 208, 'block_3_items_0_icon', '122'),
(2615, 208, '_block_3_items_0_icon', 'field_6129043385399'),
(2616, 208, 'block_3_items_0_text', 'Обязательное условие: заказ должен быть сделан не менее\r\nчем за 3 часа до желаемого времени доставки'),
(2617, 208, '_block_3_items_0_text', 'field_612904488539a'),
(2618, 208, 'block_3_items_1_icon', '123'),
(2619, 208, '_block_3_items_1_icon', 'field_6129043385399'),
(2620, 208, 'block_3_items_1_text', 'Заказ будет доставлен точно в указанное вами время'),
(2621, 208, '_block_3_items_1_text', 'field_612904488539a'),
(2622, 208, 'block_3_items', '2'),
(2623, 208, '_block_3_items', 'field_6129041e85398'),
(2624, 208, 'tabs_0_title', 'Условия доставки'),
(2625, 208, '_tabs_0_title', 'field_61c5d6b1847af'),
(2626, 208, 'tabs_0_blocks_0_title', 'Условия доставки'),
(2627, 208, '_tabs_0_blocks_0_title', 'field_61c5d6ea847b1'),
(2628, 208, 'tabs_0_blocks_0_items_0_icon', '113'),
(2629, 208, '_tabs_0_blocks_0_items_0_icon', 'field_61c5d706847b3'),
(2630, 208, 'tabs_0_blocks_0_items_0_label', 'Бесплатная доставка при заказе от 1500 рублей.'),
(2631, 208, '_tabs_0_blocks_0_items_0_label', 'field_61c5d745847b4'),
(2632, 208, 'tabs_0_blocks_0_items_0_text', ''),
(2633, 208, '_tabs_0_blocks_0_items_0_text', 'field_61c5d75f847b5'),
(2634, 208, 'tabs_0_blocks_0_items', '2'),
(2635, 208, '_tabs_0_blocks_0_items', 'field_61c5d6f8847b2'),
(2636, 208, 'tabs_0_blocks', '1'),
(2637, 208, '_tabs_0_blocks', 'field_61c5d6c0847b0'),
(2638, 208, 'tabs', '2'),
(2639, 208, '_tabs', 'field_61c5d69f847ae'),
(2640, 208, 'tabs_0_blocks_0_items_1_icon', '114'),
(2641, 208, '_tabs_0_blocks_0_items_1_icon', 'field_61c5d706847b3'),
(2642, 208, 'tabs_0_blocks_0_items_1_label', 'Сумма минимального заказа – 950 рублей'),
(2643, 208, '_tabs_0_blocks_0_items_1_label', 'field_61c5d745847b4'),
(2644, 208, 'tabs_0_blocks_0_items_1_text', ''),
(2645, 208, '_tabs_0_blocks_0_items_1_text', 'field_61c5d75f847b5'),
(2646, 208, 'tabs_1_title', 'Вкладка'),
(2647, 208, '_tabs_1_title', 'field_61c5d6b1847af'),
(2648, 208, 'tabs_1_blocks_0_title', 'Элементы'),
(2649, 208, '_tabs_1_blocks_0_title', 'field_61c5d6ea847b1'),
(2650, 208, 'tabs_1_blocks_0_items_0_icon', ''),
(2651, 208, '_tabs_1_blocks_0_items_0_icon', 'field_61c5d706847b3'),
(2652, 208, 'tabs_1_blocks_0_items_0_label', 'dsadas'),
(2653, 208, '_tabs_1_blocks_0_items_0_label', 'field_61c5d745847b4'),
(2654, 208, 'tabs_1_blocks_0_items_0_text', 'тут может быть <strong>текст</strong>'),
(2655, 208, '_tabs_1_blocks_0_items_0_text', 'field_61c5d75f847b5'),
(2656, 208, 'tabs_1_blocks_0_items', '1'),
(2657, 208, '_tabs_1_blocks_0_items', 'field_61c5d6f8847b2'),
(2658, 208, 'tabs_1_blocks', '1'),
(2659, 208, '_tabs_1_blocks', 'field_61c5d6c0847b0'),
(2660, 209, 'block_0_title', 'Условия доставки'),
(2661, 209, '_block_0_title', 'field_6129041285397'),
(2662, 209, 'block_0_items_0_icon', '113'),
(2663, 209, '_block_0_items_0_icon', 'field_6129043385399'),
(2664, 209, 'block_0_items_0_text', 'Бесплатная доставка при заказе от 1500 рублей.'),
(2665, 209, '_block_0_items_0_text', 'field_612904488539a'),
(2666, 209, 'block_0_items_1_icon', '114'),
(2667, 209, '_block_0_items_1_icon', 'field_6129043385399'),
(2668, 209, 'block_0_items_1_text', 'Сумма минимального заказа – 950 рублей'),
(2669, 209, '_block_0_items_1_text', 'field_612904488539a'),
(2670, 209, 'block_0_items', '4'),
(2671, 209, '_block_0_items', 'field_6129041e85398'),
(2672, 209, 'block', '4'),
(2673, 209, '_block', 'field_612903d885396'),
(2674, 209, 'block_0_items_2_icon', '116'),
(2675, 209, '_block_0_items_2_icon', 'field_6129043385399'),
(2676, 209, 'block_0_items_2_text', 'Доставка осуществляется\r\nв пределах Симферополя\r\nс 10:00 до 22:00'),
(2677, 209, '_block_0_items_2_text', 'field_612904488539a'),
(2678, 209, 'block_0_items_3_icon', '117'),
(2679, 209, '_block_0_items_3_icon', 'field_6129043385399'),
(2680, 209, 'block_0_items_3_text', 'Заказы на доставку день\r\nв день принимаются\r\nс 10:00 до 21:00'),
(2681, 209, '_block_0_items_3_text', 'field_612904488539a'),
(2682, 209, 'block_1_title', 'Заказ можно сделать несколькими способами'),
(2683, 209, '_block_1_title', 'field_6129041285397'),
(2684, 209, 'block_1_items_0_icon', '118'),
(2685, 209, '_block_1_items_0_icon', 'field_6129043385399'),
(2686, 209, 'block_1_items_0_text', 'Сделать заказ и оформить на нашем сайте'),
(2687, 209, '_block_1_items_0_text', 'field_612904488539a'),
(2688, 209, 'block_1_items_1_icon', '119'),
(2689, 209, '_block_1_items_1_icon', 'field_6129043385399'),
(2690, 209, 'block_1_items_1_text', 'В режиме телефонного звонке с менеджером'),
(2691, 209, '_block_1_items_1_text', 'field_612904488539a'),
(2692, 209, 'block_1_items', '2'),
(2693, 209, '_block_1_items', 'field_6129041e85398'),
(2694, 209, 'block_2_title', 'Оплата заказа'),
(2695, 209, '_block_2_title', 'field_6129041285397'),
(2696, 209, 'block_2_items_0_icon', '120'),
(2697, 209, '_block_2_items_0_icon', 'field_6129043385399'),
(2698, 209, 'block_2_items_0_text', 'Вы можете оплатить наличными курьеру'),
(2699, 209, '_block_2_items_0_text', 'field_612904488539a'),
(2700, 209, 'block_2_items_1_icon', '121'),
(2701, 209, '_block_2_items_1_icon', 'field_6129043385399'),
(2702, 209, 'block_2_items_1_text', 'Так же есть возможность осуществить оплату при самовывозе'),
(2703, 209, '_block_2_items_1_text', 'field_612904488539a'),
(2704, 209, 'block_2_items', '2'),
(2705, 209, '_block_2_items', 'field_6129041e85398'),
(2706, 209, 'block_3_title', 'Доставка ко времени'),
(2707, 209, '_block_3_title', 'field_6129041285397'),
(2708, 209, 'block_3_items_0_icon', '122'),
(2709, 209, '_block_3_items_0_icon', 'field_6129043385399'),
(2710, 209, 'block_3_items_0_text', 'Обязательное условие: заказ должен быть сделан не менее\r\nчем за 3 часа до желаемого времени доставки'),
(2711, 209, '_block_3_items_0_text', 'field_612904488539a'),
(2712, 209, 'block_3_items_1_icon', '123'),
(2713, 209, '_block_3_items_1_icon', 'field_6129043385399'),
(2714, 209, 'block_3_items_1_text', 'Заказ будет доставлен точно в указанное вами время'),
(2715, 209, '_block_3_items_1_text', 'field_612904488539a'),
(2716, 209, 'block_3_items', '2'),
(2717, 209, '_block_3_items', 'field_6129041e85398'),
(2718, 209, 'tabs_0_title', 'Условия доставки'),
(2719, 209, '_tabs_0_title', 'field_61c5d6b1847af'),
(2720, 209, 'tabs_0_blocks_0_title', 'Условия доставки'),
(2721, 209, '_tabs_0_blocks_0_title', 'field_61c5d6ea847b1'),
(2722, 209, 'tabs_0_blocks_0_items_0_icon', '113'),
(2723, 209, '_tabs_0_blocks_0_items_0_icon', 'field_61c5d706847b3'),
(2724, 209, 'tabs_0_blocks_0_items_0_label', 'Бесплатная доставка при заказе от 1500 рублей.'),
(2725, 209, '_tabs_0_blocks_0_items_0_label', 'field_61c5d745847b4'),
(2726, 209, 'tabs_0_blocks_0_items_0_text', ''),
(2727, 209, '_tabs_0_blocks_0_items_0_text', 'field_61c5d75f847b5'),
(2728, 209, 'tabs_0_blocks_0_items', '2'),
(2729, 209, '_tabs_0_blocks_0_items', 'field_61c5d6f8847b2'),
(2730, 209, 'tabs_0_blocks', '1'),
(2731, 209, '_tabs_0_blocks', 'field_61c5d6c0847b0'),
(2732, 209, 'tabs', '1'),
(2733, 209, '_tabs', 'field_61c5d69f847ae'),
(2734, 209, 'tabs_0_blocks_0_items_1_icon', '114'),
(2735, 209, '_tabs_0_blocks_0_items_1_icon', 'field_61c5d706847b3'),
(2736, 209, 'tabs_0_blocks_0_items_1_label', 'Сумма минимального заказа – 950 рублей'),
(2737, 209, '_tabs_0_blocks_0_items_1_label', 'field_61c5d745847b4'),
(2738, 209, 'tabs_0_blocks_0_items_1_text', ''),
(2739, 209, '_tabs_0_blocks_0_items_1_text', 'field_61c5d75f847b5');

-- --------------------------------------------------------

--
-- Table structure for table `rest_posts`
--

CREATE TABLE `rest_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rest_posts`
--

INSERT INTO `rest_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-08-04 11:49:41', '2021-08-04 08:49:41', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2021-08-04 11:49:41', '2021-08-04 08:49:41', '', 0, 'http://localhost:8888/rest/store/?p=1', 1, 'post', '', 1),
(3, 1, '2021-08-04 11:49:41', '2021-08-04 08:49:41', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Наш адрес сайта: http://localhost:8888/rest/store.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Комментарии</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Медиафайлы</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куки</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Встраиваемое содержимое других вебсайтов</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Предлагаемый текст: </strong>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-08-04 11:49:41', '2021-08-04 08:49:41', '', 0, 'http://localhost:8888/rest/store/?page_id=3', 6, 'page', '', 0),
(10, 1, '2021-08-04 12:05:02', '2021-08-04 09:05:02', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2021-08-04 12:05:02', '2021-08-04 09:05:02', '', 0, 'http://localhost:8888/rest/store/wp-content/uploads/2021/08/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2021-08-04 12:05:03', '2021-08-04 09:05:03', '', 'Каталог', '', 'publish', 'closed', 'closed', '', 'products', '', '', '2021-08-29 17:53:10', '2021-08-29 14:53:10', '', 0, 'http://localhost:8888/rest/store/shop/', 5, 'page', '', 0),
(12, 1, '2021-08-04 12:05:03', '2021-08-04 09:05:03', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2021-08-04 12:05:03', '2021-08-04 09:05:03', '', 0, 'http://localhost:8888/rest/store/cart/', 2, 'page', '', 0),
(13, 1, '2021-08-04 12:05:03', '2021-08-04 09:05:03', '<!-- wp:shortcode -->\r\n<p>[woocommerce_checkout]</p>\r\n<!-- /wp:shortcode -->', 'Оформление заказа', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2021-08-31 22:41:14', '2021-08-31 19:41:14', '', 0, 'http://localhost:8888/rest/store/checkout/', 3, 'page', '', 0),
(14, 1, '2021-08-04 12:05:03', '2021-08-04 09:05:03', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2021-08-04 12:05:03', '2021-08-04 09:05:03', '', 0, 'http://localhost:8888/rest/store/my-account/', 4, 'page', '', 0),
(16, 1, '2021-08-04 12:18:43', '2021-08-04 09:18:43', '', 'test', '', 'publish', 'open', 'closed', '', 'test', '', '', '2021-08-30 23:16:05', '2021-08-30 20:16:05', '', 0, 'http://localhost:8888/rest/store/?post_type=product&#038;p=16', 3, 'product', '', 0),
(22, 1, '2021-08-04 20:56:20', '2021-08-04 17:56:20', '', 'test 2', '', 'publish', 'open', 'closed', '', 'test-2', '', '', '2021-11-07 17:47:26', '2021-11-07 14:47:26', '', 0, 'http://localhost:8888/rest/store/?post_type=product&#038;p=22', 4, 'product', '', 0),
(23, 1, '2021-08-05 15:53:04', '2021-08-05 12:53:04', '', 'сов пельм 1 (2)', '', 'inherit', 'open', 'closed', '', '%d1%81%d0%be%d0%b2-%d0%bf%d0%b5%d0%bb%d1%8c%d0%bc-1-2', '', '', '2021-08-05 15:53:04', '2021-08-05 12:53:04', '', 0, 'http://localhost:8888/rest/store/wp-content/uploads/2021/08/сов-пельм-1-2.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2021-08-05 16:45:07', '2021-08-05 13:45:07', '', 'dumpling (1)', '', 'inherit', 'open', 'closed', '', 'dumpling-1', '', '', '2021-08-05 16:45:07', '2021-08-05 13:45:07', '', 0, 'http://localhost:8888/rest/store/wp-content/uploads/2021/08/dumpling-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(28, 1, '2021-08-05 17:26:03', '2021-08-05 14:26:03', 'http://localhost:8888/rest/store/wp-content/uploads/2021/08/cropped-сов-пельм-1-2.png', 'cropped-сов-пельм-1-2.png', '', 'inherit', 'open', 'closed', '', 'cropped-%d1%81%d0%be%d0%b2-%d0%bf%d0%b5%d0%bb%d1%8c%d0%bc-1-2-png', '', '', '2021-08-05 17:26:03', '2021-08-05 14:26:03', '', 0, 'http://localhost:8888/rest/store/wp-content/uploads/2021/08/cropped-сов-пельм-1-2.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2021-08-05 19:02:41', '2021-08-05 16:02:41', '', 'Симферополь, улица Гагарина, 31', '', 'publish', 'closed', 'closed', '', 'simferopol-ulicza-gagarina-31', '', '', '2021-08-05 19:02:41', '2021-08-05 16:02:41', '', 0, 'http://localhost:8888/rest/store/?post_type=stories&#038;p=33', 0, 'stories', '', 0),
(34, 1, '2021-08-05 23:54:05', '2021-08-05 20:54:05', '', 'Симферополь, улица Гагарина, 31', '', 'publish', 'closed', 'closed', '', 'simferopol-ulicza-gagarina-31', '', '', '2021-08-28 16:23:17', '2021-08-28 13:23:17', '', 0, 'http://localhost:8888/rest/store/?post_type=stores&#038;p=34', 3, 'stores', '', 0),
(35, 1, '2021-08-08 19:16:40', '2021-08-08 16:16:40', '', 'dumpling', '', 'inherit', 'open', 'closed', '', 'dumpling', '', '', '2021-08-08 19:16:40', '2021-08-08 16:16:40', '', 0, 'http://localhost:8888/rest/store/wp-content/uploads/2021/08/dumpling.svg', 0, 'attachment', 'image/svg+xml', 0),
(36, 1, '2021-08-08 21:21:21', '2021-08-08 18:21:21', '', 'moretest', '', 'publish', 'open', 'closed', '', 'test-2-2', '', '', '2021-08-31 21:48:09', '2021-08-31 18:48:09', '', 0, 'http://localhost:8888/rest/store/?post_type=product&#038;p=36', 1, 'product', '', 0),
(37, 1, '2021-08-09 18:56:35', '2021-08-09 15:56:35', '', 'image 4', '', 'inherit', 'open', 'closed', '', 'image-4', '', '', '2021-08-09 18:56:35', '2021-08-09 15:56:35', '', 16, 'http://localhost:8888/rest/store/wp-content/uploads/2021/08/image-4.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2021-08-10 12:37:48', '2021-08-10 09:37:48', '', 'Каждый вторник и четверг', '', 'publish', 'closed', 'closed', '', 'kazhdyj-vtornik-i-chetverg', '', '', '2021-08-10 18:11:39', '2021-08-10 15:11:39', '', 0, 'http://localhost:8888/rest/store/?post_type=banners&#038;p=40', 2, 'banners', '', 0),
(41, 1, '2021-08-10 12:39:19', '2021-08-10 09:39:19', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"banners\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Поля для баннеров', 'polya-dlya-bannerov', 'publish', 'closed', 'closed', '', 'group_611249030ed73', '', '', '2021-08-10 13:49:28', '2021-08-10 10:49:28', '', 0, 'http://localhost:8888/rest/store/?post_type=acf-field-group&#038;p=41', 0, 'acf-field-group', '', 0),
(42, 1, '2021-08-10 12:39:19', '2021-08-10 09:39:19', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Слайдер', 'slider', 'publish', 'closed', 'closed', '', 'field_611249196044f', '', '', '2021-08-10 12:39:19', '2021-08-10 09:39:19', '', 41, 'http://localhost:8888/rest/store/?post_type=acf-field&p=42', 0, 'acf-field', '', 0),
(43, 1, '2021-08-10 12:47:04', '2021-08-10 09:47:04', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_611249196044f\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Поля слайдера', 'slider_data', 'publish', 'closed', 'closed', '', 'field_6112496d6e77d', '', '', '2021-08-10 13:10:10', '2021-08-10 10:10:10', '', 41, 'http://localhost:8888/rest/store/?post_type=acf-field&#038;p=43', 1, 'acf-field', '', 0),
(44, 1, '2021-08-10 12:47:04', '2021-08-10 09:47:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок', 'title', 'publish', 'closed', 'closed', '', 'field_611249b26e77e', '', '', '2021-08-10 12:47:04', '2021-08-10 09:47:04', '', 43, 'http://localhost:8888/rest/store/?post_type=acf-field&p=44', 0, 'acf-field', '', 0),
(45, 1, '2021-08-10 12:47:04', '2021-08-10 09:47:04', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Текст', 'text', 'publish', 'closed', 'closed', '', 'field_611249e86e77f', '', '', '2021-08-10 12:47:04', '2021-08-10 09:47:04', '', 43, 'http://localhost:8888/rest/store/?post_type=acf-field&p=45', 1, 'acf-field', '', 0),
(46, 1, '2021-08-10 12:47:04', '2021-08-10 09:47:04', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Есть ссылка', 'link', 'publish', 'closed', 'closed', '', 'field_61124a666e783', '', '', '2021-08-10 12:47:04', '2021-08-10 09:47:04', '', 43, 'http://localhost:8888/rest/store/?post_type=acf-field&p=46', 2, 'acf-field', '', 0),
(47, 1, '2021-08-10 12:47:04', '2021-08-10 09:47:04', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_61124a666e783\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Ссылка', 'link_data', 'publish', 'closed', 'closed', '', 'field_611249f76e780', '', '', '2021-08-10 12:47:04', '2021-08-10 09:47:04', '', 43, 'http://localhost:8888/rest/store/?post_type=acf-field&p=47', 3, 'acf-field', '', 0),
(48, 1, '2021-08-10 12:47:04', '2021-08-10 09:47:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Текст', 'text', 'publish', 'closed', 'closed', '', 'field_61124a256e781', '', '', '2021-08-10 12:47:04', '2021-08-10 09:47:04', '', 47, 'http://localhost:8888/rest/store/?post_type=acf-field&p=48', 0, 'acf-field', '', 0),
(49, 1, '2021-08-10 12:47:04', '2021-08-10 09:47:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Ссылка', 'link', 'publish', 'closed', 'closed', '', 'field_61124af16e786', '', '', '2021-08-10 12:47:04', '2021-08-10 09:47:04', '', 47, 'http://localhost:8888/rest/store/?post_type=acf-field&p=49', 1, 'acf-field', '', 0),
(50, 1, '2021-08-10 12:47:04', '2021-08-10 09:47:04', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Внешний ресурс', 'external', 'publish', 'closed', 'closed', '', 'field_61124af96e787', '', '', '2021-08-10 12:47:04', '2021-08-10 09:47:04', '', 47, 'http://localhost:8888/rest/store/?post_type=acf-field&p=50', 2, 'acf-field', '', 0),
(51, 1, '2021-08-10 13:12:49', '2021-08-10 10:12:49', '', 'Раздвоение гастрономичности!', '', 'publish', 'closed', 'closed', '', 'razdvoenie-gastronomichnosti', '', '', '2021-08-10 16:20:00', '2021-08-10 13:20:00', '', 0, 'http://localhost:8888/rest/store/?post_type=banners&#038;p=51', 3, 'banners', '', 0),
(52, 1, '2021-08-10 13:18:35', '2021-08-10 10:18:35', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Плитка', 'grid', 'publish', 'closed', 'closed', '', 'field_6112516acaa4c', '', '', '2021-08-10 13:18:35', '2021-08-10 10:18:35', '', 41, 'http://localhost:8888/rest/store/?post_type=acf-field&p=52', 2, 'acf-field', '', 0),
(53, 1, '2021-08-10 13:18:35', '2021-08-10 10:18:35', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_6112516acaa4c\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Поля плитки', 'grid_data', 'publish', 'closed', 'closed', '', 'field_61125180caa4d', '', '', '2021-08-10 13:24:18', '2021-08-10 10:24:18', '', 41, 'http://localhost:8888/rest/store/?post_type=acf-field&#038;p=53', 3, 'acf-field', '', 0),
(54, 1, '2021-08-10 13:18:35', '2021-08-10 10:18:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок', 'title', 'publish', 'closed', 'closed', '', 'field_611251a1caa4e', '', '', '2021-08-10 13:18:35', '2021-08-10 10:18:35', '', 53, 'http://localhost:8888/rest/store/?post_type=acf-field&p=54', 0, 'acf-field', '', 0),
(55, 1, '2021-08-10 13:18:35', '2021-08-10 10:18:35', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Текст', 'text', 'publish', 'closed', 'closed', '', 'field_611251cbcaa4f', '', '', '2021-08-10 13:18:35', '2021-08-10 10:18:35', '', 53, 'http://localhost:8888/rest/store/?post_type=acf-field&p=55', 1, 'acf-field', '', 0),
(56, 1, '2021-08-10 13:18:35', '2021-08-10 10:18:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Под текстом', 'under_text', 'publish', 'closed', 'closed', '', 'field_611251e7caa50', '', '', '2021-08-10 13:18:35', '2021-08-10 10:18:35', '', 53, 'http://localhost:8888/rest/store/?post_type=acf-field&p=56', 2, 'acf-field', '', 0),
(57, 1, '2021-08-10 13:18:35', '2021-08-10 10:18:35', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Ссылка', 'link', 'publish', 'closed', 'closed', '', 'field_611251f9caa51', '', '', '2021-08-10 13:18:35', '2021-08-10 10:18:35', '', 53, 'http://localhost:8888/rest/store/?post_type=acf-field&p=57', 3, 'acf-field', '', 0),
(58, 1, '2021-08-10 13:18:35', '2021-08-10 10:18:35', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_611251f9caa51\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Поля ссылки', 'link_data', 'publish', 'closed', 'closed', '', 'field_61125210caa52', '', '', '2021-08-10 13:18:35', '2021-08-10 10:18:35', '', 53, 'http://localhost:8888/rest/store/?post_type=acf-field&p=58', 4, 'acf-field', '', 0),
(59, 1, '2021-08-10 13:18:35', '2021-08-10 10:18:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Ссылка', 'link', 'publish', 'closed', 'closed', '', 'field_61125242caa53', '', '', '2021-08-10 13:18:35', '2021-08-10 10:18:35', '', 58, 'http://localhost:8888/rest/store/?post_type=acf-field&p=59', 0, 'acf-field', '', 0),
(60, 1, '2021-08-10 13:18:35', '2021-08-10 10:18:35', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Внешний ресурс', 'external', 'publish', 'closed', 'closed', '', 'field_61125264caa54', '', '', '2021-08-10 13:18:35', '2021-08-10 10:18:35', '', 58, 'http://localhost:8888/rest/store/?post_type=acf-field&p=60', 1, 'acf-field', '', 0),
(61, 1, '2021-08-10 13:22:37', '2021-08-10 10:22:37', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Панель', 'badge', 'publish', 'closed', 'closed', '', 'field_611252d71b176', '', '', '2021-08-10 13:44:24', '2021-08-10 10:44:24', '', 41, 'http://localhost:8888/rest/store/?post_type=acf-field&#038;p=61', 4, 'acf-field', '', 0),
(62, 1, '2021-08-10 13:22:37', '2021-08-10 10:22:37', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Включенно', 'available', 'publish', 'closed', 'closed', '', 'field_6112530a1b177', '', '', '2021-08-10 13:22:37', '2021-08-10 10:22:37', '', 61, 'http://localhost:8888/rest/store/?post_type=acf-field&p=62', 0, 'acf-field', '', 0),
(63, 1, '2021-08-10 13:22:37', '2021-08-10 10:22:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Текст', 'text', 'publish', 'closed', 'closed', '', 'field_6112531b1b178', '', '', '2021-08-10 13:22:37', '2021-08-10 10:22:37', '', 61, 'http://localhost:8888/rest/store/?post_type=acf-field&p=63', 1, 'acf-field', '', 0),
(64, 1, '2021-08-10 13:22:37', '2021-08-10 10:22:37', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:3:\"red\";s:14:\"Красный\";s:6:\"orange\";s:18:\"Оранжевый\";s:5:\"green\";s:14:\"Зеленый\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Цвет', 'color', 'publish', 'closed', 'closed', '', 'field_6112532c1b179', '', '', '2021-08-10 13:49:28', '2021-08-10 10:49:28', '', 61, 'http://localhost:8888/rest/store/?post_type=acf-field&#038;p=64', 2, 'acf-field', '', 0),
(65, 1, '2021-08-10 13:26:42', '2021-08-10 10:26:42', '', 'image 1', '', 'inherit', 'open', 'closed', '', 'image-1', '', '', '2021-08-10 13:26:42', '2021-08-10 10:26:42', '', 40, 'http://localhost:8888/rest/store/wp-content/uploads/2021/08/image-1.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2021-08-10 16:24:08', '2021-08-10 13:24:08', '', 'New', '', 'publish', 'closed', 'closed', '', 'new', '', '', '2021-08-10 16:24:31', '2021-08-10 13:24:31', '', 0, 'http://localhost:8888/rest/store/?post_type=banners&#038;p=67', 1, 'banners', '', 0),
(68, 1, '2021-08-13 15:55:36', '2021-08-13 12:55:36', '', 'Новый магаз', '', 'publish', 'closed', 'closed', '', 'novyj-magaz', '', '', '2021-08-28 16:23:47', '2021-08-28 13:23:47', '', 0, 'http://localhost:8888/rest/store/?post_type=stores&#038;p=68', 2, 'stores', '', 0),
(69, 1, '2021-08-15 16:37:46', '2021-08-15 13:37:46', '', 'image-1', '', 'inherit', 'open', 'closed', '', 'image-1-2', '', '', '2021-08-15 16:37:46', '2021-08-15 13:37:46', '', 16, 'http://localhost:8888/rest/store/wp-content/uploads/2021/08/image-1-1.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2021-08-30 18:37:38', '2021-08-30 15:37:38', '<!--(figmeta)eyJmaWxlS2V5IjoiVVI1WldRQllBQ004QVlScVNrRmpVbyIsInBhc3RlSUQiOjE4MzAyMDU2MTcsImRhdGFUeXBlIjoic2NlbmUifQo=(/figmeta)--><!--(figma)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(/figma)-->Изюминкой «Цезаря» была, и остаётся его заправка, – особый уникальный соус. Надеемся, что наш шеф-повар сумел максимально сохранить классические нотки, которые оставил миру в наследство великий маэстро Цезарь.', 'test', '', 'inherit', 'closed', 'closed', '', '16-autosave-v1', '', '', '2021-08-30 18:37:38', '2021-08-30 15:37:38', '', 16, 'http://localhost:8888/rest/store/?p=70', 0, 'revision', '', 0),
(71, 1, '2021-08-16 18:06:27', '2021-08-16 15:06:27', 'У нас проходит акция: при покупке замороженных пельменей действует скидка -10%, -15%, -20% и -30% в зависимости от объёма', 'Уважаемые поситители', 'У нас проходит акция: при покупке замороженных пельменей действует скидка -10%, -15%, -20% и -30% в зависимости от объёма', 'publish', 'closed', 'closed', '', 'uvazhaemye-posititeli', '', '', '2021-08-16 18:09:04', '2021-08-16 15:09:04', '', 0, 'http://localhost:8888/rest/store/?post_type=news&#038;p=71', 3, 'news', '', 0),
(72, 1, '2021-08-16 19:32:24', '2021-08-16 16:32:24', 't', 'new', '', 'publish', 'closed', 'closed', '', 'new', '', '', '2021-08-16 19:32:24', '2021-08-16 16:32:24', '', 0, 'http://localhost:8888/rest/store/?post_type=news&#038;p=72', 2, 'news', '', 0);
INSERT INTO `rest_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(73, 1, '2021-08-18 20:27:48', '2021-08-18 17:27:48', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"stores\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Поля для ресторанов', 'polya-dlya-restoranov', 'publish', 'closed', 'closed', '', 'group_611d42d815491', '', '', '2021-08-28 15:09:08', '2021-08-28 12:09:08', '', 0, 'http://localhost:8888/rest/store/?post_type=acf-field-group&#038;p=73', 0, 'acf-field-group', '', 0),
(75, 1, '2021-08-18 20:27:48', '2021-08-18 17:27:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Адрес', 'address', 'publish', 'closed', 'closed', '', 'field_611d43055ef95', '', '', '2021-08-18 20:42:40', '2021-08-18 17:42:40', '', 73, 'http://localhost:8888/rest/store/?post_type=acf-field&#038;p=75', 0, 'acf-field', '', 0),
(76, 1, '2021-08-18 20:42:07', '2021-08-18 17:42:07', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Карта', 'map', 'publish', 'closed', 'closed', '', 'field_611d45a555fb3', '', '', '2021-08-18 20:42:40', '2021-08-18 17:42:40', '', 73, 'http://localhost:8888/rest/store/?post_type=acf-field&#038;p=76', 1, 'acf-field', '', 0),
(77, 1, '2021-08-18 20:42:07', '2021-08-18 17:42:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Широта', 'lat', 'publish', 'closed', 'closed', '', 'field_611d45b755fb4', '', '', '2021-08-18 20:42:07', '2021-08-18 17:42:07', '', 76, 'http://localhost:8888/rest/store/?post_type=acf-field&p=77', 0, 'acf-field', '', 0),
(78, 1, '2021-08-18 20:42:07', '2021-08-18 17:42:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Долгота', 'lng', 'publish', 'closed', 'closed', '', 'field_611d462755fb5', '', '', '2021-08-18 20:42:07', '2021-08-18 17:42:07', '', 76, 'http://localhost:8888/rest/store/?post_type=acf-field&p=78', 1, 'acf-field', '', 0),
(79, 1, '2021-08-18 20:42:07', '2021-08-18 17:42:07', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Маркер', 'marker', 'publish', 'closed', 'closed', '', 'field_611d463c55fb6', '', '', '2021-08-18 20:42:07', '2021-08-18 17:42:07', '', 76, 'http://localhost:8888/rest/store/?post_type=acf-field&p=79', 2, 'acf-field', '', 0),
(82, 1, '2021-08-18 20:46:41', '2021-08-18 17:46:41', '', 'Group 68475', '', 'inherit', 'open', 'closed', '', 'group-68475', '', '', '2021-08-18 20:46:41', '2021-08-18 17:46:41', '', 68, 'http://localhost:8888/rest/store/wp-content/uploads/2021/08/group-68475.png', 0, 'attachment', 'image/png', 0),
(84, 1, '2021-08-18 22:38:25', '2021-08-18 19:38:25', ' ', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2021-08-18 22:38:25', '2021-08-18 19:38:25', '', 0, 'http://localhost:8888/rest/store/?p=84', 2, 'nav_menu_item', '', 0),
(85, 1, '2021-08-18 22:38:25', '2021-08-18 19:38:25', ' ', '', '', 'publish', 'closed', 'closed', '', '85', '', '', '2021-08-18 22:38:25', '2021-08-18 19:38:25', '', 0, 'http://localhost:8888/rest/store/?p=85', 3, 'nav_menu_item', '', 0),
(86, 1, '2021-08-19 17:31:51', '2021-08-19 14:31:51', '', 'Обратная связь', '', 'publish', 'closed', 'closed', '', 'obratnaya-svyaz', '', '', '2021-09-13 23:52:18', '2021-09-13 20:52:18', '', 0, 'http://localhost:8888/rest/store/?post_type=static-block&#038;p=86', 1, 'static-block', '', 0),
(87, 1, '2021-08-19 17:33:03', '2021-08-19 14:33:03', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"86\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Поля для обратной вязи', 'polya-dlya-obratnoj-vyazi', 'publish', 'closed', 'closed', '', 'group_611e6b60d6baf', '', '', '2021-08-19 17:33:03', '2021-08-19 14:33:03', '', 0, 'http://localhost:8888/rest/store/?post_type=acf-field-group&#038;p=87', 0, 'acf-field-group', '', 0),
(88, 1, '2021-08-19 17:33:03', '2021-08-19 14:33:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок', 'title', 'publish', 'closed', 'closed', '', 'field_611e6b6fd53c8', '', '', '2021-08-19 17:33:03', '2021-08-19 14:33:03', '', 87, 'http://localhost:8888/rest/store/?post_type=acf-field&p=88', 0, 'acf-field', '', 0),
(89, 1, '2021-08-19 17:33:03', '2021-08-19 14:33:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Текст', 'text', 'publish', 'closed', 'closed', '', 'field_611e6b86d53c9', '', '', '2021-08-19 17:33:03', '2021-08-19 14:33:03', '', 87, 'http://localhost:8888/rest/store/?post_type=acf-field&p=89', 1, 'acf-field', '', 0),
(90, 1, '2021-08-19 17:33:03', '2021-08-19 14:33:03', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Шорткод формы', 'shortcode', 'publish', 'closed', 'closed', '', 'field_611e6b93d53ca', '', '', '2021-08-19 17:33:03', '2021-08-19 14:33:03', '', 87, 'http://localhost:8888/rest/store/?post_type=acf-field&p=90', 2, 'acf-field', '', 0),
(91, 1, '2021-08-19 17:33:47', '2021-08-19 14:33:47', '<div class=\"form\"><div class=\"form__item\">[text* your-name placeholder \"Ваше имя\"]</div><div class=\"form__item\">[text* your-phone-email placeholder \"Контактный телефон или email\"]</div><div class=\"form__item\">[textarea* your-message placeholder \"Текст вопроса\"]</div><div class=\"form__item\"><div class=\"control control--checkbox\">[acceptance politic]<div class=\"control__fake\">Даю согласие на обработку персональных данных</div>[/acceptance]</div></div><div class=\"form__item form__item--submit\"><div class=\"form__item__submit-inner\">[submit class:button class:button--red \"Отправить\"]</div></div></div>[hidden your-place class:place]\n1\nСообщение с сайта\nburlakeugene@gmail.com\nburlakeugene@gmail.com\nОт: [your-name] <[your-phone-email]>\r\n\r\nМесто:\r\n[your-place]\r\n\r\nТекст:\r\n[your-message]\n\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <burlakeugene@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nСообщение отправлено!\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nПоле обязательно\nThe field is too long.\nThe field is too short.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'callback', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2021-08-20 00:07:30', '2021-08-19 21:07:30', '', 0, 'http://localhost:8888/rest/store/?post_type=wpcf7_contact_form&#038;p=91', 0, 'wpcf7_contact_form', '', 0);
INSERT INTO `rest_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(93, 1, '2021-08-20 23:51:49', '2021-08-20 20:51:49', 'Предложение действительно с 11 мая по 31 декабря 2021 г. включительно с понедельника по пятницу, кроме праздничных дней с 17:00 до 19:30.\r\n\r\nВы можете приобрести на выбор «Ужин за 150 рублей», «Ужин за 250 рублей без алкоголя», «Ужин за 250 рублей с алкоголем», «Ужин за 350 рублей без алкоголя» или «Ужин за 350 рублей с алкоголем». Ежедневно в акции участвуют 5 ужинов в ротации:\r\n<blockquote>fsafsa\r\n\r\nfasfasf</blockquote>\r\n<!--(figmeta)eyJmaWxlS2V5IjoiVVI1WldRQllBQ004QVlScVNrRmpVbyIsInBhc3RlSUQiOjQzMjc5NjAzNSwiZGF0YVR5cGUiOiJzY2VuZSJ9Cg==(/figmeta)--><!--(figma)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(/figma)--><strong>Ужин за 150 рублей:</strong>\r\n\r\n<!--(figmeta)eyJmaWxlS2V5IjoiVVI1WldRQllBQ004QVlScVNrRmpVbyIsInBhc3RlSUQiOjMyMjk3NjgzOSwiZGF0YVR5cGUiOiJzY2VuZSJ9Cg==(/figmeta)--><!--(figma)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(/figma)--><!--(figmeta)eyJmaWxlS2V5IjoiVVI1WldRQllBQ004QVlScVNrRmpVbyIsInBhc3RlSUQiOjMyMjk3NjgzOSwiZGF0YVR5cGUiOiJzY2VuZSJ9Cg==(/figmeta)--><!--(figma)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(/figma)-->\r\n<ul>\r\n 	<li>№ 1 (Пн.) Винегрет, каша гречневая с морковью, котлета из цыпленка с брусникой, напиток цитрусовый или чай пакетированный;</li>\r\n 	<li><!--(figmeta)eyJmaWxlS2V5IjoiVVI1WldRQllBQ004QVlScVNrRmpVbyIsInBhc3RlSUQiOjE2NTg4Njk0OCwiZGF0YVR5cGUiOiJzY2VuZSJ9Cg==(/figmeta)--><!--(figma)ZmlnLWtpd2kKAAAAkyQAALV7f5wkSVVnRFZV/5iemZ3Z36yIiIiIqLOzy+6CiGRlZXXldFVlbmZW9cyIFNlVWd25U7+orOqZXhFxDxFxRURUDpEDjkNEDhERkUNUzlPPQ0X8jYiKeOf98jzvzvM8f33fi/xV3bN+/Mf5fKbjxYsXL168eO/Fi4ist8lWGMfBfugfzUIhbrlkW+2e5+uuL/CvbdfMntHQ29umh6rseKZbqGtMbbZrgEuetd3Wm4DKnn+laQKoMNDzTOK1xrTMueftWE7PNZu2Tj3X27Zv1a/0vIbdadZ6HWfb1WvUfyMBezW7TfXNtO6addf0GkCd8gyzbfaAdhq9hzumewXIrSLSNZ0mIU/XrHod5RmjaZltv1d1MbqheyTbWf1GFGM6lwELIpZ6vw+1AOWaeq1nt5mF4Mqua/kkjWxPB6FzEMQhyAw0+SbNBkQtu8ug3I0mg2iy7y5HRNO221dN10aDsGvcThyU3u9CowmUqNlGpwX5AEpDb3d1D5C27dodB0Cp7uotoitXbbtp6u2e7Ziu7lt2G8hK1zR82wW0RnpGud60mO2G2WxajkfgpgsiLCCv0CnX3O40dbfn2M0r28xkC0O1a2YNisvpTvvmZRLpjNe0DEKc9a60qjat9i1WG4O1GXvO8y1jh1R13mvojtnbtfxGL+l7q2G32+DJAt5mkGVVm7axg9rtu1Ztm63kDvBq0Uzv9A6CWbgbLQ788MZCKWnDe7ijuyZaRT4fWbP0ls0mqPmuxRLDhlAtZdWavUtTK99sahVHd/VmE8YIe2n1XGu7QYKsraKbZp2w69VROBm0sGyYgqN7Xs9vgOk2mSKcxW2xA8ia7u6YNKLW6jR9SxlgidYCqq52XGoqG3bTzmqVJo3LfdY8GBNDvHroUbOhHdQ3VJe0ugkzc5s68T7l2XW/xzxQ22robi2rseGbrqmW6Ix52Wh2PGUwZxsdwt3i6X4ns6JzPAqA881Oy2rbnuXTELc6QTRJFmLds5sWaVxAOTV2JyUqMDJDUcn6gPkCJBSUTuYGXCnDgShZv7LV0nlmFbjQJQvAmjVGaPL6wShUSkdscU3fYH3XLZqerFtNHsS3eD1L5nAY9hNByxZMzkVk0WECaBQ113byqqzbcAAsYLsGW+yQXFpVN3ZWUSWyQIP9fM2GfVgqzImOA99DKZv2LgMQwVcyeDCEZs/QHfLecl7r1W3X4NhQIaa1sD+dB4toOkGfNAJgZCwr1AlYYrrWjpkbmdZejvfCeWcSLWL0cXWahnCsy2bTAyAhEWIf6UUzppN4MS8sGhYTeEHtLK5s6RTwNIyRqLTkGTpPoFwHx1pP9agkFaZe8xbz6bVQH0X7E3TImAmEAYujtrQ7fgJqitgIZhg+nR+mwqstM2/WdNe1d9mEaBIlVTUf7lhNBFW4IZDlxEx6tNyJBlP3zlCJcJemEcnWQpxm0apm1yQeMh1aq06nozCY2LMwVX+501bmj4mgm4cIAVh6narv6gxrl9kr2Bp4+o3pPHp0OlkEI3RPAkRBu7AU9j/tUgdhsW6xhHnvbjhfRDBswtkOmgpdq7bv2y1AWmu6jENjOY+nc/h/zazrCChoEIZre7BjywUszSsmGTYWHzUN2zMP5eiYCgKMAQNCvexwUKmgMKwmoLUWhSnqst6Fx0znrWg+p3EyU2T1opQMwHsRVcz2tk+2otWC+EA5pWYgGAMlckuS7LjK8MpOexsocckxqZRelwrNqdF2XDJvzKbzxXFjLWGzQDhEqpBYpEgR2Cp4fJkiGmaq6GZwNF0utufRQDEpK/stKDYXUFPmXMr7OMFiEc4naAKV5bApIr5xnJO8bMvF1A3j6FGwzlTE4rBmMjlkBsH+j0ahFyaTgupdz06ih2/qtMLSgHWotUZOgwymbVC0Lflmy7FdnfOZcsoGWlqEmYpOBGGAMg2hGDroX1PrkwnbQPi6CrWxBBK7B7ZrhhU12yXIT6hN6UoRGdMlhJgntJUnpM00XdI7PiU9mAW6X1rGi2h4hOoT9nR0w+zBZVXSVeJuntI6RyIgkWR51lWz59twfp73CgJGgkWxWg6yFdSoBTQUEScwdPi70mAl1Qv8xHSxLj3Kd1GXHZe1QnsBypLRtDnXKFs09aDA4rTd7sH6mUzodbDp+VbLRAhEXbZsJMw9nqemYNVQQq8G7d6Ay6oBGxKRVVSN85c1UDmYFxliGj03aq5O3rOJth3zStrtFKpdW6VmW/48mMRRLuM9CM1Id/weIhmCdLLNi5rlwYK6JkBZR1aNUkN6h7Ss7tpZxlMqoNKIVi7gVOyqFDBZ8FpzOl5D4RJm6zkm5bWRoxSrzRyRcTpFGbXCJZy2ckzK6XSOUpzO5IiM01klKJYBRCmzW1aQKb9zK1jF8vwKLuN6K4+UYBOmtxVxKc/bi0jF8o4iKuN4J9zYMnrUhtpdyCBwbNLb8G4+e9yNHNFGTpFjnmQGMY4aasU3cNIyOlXLQIMg1mlFIp8rVDXaclU6hh5k7VlTmehWMBXVdwW3pqJXVl/3+vPpaFSL5srPwCcx3H8g9mDSHCdUXzjpglwsHMDxFyHazcsO4qvyewMcaD/mmtzuIABKLcZRDYMBXhdyNMWmyiD8fYTtTJbnYlPIffzR9vCnFOBPWe146HwDNXmEP5oLFKhzxHX8KR3gT5k5eYvpDB36BIuukLOp8jIQaK1gMY9uCLk2vnABdTm+cC8KbXzhIorS+F5Clsf3ErIyvpeQa04wRyy3JoMQ/bT9ZTQQfoHpVprrofEwGC1D9JFLzvvuEVodWmoH41DI0jAYR6Mj0MuYtgkAGpgs4v48mi1QKxFtN5hHAbosx+E86tej/eUcqsXGkBxZBCzB4m1a2s0an9sB8zCrXb1Z0IedrfR1kHvYWM9ka5O+Xk2y/JswqNPi0gSLHJDc4fTJMPZoWBivb7G3Ecxi2FfeBS7Beb9E0UsrmmMiByfRS0D0shpldzjrE1gBCpPdBrhW4O+kei+KhewPf5EEYuMGwPJ4rGQsTkZlwabZ+iXySY659TBYsIL/WDpI+9EkjIsOkyRSaIbjEb5E0qBkAVFWkhuCNc9qU3q0bru1NsoNve5S+2atzfHhVLvTIpG2cMrTUZ7GJkRTOlNT5dmGKm/BSYLKc7rOeeN5Q5W3ugaXt3mqfrvb5XPoHeSYKO/0dvl+5S7D26XybiwO4Z9kGHw8v8dTm/vnNSy+QXlyssd+vu22Sb6nkFJQfgG2HFrKp9Z8PqB8Yb2p0zye1tp2ac/8Ig+2hvLpSERp/C+uI6FC+YyGKr+kocZ9pq/qX/qwKp/lqPLLKLlG+exmvUr1L7cdLr/C9bn8Skf1v+DstElP9zYRPlBeREly3uf6Tarfj5Lqz9GrbhflA3q1S/UHUZLcD3UVn+d2IRDK51Wbu7Q+X4WS6J6Pkui+Wt9p0DxeYFziQ8PXGHV2hBcaDtd1o+MSXRW7L9UNBDcqa3XF36zjdImyjvIiym2U96FsYFgaz0JJ/C811Hww2jbJ02zYl8hukFRxPtS2sLejtC85Dz6E0rnkPER8Hr7kPPcCSveSc+F+lF7zUov6+biJIfoONhpal27LrNEBfBclyXG5tdMi/JV2k3Odq+3Ojo/ya5GgkFwvQumh/LouFI7yxY7nE76HkvAvcXdcqgeu06Byz+1Uad37HpI0lANfyRH6bU6Lh1gmWr/9Lq4mUB50VXvUVfN+pLvD9nKt6/ouyhHKiyjHnofIK8QEJdWnKO9DOUN5P8qXonwOyjnKB1DGKB9EuUBJelqifC7KQ89DzBbiOkridwMl8TtCSfweRUn8vh4l8XsZSuL3DSiJ38tREr9vREn8XiE97yIx/CZpdFnCxwgglv+MAOL5SgKI6TcTQFxfRQCx/RYCiO+rCSDG30oAcX4NABb12wggzo8TQJy/nQDi/FoCiPN3EECcX0cAcf5OAojz6wkgzt9FAHF+AwCW+bsJIM7fQwBx/l4CiPMbCSDO/5wA4vwmAojz9xFAnN9MAHH+fgKI81sA3Eec/wUBxPmtBBDntxFAnN9OAHH+lwQQ53cQQJz/FQHE+Z0EEOcfIIA4vwvA/cT5Bwkgzu8mgDj/EAHE+T0EEOd/TQBxfi8BxPmHCSDO7yOAOP8IAcT5/QCeQ5x/lADi/AECiPOPEUCcP0gAcf5xAojzhwggzj9BAHH+MAHE+d8QQJw/AuAB4vyTBBDnjxJAnH+KAOL80wQQ558hgDh/jADi/G8JIM4/SwBx/ncEEOefA/Agcf55AojzLxBAnP89AcT5Fwkgzv+BAOL8cQKI8y8RQJx/mQDi/CsEEOdPAHiIOP8qAcT5kwQQ518jgDj/OgHE+TcIIM6/SQBx/i0CiPNvE0Ccf4cA4vwpAByifpcA4vxpAojz7xFAnD9DAHH+fQKI8x8QQJz/kADi/FkCiPMfEUCcPyeP3zUgtVpguxYXhUxTLI1yylYwm1GSI7XhfDqmtGwxxV+tOpruCSn3jhZhLEpSXXIIrYRHgAOqTygjQ/41CBYB064j+4pGODMalDTqg0dw+hVyY0FjI52LD4LB9HoMUDuI9g9wpD5AeoeEcRAugmgEqBxC5JhyCSSOhzhyh7ikALy2CMd8eaWa1g+jPZz6+gRv8EWtGjZ52xHaqX/aIftIjOYB5rYpNvfmxHOCkVE7xcII7Tzr+ZyQfVIEsmdtSonkgvLs0mEUR3tIqqQoo0ju18+KSoyEOxYvkmvgPYmH0/lYvFisR6z0R8UGA/4BkuQJSf6o2AwmwOHkYFELEOcUAmkdsk4szbo4j3rxQvlWcWo+xTkDJJBkK6YGAKeHrD6DhE1W7WXizIzmUucW8XJxNhxPH4kMcHFw3wglrstbKEFsQZE1GIDQKtfCIzEQcghsM5qEjZA0A/YaYWrRfgi+JWTwqKm0cibKVNlVhBVcvaLGGSpLqJUCPFT5wT5mIgls06xgcKn18vWiGvx0/yCgVDucx6CQWY0HsmokrhYTbB+Gc1x/hX4A5cORZGnEd2J85XIZS4Kb7xGkj7HVyMr+6Gh2EGOPkWuD7PY6xg4j11W3LgYEChJuDCF8po3HpNwcBqPRHm5z6miIxUCeOoBVzMH8WnV6AwO8Wsot1AD9tZSnG4VGoZX3cPE0iMVVnILmI0wpPTKVDlI6ZIQVvIwl8gptHXaskvrLQl6PBgs6y2nUdgVAiYBsScpU0+M+jmSorQ+jebwwUp1hMhXYZbG+tk2KENpafzoeBxAs8ff8AHdZKP1CKoSBIabMGsVQJ5kHg8PEldZqmVaFps1xJMWUpcw5aerkyjrVSodcaYeL69P5tVSECTwlGGGwAY+YCnJyoSnW4doT05CkzFj4UnpH473pKGEfcwXj+ogcDKdMYmKg4TxKbumR29QxG7g2FJuyTcOopvFCyRlwyDNwdoLTbIcTCiaYpxpLToucZQ1nxUPy5PFyQfKyAytKbZUSlcTgNA86xaRZUDcchjhgQ6na5jAahTvwRfhBzI08Iy3p2QgQvXFOJhU4EDERO0a6I8tprK+MIoS7+RHNzZ96yz06X++BjBDiUJIdzKYTmI8aaH05GY7oRnkCmiLHjSjupE0hgoPYVFIbaf9WEMMq1FRL/RSruMrZcm8UxQdgRuOStP7UD4NxM5eOBtGOD1KysOeRidmYNOnOW9CstdI0qRMre+hdh6TQekJMi4WIvSLCqvZvzrd78R/Fma9qvMKCpF0Ua/WQJ7QN3jtuJ0kQjnnvGA7jcAHDLs2DQbSkjaacbyIVFNkmshbP5mEwAMV6fDC9Dl1j+6uG0OCArBDkGz7tLuyz1mQ4hX3xeE0hB0tloOisOdgmptRQCw+jfvqykV5u0emHH1mkgfMon9A1xuG+i+5FUC+pjm6628ALks6GsdvjjEceGwRBjypIamG3iSdjNpi6NcB6RMMI0QOGi16K57uxg9rQISKxk4Qhnxjg5RiS8B2GwK1jekUpCc5aNKqlF5UlXMphHillOalmxJUEkdLjLand4ZPfeiJAFXF+f04x28ovzTFKNmu6U+/h3ho3F7hRxNVi8mgoTzBQc8h64mRr1XrpK/VJch2GhthKVqZpexmaubwfqsxRRmpQ7QCJDuuQqfAyoHdxscJ3RwJ3sMkzu/R2+TZHo5K+ZWECvJryZax65TCRPc0XHpImOGmM4BMvh0NcDcJ5OffgAS4IXCPCFVQWuhCl+HCfPJ73cywiqshCyT4/DHtGzV4uaIOi7R3tCDbQKfZQe4KbPwnTPtyvT+d9eB+9fyKCXIuB3ljGob4XT0fLRVil+RJyMxGwu52MIDSr3mubZnLDqjd39SseANnk/ZyexjCLBYl9v+CsQ2iInZm7lSbLsQdHhfJigf03cU4kj7HCemS62Nn2lwhH86S23k90vzGjKIV3twfE5jYiMBaNsxwMIjNW2V7vIJhgVa/DfaFe/rBmQyAwrOzBeKjCdueTxHRjqKyGHolR4HrRtXcIoyXfpZTMel299pZxGWO7BFWSd781xAvEZuZX2FDUfqriYbr/JLtIugcRAdYBM6N1xZxiwiRd8JqbXziiT74/JZfgCFCwSOgH/Ni4aEEwBbx+9XYbJpymYTVrPbuO91Fqxn0mHjrUp0FSn/ezMQM8Mk/29ck+FIXsH3GxUNUivIfN3TSEllQobiKTQt/lPII8chDFs1FwxIa5hZONqrIdQlpntNyPkg28NOMK9IZuKiFFh2tqWg63ueEoWE76B6pDecZI1WGM8wK8AyA8g1cTYCmKa+EoREYPOysbU4hLOUYroEMJVidd2+SFkeIZCi0JWkkMA1ROw1Ql42FOBjNK2yF3mIC0H0AYH7tsujYIuGM12Cdh6FlnAHC0kUO9YA0FcuUf6AYSRUuq8gBRO94JrFoNL+l46kH0YFPDlV2KUh/SyZWurUgJh2FiIInLbyOG5Z6RUWPd4P8wMgxjNqv2rvJn2LuezF4mWUJrehgmW910NNjhFUJyBmOtZ4bIORpy1AnWRHs89T9OE9X54zmzAyTaYk1oDCjkAzMYf/qo8RJRKlQVwYML8spTgjc2hXpoErBtVahUqOfm0WUtAVXD85AyXGNrWFeQQn9VfpjcSEDV8Hz0zFKBzayiGr+6j5i4AHCKAYV8QUzx6TKOgigV6msQprPj5+msohpfOIDfIyrB0SdiU54pVBWBHvBnAzQ5iH02r6nmar4bmRNKdGlyt5xAKmJjjMiO9nNUKlQt5HAOKyhuCOdPYhW5ST2t2FbbCShvXUEoono+vK20CcXedgKpiLdxXClGkduLdUXSKBx+7khh1WTBQoL9eTA7ICPBamyKO4+hFOGlDJu+QG2Ku47jFOkOhT0LXjHncwkI717FKLLmOMIqNSMUIHkSiqSmmlsxXPxamBzFN8U9xboiaS/goD5Sm2sYGySfV6wrEvsg+0gIiwEWvOE/WTz5ZnjVxUENA+m4mpmIp4jPL1QVwcMKYwQz8VTxlKyiGl1V50+gnia+IK+pZo9EZF6NTADxDPHUm6BVBz9r6aYfLD1TfOEJpCLuEN5ANBB3iqelsGrqUrVwtr1bfNEqRpHt7h3/Muvp4unHcYr08mEydq5AKPaLT2IV+ZVhNBo5VI/FK6R8Rl5V7VdBDVUpFFF8SRGhaL6WfCS5MtgTz8xrqvlFZNttuDYufb40hVXT1/Fkadt7lRTPSiuq7cUhH3RiXHDLL0tg1dJD/B0gj+DvsmBT4tni2cdQivAlyt+9NOv8kJRfvopSdAGNrHMIiuGD4iHxFasYRbaHLX6qUr8Y19PyKwt1RdFXFw80CbwliAt5VbUPYtqJsJuui3sTUDWEeRgxkgzw4jGUIhzSAm2H03G4mB/h/lveV0Qomn21RCmSqO5fRSm6A/h/8jHUC0SUVVTjI1xPIgi8+FqxrkhGjHKCAWVPIBkX64pkQjsjAv8BnWynaUW1zWJOrEg7eFQRL82rqn0+pMuNFgJxLYo53CMwxyeQingxVws1rSNuSYHL2KyqCA7VwlchoVJq2h/U11lwA1gEO3ZgURU3GHkJl5z0YVZNHMUqhWUp86z3zVI8GsUK66hrCGILrl8PKOtQvOt42UDd4qgWmjAd7L+hSN5V2TP2/5eTx/BdJ177kQJOJ006k9EEMcY3rrRC/BuLZYBcNad4Bd+zJiSYc38eUrBAvlOk+qYiVQO2AC9CtCiSPFYksedYYwQ9iXe6AtobYZ8PB1fD+RRNryw2tZPvHNQ3FkO85p1sTKxLHCAcnGytYwsh0cUjePgrNCPIx2KEW9ICzklzzwmeBMnsMIWPSvkaidiX3GpQJgdP9PFCOMNVAV8weNgQ84T38bwhNxv2Rbjnt0sEQKQzwYjSCMz2telVHXZntYjM5DuSu7VaCNVHMxoZq/o6SXeYSCOx7U5nzXCI1cvzA/jSd64QuBRNj1G8PqeoTheL6fgmXL7rOM3NGL0hJ8pbIsoyZkgMkWpgct99nMbH5rNK8j2kLXIxzDCGLSLiBNgJyL++Vyrbhv2qOzP4L3THlv8WiddSkCarwgn4OyUeTnOcjwUQTTyh5qhafgf1fTIMsm+82vBH6BlnxfxjKwfvqX0W2htPpwvccVGwequMJgcwK3q5GHkqFmO53pKiPQ6YecPb0wYfPpajfyBFmxxe8oZ3ZQ28deUNP5g20L6Ro9+dogvy1OnrKhID7T8hozhrgk6/H3XVmGLeJmOCWA8fk3gg5uqq3f2UXKYXoFBDMSi9Q+JEiUVJfXAP78noCU3a6lB1GcsCA0/C0g8lS+rRGIXl/DmJh+RCUx4of1biZTmKV2Pke2XIeiOl6jFuXwgA/odB6U2HSIQgVcIK6PcB3Z5OOrMBtuyExY8kYsLkYB99pkarcHGr1c9x2A0whR+VuHSCIR5EowHEqkWHCA10W/iBgnE5CHjh/BDvYcQXQ/wYMZpgFdHI6m3gTTtH0WexW+LHyf5VtEjuKd8jkXHEzCS7ufgFibsrjhwQC319kItLePXOh/ejcYi0Ajb6kSJlK0AF/9mjflKikrYUnOGjchBiw5pwHecXLBiSFHT46cL9nsrdsDPIn5E3NbpqRgrD+5gMkpuTX5R4VYe6VveuJidB3cQyKljnCaa6zxLw7D4o8fQ+PWRJ0rjMDe+VMJekge5AFmCcEmCtfj5ty8Wx8knDFqDMExR6fsv5AYnnfN4TEtm2MIMF7KuD1W2uSL2OZ3517UIzwsO+/DjetvcR7Qb2xPbr6sO1WMzlL2X44XCl4ZcLK+gdTJejgTfGZqLzUyvZ6a/ImBIKlV68UHxCVfODRZI3YRF/VTVBOE7Z84ZPqoZdfrOri19TVZVro/7rrA5EFb6s8MVvpO8iWF26SvjNtM4B57dgwUk4JvItXKBEsYE3f/E7KV046CYK2hKfShREC5VdVn1Cyt8FG4gPu5x7yxn5chKmKDTptF9S5KUE4tNK3CTNgkPSpOri93IGccLhCRh8RmZvmuK1mvh9eS088ufR/j48+HENORRiBrn+NixhBvo/zD2yYDixeEyTn5WHU7ioeYjZOwd4oyf9/BGsBbfFnSeIkJ9T8jtzrOj8KJP/j1fQvLzWIhzHSBn/o2pKZlxoeqH4T0kTBaKkK8SmT2v/RLUkq+7y2m6K/7yCVZs50P9FkqlTukZ5dTXEBBB9EDMxUTxb/lfVi0fh4b1wNERu+9+SpKQJVcbi41L+dyJMNOdgG4fpHXXpshKJHin/L6X8U0m+00RuyEv/V1L8DzypnnixfKMUf0YbwLFfKZ4W/5PWmSImbWrwDJir+PMcZyLYAPO/cgyES/a2T0vxv3M890bSh2P+/8mx6K9wf6FGJydPPGNT/N/MM9AZF9JvlfIvc+MADp422XdwH7AQr9bE/1slx7vd26X8K4lWTvjMyXJcx4EMeodc4v9L+DA8w1h1p7/OZTNg4NgFmH8MN5R/k4bRmzzkvkmKv827kgKzy85PSfF3cnTstvIzyPFxZa1EIw6paH+BtF5bxiffOh7T+lg3vAr0rzWR0i3pgvnPkcnz9xecQNNqxsjf5Ss1+gCmf2AjgUAogtFD0ilmj1wfMJh9M14dBvvhogW6AUaHbYlXJTh2rxhGKr9FG8Fw0txiE0pWFE5ia61wslSu8WdSfivkS1RJ7bVwGMOV5GtW0cgsYvFZKb9tFa3HMex8jFosPifl47gJLrSiE653yWzrUTgaIPBjJYYcD1cJczagT0mS+/s/kceIa8S1pK6CJ1hHrD5WBFtBMOqmPUorPRRak3SHo2DcXu+ySlhpuJVWP3lJfskiVFumZC2JxhBrK+1IfIu69GHa4KMbyVNrwuM4GSSfJai2kh1b3HS0iGYAtQgUzOhPeQrHzUaU/SuOidcWi7/XFYZDTw0y+YxVMzx6oSlZiXWaBcfBC2WTbuJl2ljDvNJGDbEmxjaAJdKRUki44RMGJ6zPLEFCYLVEsdiSGrlOE1ZHjPGsMgIIdYHb3nKECMmz+luJKfIJhm2+GR6GI5DwRzDtJf/OAG93itNE+acGU8aVMPV+BR7jbtJbq+YD4OXZrZmuenTotPOKtNo1PBsDwgtur6m+ey41U9Z4G2rq/BMpkfRJaWTGJcXkr/CsS7XNYcbKICEU7OmVeJxUDTHcU64+IWX9TabV1qKcjw80ElTMM0OtZKJQX9ZQSERL18Li3ly+yXZbyROmPOVdy2TRmaXQzuRkbdgflhCTynE+SHE41HJMUYqVo2E5p8kHLEhx07SNHpUpFKOd2TTojTbFqMx/A6GYslBKjY7lsJsnc+FT+YAnDhpbSt46Eixqx8vJaZjePFAESDnVQexMpiQ4RmHr0kqTxINxCiic+vKnODweJqtSU2cUUdkxr1Rt3SWbhIHutBFwevx7Ijyg8kcN8nLVvtxTb4qa492PouTtWr7R6Dn8q4zyTr7WGj1tUpzAo7fEMjE2Ges1sMEGhFYZnKapD9b4egZrqnWj8Dplf7DcfjA5DGLaLtJd66qQM5zcRlDZIeigK43rtZB0SS8xJdVpW3Er80+EiZX6lfCzhFTtzLQ57fOaQJdaAY3sSK0rfVp39ThHYxT1rwlJX21h25ixxtHf47VxUg1L3l1An5z8skXTfKUMHB2UuQjJHwMBSkaQB9NFPJsukqoWXw9mCZyuWtZZhaLKVNUSqn+IwSw1GSv316StnHSrInLOcHu+sAa4XRIV6DqGw+Kwh/gGXWp7cFwPF4gh7TsYLhk9Fm/SEG4zs86vXoRWt93dxLhcs2u6HlmRxJUWB0sHvfc4QcWGghHW8fCqBnszQuskvJ5VtBMy1kjGEqB0NsBgLlHcUJTWpB1ePzYFTGqQCfcWTSDQxbjVwspzEkY5NHFdX5XLoZdcGD39iMTS1Y/shF61XQVKw261LF9VtNWuO+HRkDI7uOaMubwd88JS7EMuunvTFghE8SIYz1ApeSRkcuSA6cYrQkncrS5SxSnu4q1QzEm0Bza42XuHJkpF9mUsHQwy41/aW9VlupwWdrQbMHEtZvrMgEvp1NT1C1br5NAk0U0E9TKJEqaJELF4F/aiFSHZr3A+zz20EsUptzrpUrHEWq6hU6avWLxTk+toQ5KkvpmgJAKXSVtCdmnzKeROSQDHPVAwGsHYQdJBIEZnYqzdufLLyYwYI2pJfC31k1vgMraJ/VBtAxUKTBzAXgfLGnP8eb0m1uM0quBAtjHdw0CHkFesy81BSHGxrXiegl3CVDnKxOINmtxSqkojC86gmsQ7+2ociMUbNXkGQ80h7ZY4y7pPaRJPgFvcsoJ3bhIL0N0X5xYpScq+RhqDe5+foZYvfizerclb+wVtv0cTtx2u6Pm9Gl69g8kurpdote6gD+vr2B49rBqMQYo7PUwYaR1eqh9ehnio0rQ42c/aSQzFBTOsH7ZICIPXJ84GQPo8gj45TUysFOtlcMB3QzUtEKklUnuND1Ob87FJg1k5ARRH6yoXwLvhGEkNBm/F4KNBQ3jABZ6rpQUg0vG6KGOgKuWaFawVVqw6nwaDPvQLl1q1nFVJPgjrZy7iQ/DMVG/aPbQQiByy2FeDphkoTfKJiz+QsgyJE0ONxfs0WWEViBtyjc4rwSgxpvWgj2uBWJTFRkxHaC/kV1e0bKZ1n4Z9njiV1g2c6TAbRj9fbPGHLxChIk4zmCgYyQdXcUVDwQ0Mz6qBneBoBD0AcUu8sqwRBH2/Js8VJpKt4Ac0cX4ITl3cMWDqmO+tzN3C0sAO4J1H9nIRR4PQnPRHcATkRhQCsGS3MaEDFcKBfXE77q6Qz8HMRogco85kMPVwcL0mPqLJOxnlhgXUXXvposXiw5q8G76n3NwLX7oMsSEkyf+6eBKPU8Xm1j/wpkvcD9UhsJr6PbVoODQOlpTNbBbmB9+WKtyvZd+GtdGMBUTo4KSChS4rOFmZiqpZMXslVCoQ4vrEPdb5DQGz9w8wT0JhiHVsxxEpCqvWiODH8/7BEYaQG7OTuE0SNV0jrTyBNKmwaFWOBCuCtMmM8F6G0EzVKg1DVOW/B74VAADlWWl0lFWavl+lUqwJBBKrJIBFZHOhArS0GpIqxE5waVFUUNDKGBW1UVGw4tqEyp42QdBuN1oUKuJ6bBU3uiopkXZBcKmKozAio9I4XXFpZqaZQZkR53nee1O5OOfMzJk586s9lu+T77nve9/tLt+n47hUjhq6bf+DDzv588+fseiiebMXnnb6OaectvD8ZRdcW7Vk/g1qpCpUTpFyux2lXMrt5P7shitqr1+8NKI8zsCVSqlBargaoZSjxJgap9yu3PNqrl7sn9Y/YigF/hExzKHCSOLpde/s2NH344NbYGj252NpyYGlvNy9Tff5p/snp+5JNwRO9KcegTjOn9qQei6VSD2XbvCnNqde8afi+PvVdGO6Pt2Qbven6/3paOql1Iupzen6VDLVBcV4KplugM5L+O9z/q1Ppx4B8TJMRDEE6unVWxMnUg0qfvyb6oJCFEwytSndkb7Ln9rsT70CozCR6k63p7r8qRdkSDLdJsO6/JhGtKCeXk0WHnDo76EMvc3+dCv8xF+vQsTFlc00kNqEv7v10JlI2gBl0jakTUWDTUpFdf7alb9FUtimVHmeypc8FjUoteXoejwdRapYjVZjXGPVMcqPUkxQEx1Hue4YUVDQ9+OgHP4HpXTUJDW5Efad485cGlm8XJ2/+Ora62qWK/lrSt9fxzt/fVVw96U+1+WoxupIgatt1tqSnCXVkbSbGRuAtK/PVZ55aPymqfEzXK3RAxtzGl0qatHzPG2Owg8lEBs5yo3nW6C28tH2o5TjuBrUZX+yGcezQqFyjsvVqJ6bbjMuT10kPYM6jeq8uM3kGJ0cMt/ZjNuzIp5Zrhy3q0mVT7CZXE9dlfcc5eSCKVxqMx5PHf5SjgdM1yM2M8CzoiMwSjkDwPwmaTMDPSsebR9L35rUt3tsZpDxbSCYW7+3mcGcZxk9aFYTJ9nMEDIF9KBZHQrZzFDjwSAwV51rM3kmUgfMc1fYTL7xYDCYG2+ymWGeOl84opwhYAIP2cxwT93UOHSGgulK2EwBqzBF67z+ic2MMDqM58sjqjDSxOO4WtSXQ2ym0PiWB2b7SJspos405eSDWTneZo5iDg5pa/OP6BCvsTYMzIwym/F56uKZEfS6RYXOtJmjjdfDwXgW2swoT11H4HjlFIB58xqbKaZvY5QzAszOW2xmNLMDJhfMpFabGUOdAuWMBDP6PpsZ66nDetHxjH7aZo4x8XCef99kM34zD3XWb7WZcUanEEx0u82UcJ5TcJSBWbPbZo41kR4F5pOvbGa8p66nMqTrM/+I7p3AeKbRt1aVO8BmJhrfvGB25tvMJKPjc7VGp3ltZjJ9i3JltUafH2czx2VXVqt6+IgVfLyJdBiYu46zmRNMteFBdOtUmznReJALZtUpNjOFTAE7vjV6xRFrLsB40PFFYDbOsZlSkzdaaz5iNU411oaAWbvAZqaZfmM8ddU2M93EczSYpZfbzE+4Tgu5h7RGv/+FzZzEeZZJpMoXsZkZZKYpZxSYkl/azE9Z08e1by+32szJxrdC6KxdbTOnsD7oHVa75AGbOZXZQbVZhQOP2EyZqQLmUbc9bjMzzTzF8ODSZ22mnL4do5zR0Dn1FZupMDlgh2xL2kzQ6pCXttpMyGSU8Wx802ZmmXjywEx532ZOM3lDpNHWnTYz20SKeaILP7WZ08081DnzjzbzM0un+IiVVWl0uBaG7LeZKvoWlZpG27+zmTnGt0JXm/rLEefpGdRBPMPAnJxrM2eaKnhxfKcH2sxZxtoYV1v08FCbOdtUYayrbcvXw23m5566L2PFyjkG87xbaDPn0IP1jLRNrRhlM3NNpHlgakfbzLnGA+jMivlt5jyjk++Su0Xf43lm6y9y1astcZs53yzFobhQ+PfazAUsgSzfRjW11mYuNDp+MGsO2sx8w4zEof1tuc0sYJhRlg3MGpu5yDByBdhnMxebYMbhYCx32cxCz4qb0x+yOM1q0SibWWRSUwjm9Zk2cwnnQampsy9sM5canRIwc1faTJjxxNgezcrzjM1UZ9ujWe1622b+xljzgZn9lc1cRg+ijLRFbRhsMzUm0gFg6kfYzOXZRdryo0ivMDo+MGUlNnOlmcdL5mSbWWx84yG3f47NXEUdZIdH5g8X28zV7ANZii2q8xqbucZ4UAym8Uab+YVZCOPAlEdtZkm2ci3q7A6budb4xsNUrbOZ62gtxH5rUbf9zmauZ32k31rUG0mbWcp4oso5lswHNnODmccBc/sR/XajiYeH9qKvbWaZ0RkKZtj3NrOc2cEqwYYYfdtjMzcZHWxhavwwm4mYecaDKRxpM7W0NkFv/WOLbeZms/Ufi3mcY23mFmueS0+wmVvNPMPB/LzUZm4zeeM8y4/okNvNPDiWovNDNnOH6Xgc5+rOKpv5pbGG41wtmWszK+hbgc7Ovvk2U0dmGjuxVYWqbWYlK4dOxDau3rrKZqKOURoDc+NusKl6UNJxjOjwzTbVAEpC8kPr8zqbagQlnpMa0GpTTX3USFBTVttUMyjTW63RZx60qRZQ4uEEuDEwZlOtjl7JAwcNchx5S86+MyvXSryg5RQ2hf7SWj3mT/+UWbSpaO8Q/+aijRXFbpW73qOGyougUieqgGulE3Wcekc14O0Sb5COanZUi6NaHYVXxl856n5HbcTo7Y7a4bjeddR7jlLOt5+8PsjFbyOqhF9ZZP6lNdf5z1163W3+02uW3lxzk/L0fTzQ3wz+R99c7nLwmjpxI765+MIvVuCRcvnCJwUhNahN54VcvbGZGnQEXCEwDMXXDzoCZSFXbdrpB1XeKUFQSoNwZFpQKE6RBaARV2f7glBt+qWgu8q7TEBpPArLu0TWpnNDLoKOwIiQmwAZhM1l+FXg4QKRbrgnIJE5XgZQUsNFQBtuAhrlSE7SN6uevyPwcRBG5ggojc8C9Y2RMv8sEDL/rFBp3B/iyM52TrFAJIgrBfTGrjUDrgWJ+QloA8YJaPRKMB/L/JTKSWQCoepITRCpresHtel7g/A+0A9IKUf14ltbR2CtJA+eDURUWbC+AuAMlM6A3tjTFSjC5qAv3BR0K/VtMJHZFgxHcpGgjMgq76CQm6A2PSHkC38C/8pD8cxake6eyp8IoMHO9okiGQ0qPAHtgLAI8N0JQV8arPIeFwpHHhQJ4jUBpfHPYGK0SJmMoDa9Hwl4B259BC82BHEnZ9RrK+KZhgoBiEmpegn1YzRMPOgmQImhNxY6BRU9lbegpeLd6K0NAtA/KwDKZtamK2FxDmapxN9QJfCFByLYFVA9FU5uCFZH5oVctEHgptEq7zRWBD4MFklV9ZrLWha9sRcQLD6eMXRI/ONDqZ8G60MCK5lignVIfA5kN2x+AY0tQRdBb+wPQczkQp7fQU6Go6Kfi2TxkJfhsDkeTn4Pr8tCPZXPipSVkgWYEkuGy5K1wKOTENGTQRTkJQGw/w8COE9pvE2kuEbgC7vx4M+iq4MxNgi02dJ4KiiPOgITmSA6MZHefSags/1fEdTRIsVtgo7AlzD7ER6kkPRnRIoNAnUBi1iGeu0Pwt7VKI0BiES5Otsf7gdC4ZbbD3pjQ7jnlMFdA0ipG5RT5c3DxPEEys69JZ7obJ8L17rLKTvbl1bAtbkw9Cq6hgMOQVLjUAVaqQcZPQRT9+P3Kn73o72hQUATekA8oTXiCVXDbWIuvNlRgbW4F94AsEnwDakCHryBZVHU3Rv7bUVvbEASecffM5KoSi4SMiMJw150oDvpC5cH45lYFxdnR+D2CkStrTJLtelxaDwUuqfyFUxvAHKjYGiGzhIB6wBqCAYbAIbUuH5AdVk/WFFQwCIgYGv7whciTdPQXwcr2PvYH2YJwBb1VQWXB3dsvVymaFUCLigOgOGZ1ADRjbkPCnDTKBclJ+EipQQRVF/ABV/4RDrGfWYCHJuI/cWD3izHJrQ1SIn0zBHAbHIJUVIddiMVaDOZPZ4p6aIGJaLxwExJF02yeTlHafyaIIIvEgDV4VjoDiI5gN9vKqhKibaoE4BXamyH04ELxVdoFCKIPPR2HUKdJO5RgjgggCZr00fjV4RJFVekjkxFcXomMsu5mXShvZ4SwPVe5R2Did5BAPez2O/1A+gpV3XkOxtsDroJmHy9oPOQr3tEYms5T4BSnyE3TGAbyvZ3EjHi2B7EGp0M859i7vmY91/g8q9Fon4JAZy2I/CZSF+4Kyh+JDIInaAj8Bgm+D3ceAIjWoA3BFkyVGYtbM7DMlktkpsl/JyHHq+U6gCjMjp6nFAqChvRCvTTTAEdgcGYvlskvuByKx8M5y7B0qjEgBvhSxMmuZVu3IeRKxDFWxjQCDfoaId2tCNwFkfwiRteb4JqFN2iJ+OVySmNZ8qRTJ6G14CRjVqvm+rIQsgtSFgNDLdzb1mCWbDJ9MZ29wOMVGjqHCTZANl2SuM+aAF0tucD/DaIhh0ArYOIPoOJeChWisRQupAF+GcxF8B4hPU9t9rx0IehKu867BQGYJDCrjK9b/pPAXZxiyTAkypvrnaIQLRK47u0HRqkZfUNzqnO9gBqk8/8cr88Gwn3IGtlXUwpJSqSEKBUBu5fhJkzsFPMcyuD6tXA1gf4rcLDFzBgNbPyAjTuoU0mfi3+2Av2GZFV3ndJ7MVQNm0XWiYPa65eJEqVL4A7ayJzCCW7HHl6N+jCKwhKD9VwhJ27D39UwhYbtlEkbD4qoLP9Zfz24fcyyB0s/8uY6EU8eAz7QAy4SSQyMrkfsJeQmmxTPSaADvZUXiBSgibAmkOa1kO3ASm7QySIUwRga5UBrDajQf11hvH/zHgArUMCURYWAVID3POCWM3LNPCF/1ZTOAl0DXlBKo2v4Y3AFDOR6cFggCpvGKlYR63x/cBQP+oXnhd9WIZBaiDNzAbKAjCc1+lzwNHzUj0LwCj1OKKCo+iEeUm0+AUC4pkmpGxyssp7bxAZ7oZJDw4P0dujvVNqDeq4twJPVmkAY5rCf/QkTAlaLwFQQ9CNIs/GmJwka4EhSezByPTBbmT5LoA5SXQlrylnJ6sjaazceck+3+RUKY0/EISdLtT3IwE9lT8g1ChUc3g0sHd3w+MSXuw/wAw7UOg4HjRg1T4gEsTZArghcRul5PYA3wYjkO1B/G8yBH8AFXtAJCZLCqjyfogf49+N3x+4WrlZ4IKn3eBNu0faX6kHRGJ79glABPCR2/Q8THyn3kr1XYIHURkuBzoytR9hsqQdgU3/VS+AeghTyna3R0BpHGcSkkfJexjm5ovYKgS5R6xRgxKq2jwvCkdBR6zJoaaBTEQqC8DIDZR6d9IALSEKXzgpgOVIZJaIVGoqU/YRexHhJfGARzW9xRZJG1lAVfUQdjFGhYwk5WkW8JaNgp4gACaDyH4Y28rlUGTpHxeJk+4bAfFMPg7IbbiP5KMX4B0BOhNa30gRuClQoscuE0CTPHs5RyLzJV9Zx/UDiZ6eZQE9Y9JKwKFhCDoC2/FbhOQegMkNImF/l4BE5p+RkjdFigaBUn6kZqf0IDUo0ZSXCKBJ9gwlNVQ9ssPkMUBE+qGAzvbDsH8SdtZcbL0OT7a9ooZG3Ilwu9EiSdhokLxTwqULBXAnw1sBfoNh6nZuFgNx3zCA2z+GEhwE3YOQ/ptmDkd+pZsZhzQeeqFV1sVZKXk8cZoYO2U4AnoXzagXF41SoqxvCvCF98FgWiQ1sCNoVbUTKwI3qHIkLomdJI3gsgAdiwTAxSwApTs2C9BsmjJAyqkTDKDUcKTuCTriQupm4LcHwRxGKRowAXT03FngNy3AR9gzzoKZHHh9MaxcCnkl5BN8eV+OKpvNOAuoI1MTqD0IrG/dI0GMuwwXyCHoy/ek6bg+0BpDkPHPYXqfZJ8alJh7lABmnwMoRYOAJjiAJqlBqWdjXAg2KIB7HpcapehqsBX9EQRhbYLsBgJf+GsZoCU0CLSJHjFJDUo5L3H/gokMD4dZSBTyzXWUBSgbtxxuCQb0xnC77Wz/nX6CImvASvbGPgwKwAMO/vGOxZdpAX2Tql/Dg3DkbphA2tm9vbH7ubbvBsjhW9RFGvBajQ8QvEi04V3wXu7sF2ktDiZgK/9ZEB49CTUY4hOjv00DvkWIIQIxREq0OJhApeEU7xTwnXGNwFMANg2vxRjHHTMLQFVHem0ASh83APxEBIbqZ2iAdYbXiFVstzN0NjCXBqAxZn3Q2DFAKM6VBUJxdxXAA0oodJAuXE9lK5YxpoBliUJ9gpB6Kt+HAjzgOQipgShUeZsF4KgqEICkYu86iO69GzvU67wU3g1LD6Pr/h790wA5Hb+lTN9kEDDG6xgkA2zCfno5PXy/H4DBAUXEuxamjgrAfni6AL6+9Mb4hWQsmhUzElRHPsXSnAPlf0SxmkUaawZQVbqI9UQ6eNvZqAHrKRUmkJqTynaBAM5kOkWrcwW2ISDoc98RgNi1IQIxREr0OViA/mIAQ3xCLbUZ50J2BSUyT8EW7gK9sT8KiGf4wTaKPYwfgop4VLmwT1yP+Pch/rtQvzewSHHF76n8QqLsjf0bvHjaSNzTCXpj3yFJH0KyZhwk1fzRAuYq90NpHYPyI4Tb2ZhPCcDusE0A7jqo1gKReD/mfvIxFuku1H8bHqzDsf6USLFBoMQsTwB5JDWhEwTopIQAfmzqjfGLWgpDt/PSk0JNn0eACTyISWyUYoNAvYZycqfhDQgVGg99E0wWICY2Gq8sSCrvT5D/qwuWRnfyEbk7mZCkAN6Q/i9XJpzQ2mEcuv0AbnKtHOwHfOlF3pqhuYRfBVYhJU9CoRsPyvApxcEpg+Onp3KSAH7t5tlBybkQ5Cx0zudwbRJ6gK96Dn44fhIZ/e6nVAdS2IsBzawbF85BbKIG0DNuwg6uZDh3wpG30Xd8y3oW6eKLC781YhoNtsLi2yB4l3KQ5APsk7ECeipPgENbjRSNE0AwI2PFNjUo8X83JO2cWaqZBUgJy8psGiB7DA/mLADTd5MwQNRJZUFP5SMsKL03gJQ6TTn6pQPDOF0WwJKeDlID1JmvKh/0Aw6m5xxP3K+Ir2F9zlT0OTO5H0hn8ANwFgjFt/4sEIrzZoFQnIJAXq34lF8V/jMtAA5wn5kOEwC8/TETBuAJ32whNRAtLG5thwZpmXN0oVxl/LjWhSU7FYXkqpksdxpKLII6AXyR5gBKaiCMYgHYl4pRrYnY1uZjhE9UKdEPbwngPYkDKKmB+fWs6hWEiZud9qov6QbgFpvIJAEa8XsSMUXxW4NflC24SAAD4fc1Sh6UsMyUDu3LkAGksNDWYQVH0MfjMGQqfmvwwzL3hZ8SEI68ivX/Uxj8AHK27gIkkB/FD/cDuqjeF8d5BOz4//oUjc/1o4L8aIlogwL4SlLl3W3kNzwRCH6AIu+OHhRvlEiE9DVOGg+2heex8H9AaJTQ0GA3zH0NT9+Bpp5Dqf8A(/figma)-->№ 2 (Вт., Пт.) Салат из капусты с редисом, котлета «Пожарская», рис с морковью и зеленым горошком , морс ягодный или чай пакетированный;</li>\r\n</ul>\r\n<strong>Ужин за 250 рублей без алкоголя:</strong>\r\n<ol>\r\n 	<li>№ 1 (Пн.) Салат «Оливье» , каша гречневая с морковью, индейка в брусничном соусе, хлеб или булочка, напиток цитрусовый или чай пакетированный;</li>\r\n 	<li>№ 1 (Пн.) Салат «Оливье» , каша гречневая с морковью, индейка в брусничном соусе, хлеб или булочка, напиток цитрусовый или чай пакетированный;</li>\r\n</ol>\r\nfsfsa<em>fsafsa</em>\r\n\r\n<a href=\"#\">fsafasfas</a>', 'Test', '', 'publish', 'closed', 'closed', '', 'test', '', '', '2021-08-27 16:23:16', '2021-08-27 13:23:16', '', 0, 'http://localhost:8888/rest/store/?post_type=news&#038;p=93', 1, 'news', '', 0);
INSERT INTO `rest_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(94, 1, '2021-08-27 14:15:40', '2021-08-27 11:15:40', 'Предложение действительно с 11 мая по 31 декабря 2021 г. включительно с понедельника по пятницу, кроме праздничных дней с 17:00 до 19:30.\n\nВы можете приобрести на выбор «Ужин за 150 рублей», «Ужин за 250 рублей без алкоголя», «Ужин за 250 рублей с алкоголем», «Ужин за 350 рублей без алкоголя» или «Ужин за 350 рублей с алкоголем». Ежедневно в акции участвуют 5 ужинов в ротации:\n\n<!--(figmeta)eyJmaWxlS2V5IjoiVVI1WldRQllBQ004QVlScVNrRmpVbyIsInBhc3RlSUQiOjQzMjc5NjAzNSwiZGF0YVR5cGUiOiJzY2VuZSJ9Cg==(/figmeta)--><!--(figma)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(/figma)--><strong>Ужин за 150 рублей:</strong>\n\n<!--(figmeta)eyJmaWxlS2V5IjoiVVI1WldRQllBQ004QVlScVNrRmpVbyIsInBhc3RlSUQiOjMyMjk3NjgzOSwiZGF0YVR5cGUiOiJzY2VuZSJ9Cg==(/figmeta)--><!--(figma)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(/figma)--><!--(figmeta)eyJmaWxlS2V5IjoiVVI1WldRQllBQ004QVlScVNrRmpVbyIsInBhc3RlSUQiOjMyMjk3NjgzOSwiZGF0YVR5cGUiOiJzY2VuZSJ9Cg==(/figmeta)--><!--(figma)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(/figma)-->\n<ul>\n 	<li></li>\n</ul>', 'Test', '', 'inherit', 'closed', 'closed', '', '93-autosave-v1', '', '', '2021-08-27 14:15:40', '2021-08-27 11:15:40', '', 93, 'http://localhost:8888/rest/store/?p=94', 0, 'revision', '', 0);
INSERT INTO `rest_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(95, 1, '2021-08-27 16:21:14', '2021-08-27 13:21:14', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"news\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Поля для новостей', 'polya-dlya-novostej', 'publish', 'closed', 'closed', '', 'group_6128e63b0f440', '', '', '2021-08-27 16:21:14', '2021-08-27 13:21:14', '', 0, 'http://localhost:8888/rest/store/?post_type=acf-field-group&#038;p=95', 0, 'acf-field-group', '', 0),
(96, 1, '2021-08-27 16:21:14', '2021-08-27 13:21:14', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:4:\"news\";}s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:1;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'Походие новости', 'related', 'publish', 'closed', 'closed', '', 'field_6128e649323dc', '', '', '2021-08-27 16:21:14', '2021-08-27 13:21:14', '', 95, 'http://localhost:8888/rest/store/?post_type=acf-field&p=96', 0, 'acf-field', '', 0),
(100, 1, '2021-08-27 17:26:59', '2021-08-27 14:26:59', '', 'Доставка и оплата', '', 'publish', 'closed', 'closed', '', 'shipping-and-payment', '', '', '2021-12-24 18:44:06', '2021-12-24 15:44:06', '', 0, 'http://localhost:8888/rest/store/?page_id=100', 1, 'page', '', 0),
(101, 1, '2021-08-27 17:26:59', '2021-08-27 14:26:59', '', 'Условия доствки', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2021-08-27 17:26:59', '2021-08-27 14:26:59', '', 100, 'http://localhost:8888/rest/store/?p=101', 0, 'revision', '', 0),
(102, 1, '2021-08-27 17:41:12', '2021-08-27 14:41:12', '', 'Условия доставки', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2021-08-27 17:41:12', '2021-08-27 14:41:12', '', 100, 'http://localhost:8888/rest/store/?p=102', 0, 'revision', '', 0),
(107, 1, '2021-08-27 18:27:21', '2021-08-27 15:27:21', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"100\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Поля для условий доставки', 'polya-dlya-uslovij-dostavki', 'publish', 'closed', 'closed', '', 'group_612903c04b4ce', '', '', '2021-12-24 18:59:49', '2021-12-24 15:59:49', '', 0, 'http://localhost:8888/rest/store/?post_type=acf-field-group&#038;p=107', 0, 'acf-field-group', '', 0),
(113, 1, '2021-08-27 18:28:14', '2021-08-27 15:28:14', '', 'Group 68469', '', 'inherit', 'open', 'closed', '', 'group-68469', '', '', '2021-08-27 18:28:14', '2021-08-27 15:28:14', '', 100, 'http://localhost:8888/rest/store/wp-content/uploads/2021/08/group-68469.svg', 0, 'attachment', 'image/svg+xml', 0),
(114, 1, '2021-08-27 18:28:47', '2021-08-27 15:28:47', '', 'Group 68469 (1)', '', 'inherit', 'open', 'closed', '', 'group-68469-1', '', '', '2021-08-27 18:28:47', '2021-08-27 15:28:47', '', 100, 'http://localhost:8888/rest/store/wp-content/uploads/2021/08/group-68469-1.svg', 0, 'attachment', 'image/svg+xml', 0),
(115, 1, '2021-08-27 18:28:59', '2021-08-27 15:28:59', '', 'Условия доставки', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2021-08-27 18:28:59', '2021-08-27 15:28:59', '', 100, 'http://localhost:8888/rest/store/?p=115', 0, 'revision', '', 0),
(116, 1, '2021-08-27 18:31:18', '2021-08-27 15:31:18', '', 'Group 68469 (2)', '', 'inherit', 'open', 'closed', '', 'group-68469-2', '', '', '2021-08-27 18:31:18', '2021-08-27 15:31:18', '', 100, 'http://localhost:8888/rest/store/wp-content/uploads/2021/08/group-68469-2.svg', 0, 'attachment', 'image/svg+xml', 0),
(117, 1, '2021-08-27 18:31:30', '2021-08-27 15:31:30', '', 'Group 68469 (3)', '', 'inherit', 'open', 'closed', '', 'group-68469-3', '', '', '2021-08-27 18:31:30', '2021-08-27 15:31:30', '', 100, 'http://localhost:8888/rest/store/wp-content/uploads/2021/08/group-68469-3.svg', 0, 'attachment', 'image/svg+xml', 0),
(118, 1, '2021-08-27 18:32:03', '2021-08-27 15:32:03', '', 'Group 68469 (4)', '', 'inherit', 'open', 'closed', '', 'group-68469-4', '', '', '2021-08-27 18:32:03', '2021-08-27 15:32:03', '', 100, 'http://localhost:8888/rest/store/wp-content/uploads/2021/08/group-68469-4.svg', 0, 'attachment', 'image/svg+xml', 0),
(119, 1, '2021-08-27 18:32:21', '2021-08-27 15:32:21', '', 'Group 68469 (5)', '', 'inherit', 'open', 'closed', '', 'group-68469-5', '', '', '2021-08-27 18:32:21', '2021-08-27 15:32:21', '', 100, 'http://localhost:8888/rest/store/wp-content/uploads/2021/08/group-68469-5.svg', 0, 'attachment', 'image/svg+xml', 0),
(120, 1, '2021-08-27 18:32:51', '2021-08-27 15:32:51', '', 'Group 68469 (6)', '', 'inherit', 'open', 'closed', '', 'group-68469-6', '', '', '2021-08-27 18:32:51', '2021-08-27 15:32:51', '', 100, 'http://localhost:8888/rest/store/wp-content/uploads/2021/08/group-68469-6.svg', 0, 'attachment', 'image/svg+xml', 0),
(121, 1, '2021-08-27 18:33:10', '2021-08-27 15:33:10', '', 'Group 68469 (7)', '', 'inherit', 'open', 'closed', '', 'group-68469-7', '', '', '2021-08-27 18:33:10', '2021-08-27 15:33:10', '', 100, 'http://localhost:8888/rest/store/wp-content/uploads/2021/08/group-68469-7.svg', 0, 'attachment', 'image/svg+xml', 0),
(122, 1, '2021-08-27 18:33:37', '2021-08-27 15:33:37', '', 'Group 68469 (8)', '', 'inherit', 'open', 'closed', '', 'group-68469-8', '', '', '2021-08-27 18:33:37', '2021-08-27 15:33:37', '', 100, 'http://localhost:8888/rest/store/wp-content/uploads/2021/08/group-68469-8.svg', 0, 'attachment', 'image/svg+xml', 0),
(123, 1, '2021-08-27 18:33:55', '2021-08-27 15:33:55', '', 'Group 68469 (9)', '', 'inherit', 'open', 'closed', '', 'group-68469-9', '', '', '2021-08-27 18:33:55', '2021-08-27 15:33:55', '', 100, 'http://localhost:8888/rest/store/wp-content/uploads/2021/08/group-68469-9.svg', 0, 'attachment', 'image/svg+xml', 0),
(124, 1, '2021-08-27 18:34:36', '2021-08-27 15:34:36', '', 'Условия доставки', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2021-08-27 18:34:36', '2021-08-27 15:34:36', '', 100, 'http://localhost:8888/rest/store/?p=124', 0, 'revision', '', 0),
(125, 1, '2021-08-27 19:28:31', '2021-08-27 16:28:31', '', 'Доставка и оплата', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2021-08-27 19:28:31', '2021-08-27 16:28:31', '', 100, 'http://localhost:8888/rest/store/?p=125', 0, 'revision', '', 0),
(126, 1, '2021-08-28 15:09:08', '2021-08-28 12:09:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Телефон', 'phone', 'publish', 'closed', 'closed', '', 'field_612a213f71533', '', '', '2021-08-28 15:09:08', '2021-08-28 12:09:08', '', 73, 'http://localhost:8888/rest/store/?post_type=acf-field&p=126', 2, 'acf-field', '', 0),
(127, 1, '2021-08-28 15:09:08', '2021-08-28 12:09:08', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Время работы', 'work_time', 'publish', 'closed', 'closed', '', 'field_612a214b71534', '', '', '2021-08-28 15:09:08', '2021-08-28 12:09:08', '', 73, 'http://localhost:8888/rest/store/?post_type=acf-field&p=127', 3, 'acf-field', '', 0),
(129, 1, '2021-08-28 15:31:59', '2021-08-28 12:31:59', '', 'Еще один магаз', '', 'publish', 'closed', 'closed', '', 'eshhe-odin-magaz', '', '', '2021-08-28 16:06:08', '2021-08-28 13:06:08', '', 0, 'http://localhost:8888/rest/store/?post_type=stores&#038;p=129', 1, 'stores', '', 0),
(130, 1, '2021-08-29 17:53:10', '2021-08-29 14:53:10', '', 'Каталог', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2021-08-29 17:53:10', '2021-08-29 14:53:10', '', 11, 'http://localhost:8888/rest/store/?p=130', 0, 'revision', '', 0),
(131, 1, '2021-08-30 18:42:30', '2021-08-30 15:42:30', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"product\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'Поля для продуктов', 'polya-dlya-produktov', 'publish', 'closed', 'closed', '', 'group_612cfba43e844', '', '', '2021-08-30 18:55:42', '2021-08-30 15:55:42', '', 0, 'http://localhost:8888/rest/store/?post_type=acf-field-group&#038;p=131', 0, 'acf-field-group', '', 0),
(132, 1, '2021-08-30 18:42:30', '2021-08-30 15:42:30', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Описание', 'description', 'publish', 'closed', 'closed', '', 'field_612cfbabe6e77', '', '', '2021-08-30 18:49:13', '2021-08-30 15:49:13', '', 135, 'http://localhost:8888/rest/store/?post_type=acf-field&#038;p=132', 0, 'acf-field', '', 0),
(133, 1, '2021-08-30 18:42:30', '2021-08-30 15:42:30', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:13:\"default_value\";s:0:\"\";s:5:\"delay\";i:0;}', 'Состав', 'composition', 'publish', 'closed', 'closed', '', 'field_612cfbfee6e78', '', '', '2021-08-30 18:49:13', '2021-08-30 15:49:13', '', 135, 'http://localhost:8888/rest/store/?post_type=acf-field&#038;p=133', 1, 'acf-field', '', 0),
(134, 1, '2021-08-30 18:48:19', '2021-08-30 15:48:19', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"product\";}s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:0;s:8:\"multiple\";i:1;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'С этим товаров заказывают', 'related', 'publish', 'closed', 'closed', '', 'field_612cfd80007e7', '', '', '2021-08-30 18:55:42', '2021-08-30 15:55:42', '', 135, 'http://localhost:8888/rest/store/?post_type=acf-field&#038;p=134', 2, 'acf-field', '', 0),
(135, 1, '2021-08-30 18:49:13', '2021-08-30 15:49:13', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"table\";s:10:\"sub_fields\";a:0:{}}', 'Поля', 'data', 'publish', 'closed', 'closed', '', 'field_612cfdc71c2cc', '', '', '2021-08-30 18:49:13', '2021-08-30 15:49:13', '', 131, 'http://localhost:8888/rest/store/?post_type=acf-field&p=135', 0, 'acf-field', '', 0),
(136, 1, '2021-08-31 21:49:08', '2021-08-31 18:49:08', '', 'moretest 2', '', 'publish', 'open', 'closed', '', 'moretest-2', '', '', '2021-08-31 22:23:23', '2021-08-31 19:23:23', '', 0, 'http://localhost:8888/rest/store/?post_type=product&#038;p=136', 2, 'product', '', 0),
(137, 1, '2021-08-31 22:41:14', '2021-08-31 19:41:14', '<!-- wp:shortcode -->\r\n<p>[woocommerce_checkout]</p>\r\n<!-- /wp:shortcode -->', 'Оформление заказа', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2021-08-31 22:41:14', '2021-08-31 19:41:14', '', 13, 'http://localhost:8888/rest/store/?p=137', 0, 'revision', '', 0),
(157, 1, '2021-09-08 22:00:42', '2021-09-08 19:00:42', '', 'Order &ndash; 8 сентября, 2021 @ 10:00 ПП', '', 'wc-cancelled', 'open', 'closed', 'wc_order_JGL3feqPhGpeO', 'order-sep-08-2021-0700-pm', '', '', '2021-09-08 23:15:34', '2021-09-08 20:15:34', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=157', 0, 'shop_order', '', 1),
(158, 1, '2021-09-08 22:01:03', '2021-09-08 19:01:03', '', 'Order &ndash; 8 сентября, 2021 @ 10:01 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_H4t4ZO3SWQ2tM', 'order-sep-08-2021-0701-pm', '', '', '2021-09-08 22:01:03', '2021-09-08 19:01:03', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=158', 0, 'shop_order', '', 1),
(159, 1, '2021-09-08 22:05:22', '2021-09-08 19:05:22', '', 'Order &ndash; 8 сентября, 2021 @ 10:05 ПП', '', 'wc-cancelled', 'open', 'closed', 'wc_order_oWioRXiWSnlmc', 'order-sep-08-2021-0705-pm', '', '', '2021-09-08 23:15:34', '2021-09-08 20:15:34', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=159', 0, 'shop_order', '', 1),
(160, 1, '2021-09-08 22:05:34', '2021-09-08 19:05:34', '', 'Order &ndash; 8 сентября, 2021 @ 10:05 ПП', '', 'wc-cancelled', 'open', 'closed', 'wc_order_dSFQEhy4IoxuE', 'order-sep-08-2021-0705-pm-2', '', '', '2021-09-08 23:15:34', '2021-09-08 20:15:34', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=160', 0, 'shop_order', '', 1),
(161, 1, '2021-09-08 22:05:50', '2021-09-08 19:05:50', '', 'Order &ndash; 8 сентября, 2021 @ 10:05 ПП', '', 'wc-cancelled', 'open', 'closed', 'wc_order_Tt9Gedn7QJx5K', 'order-sep-08-2021-0705-pm-3', '', '', '2021-09-08 23:15:34', '2021-09-08 20:15:34', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=161', 0, 'shop_order', '', 1),
(162, 1, '2021-09-08 22:06:03', '2021-09-08 19:06:03', '', 'Order &ndash; 8 сентября, 2021 @ 10:06 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_G9qBDIsLIPbek', 'order-sep-08-2021-0706-pm', '', '', '2021-09-08 22:06:03', '2021-09-08 19:06:03', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=162', 0, 'shop_order', '', 1),
(163, 1, '2021-09-08 22:07:09', '2021-09-08 19:07:09', '', 'Order &ndash; 8 сентября, 2021 @ 10:07 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_2Ej35n5ZY3Pwj', 'order-sep-08-2021-0707-pm', '', '', '2021-09-08 22:07:09', '2021-09-08 19:07:09', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=163', 0, 'shop_order', '', 1),
(164, 1, '2021-09-08 22:08:17', '2021-09-08 19:08:17', '', 'Order &ndash; 8 сентября, 2021 @ 10:08 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_x90ARN0kR2DT0', 'order-sep-08-2021-0708-pm', '', '', '2021-09-08 22:08:17', '2021-09-08 19:08:17', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=164', 0, 'shop_order', '', 1),
(165, 1, '2021-09-08 22:10:35', '2021-09-08 19:10:35', '', 'Order &ndash; 8 сентября, 2021 @ 10:10 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_uNsObEtwUjQYr', 'order-sep-08-2021-0710-pm', '', '', '2021-09-08 22:10:35', '2021-09-08 19:10:35', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=165', 0, 'shop_order', '', 1),
(166, 1, '2021-09-08 22:12:25', '2021-09-08 19:12:25', '', 'Order &ndash; 8 сентября, 2021 @ 10:12 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_NM9qoVk4tHeZP', 'order-sep-08-2021-0712-pm', '', '', '2021-09-08 22:12:25', '2021-09-08 19:12:25', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=166', 0, 'shop_order', '', 1),
(167, 1, '2021-09-08 22:24:34', '2021-09-08 19:24:34', '', 'Order &ndash; 8 сентября, 2021 @ 10:24 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_Ov2Ee9cSG2IKA', 'order-sep-08-2021-0724-pm', '', '', '2021-09-08 22:24:34', '2021-09-08 19:24:34', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=167', 0, 'shop_order', '', 1),
(168, 1, '2021-09-08 22:25:03', '2021-09-08 19:25:03', '', 'Order &ndash; 8 сентября, 2021 @ 10:25 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_4OwgOKYMHIN5T', 'order-sep-08-2021-0725-pm', '', '', '2021-09-08 22:25:03', '2021-09-08 19:25:03', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=168', 0, 'shop_order', '', 2),
(169, 1, '2021-09-08 22:37:12', '2021-09-08 19:37:12', '', 'Order &ndash; 8 сентября, 2021 @ 10:37 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_i7OSnzBRrIbio', 'order-sep-08-2021-0737-pm', '', '', '2021-09-08 22:37:13', '2021-09-08 19:37:13', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=169', 0, 'shop_order', '', 4),
(170, 1, '2021-09-08 22:38:44', '2021-09-08 19:38:44', '', 'Order &ndash; 8 сентября, 2021 @ 10:38 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_0JQUC4GcCu7oE', 'order-sep-08-2021-0738-pm', '', '', '2021-09-08 22:38:44', '2021-09-08 19:38:44', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=170', 0, 'shop_order', '', 2),
(171, 1, '2021-09-08 22:45:33', '2021-09-08 19:45:33', '', 'Order &ndash; 8 сентября, 2021 @ 10:45 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_hMULSi22lbPga', 'order-sep-08-2021-0745-pm', '', '', '2021-09-08 22:45:33', '2021-09-08 19:45:33', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=171', 0, 'shop_order', '', 4),
(173, 1, '2021-09-08 23:04:27', '2021-09-08 20:04:27', '', 'Order &ndash; 8 сентября, 2021 @ 11:04 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_QP9JAavFPLXPg', 'order-sep-08-2021-0804-pm', '', '', '2021-09-08 23:04:27', '2021-09-08 20:04:27', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=173', 0, 'shop_order', '', 3),
(174, 1, '2021-09-08 23:06:14', '2021-09-08 20:06:14', '', 'Order &ndash; 8 сентября, 2021 @ 11:06 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_XeUXlPd5llnLm', 'order-sep-08-2021-0806-pm', '', '', '2021-09-08 23:06:14', '2021-09-08 20:06:14', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=174', 0, 'shop_order', '', 3),
(175, 1, '2021-09-08 23:06:34', '2021-09-08 20:06:34', '', 'Order &ndash; 8 сентября, 2021 @ 11:06 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_x7nYsyRs8iQ6f', 'order-sep-08-2021-0806-pm-2', '', '', '2021-09-08 23:06:34', '2021-09-08 20:06:34', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=175', 0, 'shop_order', '', 3),
(176, 1, '2021-09-08 23:06:34', '2021-09-08 20:06:34', '', 'Order &ndash; 8 сентября, 2021 @ 11:06 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_vBG92mJLDKZF3', 'order-sep-08-2021-0806-pm-3', '', '', '2021-09-08 23:06:35', '2021-09-08 20:06:35', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=176', 0, 'shop_order', '', 3),
(177, 1, '2021-09-08 23:06:35', '2021-09-08 20:06:35', '', 'Order &ndash; 8 сентября, 2021 @ 11:06 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_cNwyO79wpkB6g', 'order-sep-08-2021-0806-pm-4', '', '', '2021-09-08 23:06:35', '2021-09-08 20:06:35', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=177', 0, 'shop_order', '', 3),
(178, 1, '2021-09-08 23:06:35', '2021-09-08 20:06:35', '', 'Order &ndash; 8 сентября, 2021 @ 11:06 ПП', '', 'wc-completed', 'open', 'closed', 'wc_order_D5YZfuSFdguD7', 'order-sep-08-2021-0806-pm-5', '', '', '2021-09-08 23:06:35', '2021-09-08 20:06:35', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=178', 0, 'shop_order', '', 3),
(179, 1, '2021-09-08 23:06:35', '2021-09-08 20:06:35', '', 'Order &ndash; 8 сентября, 2021 @ 11:06 ПП', '', 'wc-completed', 'open', 'closed', 'wc_order_GHfaGlQVGjH1f', 'order-sep-08-2021-0806-pm-6', '', '', '2021-09-08 23:06:35', '2021-09-08 20:06:35', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=179', 0, 'shop_order', '', 3),
(180, 1, '2021-09-08 23:06:35', '2021-09-08 20:06:35', '', 'Order &ndash; 8 сентября, 2021 @ 11:06 ПП', '', 'wc-completed', 'open', 'closed', 'wc_order_Ng9XysBRRxfqZ', 'order-sep-08-2021-0806-pm-7', '', '', '2021-09-08 23:06:35', '2021-09-08 20:06:35', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=180', 0, 'shop_order', '', 3),
(181, 1, '2021-09-08 23:09:54', '2021-09-08 20:09:54', '', 'Order &ndash; 8 сентября, 2021 @ 11:09 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_ioDIxfBPWk9UQ', 'order-sep-08-2021-0809-pm', '', '', '2021-09-08 23:09:54', '2021-09-08 20:09:54', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=181', 0, 'shop_order', '', 3),
(182, 1, '2021-09-08 23:10:13', '2021-09-08 20:10:13', '', 'Order &ndash; 8 сентября, 2021 @ 11:10 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_Pgj2BmPzEbJdS', 'order-sep-08-2021-0810-pm', '', '', '2021-09-08 23:10:13', '2021-09-08 20:10:13', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=182', 0, 'shop_order', '', 3),
(183, 1, '2021-09-08 23:11:11', '2021-09-08 20:11:11', '', 'Order &ndash; 8 сентября, 2021 @ 11:11 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_WwSIpQq1La52i', 'order-sep-08-2021-0811-pm', '', '', '2021-09-08 23:11:11', '2021-09-08 20:11:11', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=183', 0, 'shop_order', '', 3),
(184, 1, '2021-09-08 23:12:13', '2021-09-08 20:12:13', '', 'Order &ndash; 8 сентября, 2021 @ 11:12 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_vkBIiSAyH3is7', 'order-sep-08-2021-0812-pm', '', '', '2021-09-08 23:12:13', '2021-09-08 20:12:13', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=184', 0, 'shop_order', '', 4),
(185, 1, '2021-09-08 23:13:18', '2021-09-08 20:13:18', '', 'Order &ndash; 8 сентября, 2021 @ 11:13 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_lI9AobpCCRZCO', 'order-sep-08-2021-0813-pm', '', '', '2021-09-08 23:13:18', '2021-09-08 20:13:18', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=185', 0, 'shop_order', '', 5),
(186, 1, '2021-09-08 23:15:34', '2021-09-08 20:15:34', '', 'Order &ndash; 8 сентября, 2021 @ 11:15 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_NhHQxIBaSyrXa', 'order-sep-08-2021-0815-pm', '', '', '2021-09-08 23:15:34', '2021-09-08 20:15:34', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=186', 0, 'shop_order', '', 4),
(187, 1, '2021-09-08 23:20:40', '2021-09-08 20:20:40', '', 'Order &ndash; 8 сентября, 2021 @ 11:20 ПП', '', 'wc-processing', 'open', 'closed', 'wc_order_nGFqv6YrQsT6J', 'order-sep-08-2021-0820-pm', '', '', '2021-09-08 23:20:40', '2021-09-08 20:20:40', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=187', 0, 'shop_order', '', 4),
(188, 1, '2021-09-10 00:17:45', '2021-09-09 21:17:45', '', 'cropped-сов-пельм-1-2 (1)', '', 'inherit', 'open', 'closed', '', 'cropped-sov-pelm-1-2-1', '', '', '2021-09-10 00:17:45', '2021-09-09 21:17:45', '', 0, 'http://localhost:8888/rest/store/wp-content/uploads/2021/09/cropped-sov-pelm-1-2-1.png', 0, 'attachment', 'image/png', 0),
(191, 1, '2021-09-12 02:44:48', '2021-09-11 23:44:48', '', 'Order &ndash; 12 сентября, 2021 @ 02:44 ДП', '', 'wc-processing', 'open', 'closed', 'wc_order_56nbtLFcodOJG', 'order-sep-11-2021-1144-pm', '', '', '2021-09-12 02:44:48', '2021-09-11 23:44:48', '', 0, 'http://localhost:8888/rest/store/?post_type=shop_order&#038;p=191', 0, 'shop_order', '', 2),
(192, 1, '2021-09-13 22:53:47', '2021-09-13 19:53:47', '', 'cropped-сов-пельм-1-2 (2) (1)', '', 'inherit', 'open', 'closed', '', 'cropped-sov-pelm-1-2-2-1', '', '', '2021-09-13 22:53:47', '2021-09-13 19:53:47', '', 0, 'http://localhost:8888/rest/store/wp-content/uploads/2021/09/cropped-sov-pelm-1-2-2-1.png', 0, 'attachment', 'image/png', 0),
(194, 1, '2021-09-13 22:54:08', '2021-09-13 19:54:08', '', 'cropped-сов-пельм-1-2 (2) (2)', '', 'inherit', 'open', 'closed', '', 'cropped-sov-pelm-1-2-2-2', '', '', '2021-09-13 22:54:08', '2021-09-13 19:54:08', '', 0, 'http://localhost:8888/rest/store/wp-content/uploads/2021/09/cropped-sov-pelm-1-2-2-2.png', 0, 'attachment', 'image/png', 0),
(195, 1, '2021-11-07 17:47:17', '2021-11-07 14:47:17', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2021-11-07 17:47:17', '2021-11-07 14:47:17', '', 22, 'http://localhost:8888/rest/store/wp-content/uploads/2021/08/2.jpeg', 0, 'attachment', 'image/jpeg', 0),
(196, 1, '2021-12-24 17:22:01', '2021-12-24 14:22:01', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";}', 'Табы', 'tabs', 'publish', 'closed', 'closed', '', 'field_61c5d69f847ae', '', '', '2021-12-24 18:59:49', '2021-12-24 15:59:49', '', 107, 'http://localhost:8888/rest/store/?post_type=acf-field&#038;p=196', 0, 'acf-field', '', 0),
(197, 1, '2021-12-24 17:22:01', '2021-12-24 14:22:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок', 'title', 'publish', 'closed', 'closed', '', 'field_61c5d6b1847af', '', '', '2021-12-24 17:22:01', '2021-12-24 14:22:01', '', 196, 'http://localhost:8888/rest/store/?post_type=acf-field&p=197', 0, 'acf-field', '', 0),
(198, 1, '2021-12-24 17:22:01', '2021-12-24 14:22:01', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:0:\"\";}', 'Блоки', 'blocks', 'publish', 'closed', 'closed', '', 'field_61c5d6c0847b0', '', '', '2021-12-24 17:25:26', '2021-12-24 14:25:26', '', 196, 'http://localhost:8888/rest/store/?post_type=acf-field&#038;p=198', 1, 'acf-field', '', 0),
(199, 1, '2021-12-24 17:22:01', '2021-12-24 14:22:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Заголовок', 'title', 'publish', 'closed', 'closed', '', 'field_61c5d6ea847b1', '', '', '2021-12-24 17:22:01', '2021-12-24 14:22:01', '', 198, 'http://localhost:8888/rest/store/?post_type=acf-field&p=199', 0, 'acf-field', '', 0),
(200, 1, '2021-12-24 17:22:01', '2021-12-24 14:22:01', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";}', 'Элементы', 'items', 'publish', 'closed', 'closed', '', 'field_61c5d6f8847b2', '', '', '2021-12-24 17:23:44', '2021-12-24 14:23:44', '', 198, 'http://localhost:8888/rest/store/?post_type=acf-field&#038;p=200', 1, 'acf-field', '', 0),
(201, 1, '2021-12-24 17:22:01', '2021-12-24 14:22:01', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Иконка', 'icon', 'publish', 'closed', 'closed', '', 'field_61c5d706847b3', '', '', '2021-12-24 17:22:01', '2021-12-24 14:22:01', '', 200, 'http://localhost:8888/rest/store/?post_type=acf-field&p=201', 0, 'acf-field', '', 0),
(202, 1, '2021-12-24 17:22:01', '2021-12-24 14:22:01', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Подпись', 'label', 'publish', 'closed', 'closed', '', 'field_61c5d745847b4', '', '', '2021-12-24 17:22:01', '2021-12-24 14:22:01', '', 200, 'http://localhost:8888/rest/store/?post_type=acf-field&p=202', 1, 'acf-field', '', 0),
(203, 1, '2021-12-24 17:22:01', '2021-12-24 14:22:01', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Текст', 'text', 'publish', 'closed', 'closed', '', 'field_61c5d75f847b5', '', '', '2021-12-24 17:23:44', '2021-12-24 14:23:44', '', 200, 'http://localhost:8888/rest/store/?post_type=acf-field&#038;p=203', 2, 'acf-field', '', 0),
(204, 1, '2021-12-24 17:23:49', '2021-12-24 14:23:49', '', 'Доставка и оплата', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2021-12-24 17:23:49', '2021-12-24 14:23:49', '', 100, 'http://localhost:8888/rest/store/?p=204', 0, 'revision', '', 0),
(205, 1, '2021-12-24 17:26:47', '2021-12-24 14:26:47', '', 'Доставка и оплата', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2021-12-24 17:26:47', '2021-12-24 14:26:47', '', 100, 'http://localhost:8888/rest/store/?p=205', 0, 'revision', '', 0),
(206, 1, '2021-12-24 18:23:46', '2021-12-24 15:23:46', '', 'Доставка и оплата', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2021-12-24 18:23:46', '2021-12-24 15:23:46', '', 100, 'http://localhost:8888/rest/store/?p=206', 0, 'revision', '', 0),
(207, 1, '2021-12-24 18:24:52', '2021-12-24 15:24:52', '', 'Доставка и оплата', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2021-12-24 18:24:52', '2021-12-24 15:24:52', '', 100, 'http://localhost:8888/rest/store/?p=207', 0, 'revision', '', 0),
(208, 1, '2021-12-24 18:29:15', '2021-12-24 15:29:15', '', 'Доставка и оплата', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2021-12-24 18:29:15', '2021-12-24 15:29:15', '', 100, 'http://localhost:8888/rest/store/?p=208', 0, 'revision', '', 0),
(209, 1, '2021-12-24 18:44:06', '2021-12-24 15:44:06', '', 'Доставка и оплата', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2021-12-24 18:44:06', '2021-12-24 15:44:06', '', 100, 'http://localhost:8888/rest/store/?p=209', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rest_termmeta`
--

CREATE TABLE `rest_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rest_termmeta`
--

INSERT INTO `rest_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '0'),
(2, 16, 'order', '0'),
(3, 16, 'display_type', ''),
(4, 16, 'thumbnail_id', '26'),
(5, 16, 'product_count_product_cat', '2'),
(6, 17, 'order', '0'),
(7, 17, 'display_type', ''),
(8, 17, 'thumbnail_id', '35'),
(9, 17, 'product_count_product_cat', '3');

-- --------------------------------------------------------

--
-- Table structure for table `rest_terms`
--

CREATE TABLE `rest_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  `term_order` int(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rest_terms`
--

INSERT INTO `rest_terms` (`term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0, 1),
(2, 'simple', 'simple', 0, 0),
(3, 'grouped', 'grouped', 0, 0),
(4, 'variable', 'variable', 0, 0),
(5, 'external', 'external', 0, 0),
(6, 'exclude-from-search', 'exclude-from-search', 0, 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0, 0),
(8, 'featured', 'featured', 0, 0),
(9, 'outofstock', 'outofstock', 0, 0),
(10, 'rated-1', 'rated-1', 0, 0),
(11, 'rated-2', 'rated-2', 0, 0),
(12, 'rated-3', 'rated-3', 0, 0),
(13, 'rated-4', 'rated-4', 0, 0),
(14, 'rated-5', 'rated-5', 0, 0),
(15, 'Uncategorized', 'uncategorized', 0, 1),
(16, 'Пельмени', 'pelmeni', 0, 2),
(17, 'Вареники', 'vareniki', 0, 3),
(18, 'Акции', 'akczii', 0, 1),
(19, 'Новости', 'novosti', 0, 2),
(20, 'Footer', 'footer', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rest_term_relationships`
--

CREATE TABLE `rest_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rest_term_relationships`
--

INSERT INTO `rest_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(16, 2, 0),
(16, 8, 0),
(16, 17, 0),
(22, 2, 0),
(22, 8, 0),
(22, 16, 0),
(36, 2, 0),
(36, 16, 0),
(36, 17, 0),
(71, 18, 0),
(71, 19, 0),
(72, 18, 0),
(84, 20, 0),
(85, 20, 0),
(136, 2, 0),
(136, 17, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rest_term_taxonomy`
--

CREATE TABLE `rest_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rest_term_taxonomy`
--

INSERT INTO `rest_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 4),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 2),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'product_cat', '', 0, 2),
(17, 17, 'product_cat', '', 0, 3),
(18, 18, 'post_tag', '', 0, 2),
(19, 19, 'post_tag', '', 0, 1),
(20, 20, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rest_usermeta`
--

CREATE TABLE `rest_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rest_usermeta`
--

INSERT INTO `rest_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'Евгений'),
(3, 1, 'last_name', 'test'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'rest_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'rest_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'rest_dashboard_quick_press_last_post_id', '172'),
(18, 1, '_woocommerce_tracks_anon_id', 'woo:HRb2IHHcgYAgMzmzeoq0ohF9'),
(19, 1, 'last_update', '1631127671'),
(20, 1, 'woocommerce_admin_activity_panel_inbox_last_read', '1631127669606'),
(21, 1, 'wc_last_active', '1640304000'),
(23, 1, 'dismissed_no_secure_connection_notice', '1'),
(24, 1, 'rest_user-settings', 'libraryContent=browse'),
(25, 1, 'rest_user-settings-time', '1628070387'),
(26, 1, 'woocommerce_admin_homepage_layout', '\"two_columns\"'),
(81, 1, 'managenav-menuscolumnshidden', 'a:3:{i:0;s:15:\"title-attribute\";i:1;s:3:\"xfn\";i:2;s:11:\"description\";}'),
(82, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:21:\"add-post-type-product\";i:1;s:26:\"add-post-type-static-block\";i:2;s:21:\"add-post-type-banners\";i:3;s:12:\"add-post_tag\";i:4;s:15:\"add-product_tag\";}'),
(83, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(92, 1, 'billing_first_name', 'Евгений'),
(93, 1, 'billing_last_name', 'test'),
(94, 1, 'billing_address_1', 'dsadasdsad'),
(95, 1, 'billing_city', 'dsadsa'),
(96, 1, 'billing_state', 'fasfas'),
(97, 1, 'billing_postcode', '3123D'),
(98, 1, 'billing_country', 'RU'),
(99, 1, 'billing_email', 'burlakeugene@gmail.com'),
(100, 1, 'billing_phone', '32321312321321312'),
(101, 1, 'shipping_first_name', 'Евгений'),
(102, 1, 'shipping_last_name', 'test'),
(103, 1, 'shipping_address_1', 'dsadasdsad'),
(104, 1, 'shipping_city', 'dsadsa'),
(105, 1, 'shipping_state', 'fasfas'),
(106, 1, 'shipping_postcode', '3123D'),
(107, 1, 'shipping_country', 'RU'),
(108, 1, 'shipping_method', 'a:1:{i:0;s:14:\"local_pickup:2\";}'),
(115, 1, 'paying_customer', '1'),
(116, 1, 'session_tokens', 'a:1:{s:64:\"768b4894a08a5b10dc1e9f4eb29f40d7a68479adebc67a63e6af5d8460151f44\";a:4:{s:10:\"expiration\";i:1640526208;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:119:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4710.4 Safari/537.36\";s:5:\"login\";i:1640353408;}}'),
(118, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(119, 1, '_order_count', '29'),
(120, 1, '_last_order', '191');

-- --------------------------------------------------------

--
-- Table structure for table `rest_users`
--

CREATE TABLE `rest_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rest_users`
--

INSERT INTO `rest_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bfo90vs6VKC2j5YyMqhjScFsMjZV.V0', 'admin', 'burlakeugene@gmail.com', 'http://localhost:8888/rest/store', '2021-08-04 08:49:41', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `rest_wc_admin_notes`
--

CREATE TABLE `rest_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0',
  `layout` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rest_wc_admin_notes`
--

INSERT INTO `rest_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `icon`) VALUES
(1, 'wayflyer_q3_2021', 'marketing', 'en_US', 'Grow your revenue with Wayflyer financing and analytics', 'Flexible financing tailored to your needs by <a href=\"https://woocommerce.com/products/wayflyer/\">Wayflyer</a> – one fee, no interest rates, penalties, equity, or personal guarantees. Based on your store\'s performance, Wayflyer can provide the financing you need to grow and the analytical insights to help you spend it.', '{}', 'pending', 'woocommerce.com', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(2, 'eu_vat_changes_2021', 'marketing', 'en_US', 'Get your business ready for the new EU tax regulations', 'On July 1, 2021, new taxation rules will come into play when the <a href=\"https://ec.europa.eu/taxation_customs/business/vat/modernising-vat-cross-border-ecommerce_en\">European Union (EU) Value-Added Tax (VAT) eCommerce package</a> takes effect.<br /><br />The new regulations will impact virtually every B2C business involved in cross-border eCommerce trade with the EU.<br /><br />We therefore recommend <a href=\"https://woocommerce.com/posts/new-eu-vat-regulations\">familiarizing yourself with the new updates</a>, and consult with a tax professional to ensure your business is following regulations and best practice.', '{}', 'pending', 'woocommerce.com', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(3, 'paypal_ppcp_gtm_2021', 'marketing', 'en_US', 'Offer more options with the new PayPal', 'Get the latest PayPal extension for a full suite of payment methods with extensive currency and country coverage.', '{}', 'pending', 'woocommerce.com', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(4, 'facebook_pixel_api_2021', 'marketing', 'en_US', 'Improve the performance of your Facebook ads', 'Enable Facebook Pixel and Conversions API through the latest version of Facebook for WooCommerce for improved measurement and ad targeting capabilities.', '{}', 'pending', 'woocommerce.com', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(5, 'facebook_ec_2021', 'marketing', 'en_US', 'Sync your product catalog with Facebook to help boost sales', 'A single click adds all products to your Facebook Business Page shop. Product changes are automatically synced, with the flexibility to control which products are listed.', '{}', 'pending', 'woocommerce.com', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(6, 'ecomm-need-help-setting-up-your-store', 'info', 'en_US', 'Need help setting up your Store?', 'Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.', '{}', 'pending', 'woocommerce.com', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(7, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Shipping & Tax', 'WooCommerce Shipping &amp; Tax helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '{}', 'pending', 'woocommerce.com', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(8, 'ecomm-unique-shopping-experience', 'info', 'en_US', 'For a shopping experience as unique as your customers', 'Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.', '{}', 'pending', 'woocommerce.com', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(9, 'wc-admin-getting-started-in-ecommerce', 'info', 'en_US', 'Getting Started in eCommerce - webinar', 'We want to make eCommerce and this process of getting started as easy as possible for you. Watch this webinar to get tips on how to have our store up and running in a breeze.', '{}', 'pending', 'woocommerce.com', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(10, 'your-first-product', 'info', 'en_US', 'Your first product', 'That\'s huge! You\'re well on your way to building a successful online store — now it’s time to think about how you\'ll fulfill your orders.<br /><br />Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href=\"https://href.li/?https://woocommerce.com/shipping\" target=\"_blank\">WooCommerce Shipping</a>.', '{}', 'unactioned', 'woocommerce.com', '2021-08-04 09:19:06', NULL, 0, 'plain', '', 0, 'info'),
(11, 'wc-square-apple-pay-boost-sales', 'marketing', 'en_US', 'Boost sales with Apple Pay', 'Now that you accept Apple Pay® with Square you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.', '{}', 'pending', 'woocommerce.com', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(12, 'wc-square-apple-pay-grow-your-business', 'marketing', 'en_US', 'Grow your business with Square and Apple Pay ', 'Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.', '{}', 'pending', 'woocommerce.com', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(13, 'wcpay-apple-pay-is-now-available', 'marketing', 'en_US', 'Apple Pay is now available with WooCommerce Payments!', 'Increase your conversion rate by offering a fast and secure checkout with <a href=\"https://woocommerce.com/apple-pay/?utm_source=inbox&amp;utm_medium=product&amp;utm_campaign=wcpay_applepay\" target=\"_blank\">Apple Pay</a>®. It’s free to get started with <a href=\"https://woocommerce.com/payments/?utm_source=inbox&amp;utm_medium=product&amp;utm_campaign=wcpay_applepay\" target=\"_blank\">WooCommerce Payments</a>.', '{}', 'pending', 'woocommerce.com', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(14, 'wcpay-apple-pay-boost-sales', 'marketing', 'en_US', 'Boost sales with Apple Pay', 'Now that you accept Apple Pay® with WooCommerce Payments you can increase conversion rates by letting your customers know that Apple Pay® is available. Here’s a marketing guide to help you get started.', '{}', 'pending', 'woocommerce.com', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(15, 'wcpay-apple-pay-grow-your-business', 'marketing', 'en_US', 'Grow your business with WooCommerce Payments and Apple Pay', 'Now more than ever, shoppers want a fast, simple, and secure online checkout experience. Increase conversion rates by letting your customers know that you now accept Apple Pay®.', '{}', 'pending', 'woocommerce.com', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(16, 'wc-admin-optimizing-the-checkout-flow', 'info', 'en_US', 'Optimizing the checkout flow', 'It\'s crucial to get your store\'s checkout as smooth as possible to avoid losing sales. Let\'s take a look at how you can optimize the checkout experience for your shoppers.', '{}', 'unactioned', 'woocommerce.com', '2021-09-09 16:31:33', NULL, 0, 'plain', '', 0, 'info'),
(17, 'wc-admin-first-five-things-to-customize', 'info', 'en_US', 'The first 5 things to customize in your store', 'Deciding what to start with first is tricky. To help you properly prioritize, we\'ve put together this short list of the first few things you should customize in WooCommerce.', '{}', 'unactioned', 'woocommerce.com', '2021-08-06 14:54:10', NULL, 0, 'plain', '', 0, 'info'),
(18, 'wc-payments-qualitative-feedback', 'info', 'en_US', 'WooCommerce Payments setup - let us know what you think', 'Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.', '{}', 'pending', 'woocommerce.com', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(19, 'share-your-feedback-on-paypal', 'info', 'en_US', 'Share your feedback on PayPal', 'Share your feedback in this 2 minute survey about how we can make the process of accepting payments more useful for your store.', '{}', 'pending', 'woocommerce.com', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(20, 'wcpay_instant_deposits_gtm_2021', 'marketing', 'en_US', 'Get paid within minutes – Instant Deposits for WooCommerce Payments', 'Stay flexible with immediate access to your funds when you need them – including nights, weekends, and holidays. With <a href=\"https://woocommerce.com/products/woocommerce-payments/?utm_source=inbox&amp;utm_medium=product&amp;utm_campaign=wcpay_instant_deposits\">WooCommerce Payments\'</a> new Instant Deposits feature, you’re able to transfer your earnings to a debit card within minutes.', '{}', 'pending', 'woocommerce.com', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(21, 'google_listings_and_ads_install', 'marketing', 'en_US', 'Drive traffic and sales with Google', 'Reach online shoppers to drive traffic and sales for your store by showcasing products across Google, for free or with ads.', '{}', 'unactioned', 'woocommerce.com', '2021-09-09 16:31:33', NULL, 0, 'plain', '', 0, 'info'),
(22, 'wc-subscriptions-security-update-3-0-15', 'info', 'en_US', 'WooCommerce Subscriptions security update!', 'We recently released an important security update to WooCommerce Subscriptions. To ensure your site\'s data is protected, please upgrade <strong>WooCommerce Subscriptions to version 3.0.15</strong> or later.<br /><br />Click the button below to view and update to the latest Subscriptions version, or log in to <a href=\"https://woocommerce.com/my-dashboard\">WooCommerce.com Dashboard</a> and navigate to your <strong>Downloads</strong> page.<br /><br />We recommend always using the latest version of WooCommerce Subscriptions, and other software running on your site, to ensure maximum security.<br /><br />If you have any questions we are here to help — just <a href=\"https://woocommerce.com/my-account/create-a-ticket/\">open a ticket</a>.', '{}', 'pending', 'woocommerce.com', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(23, 'woocommerce-core-update-5-4-0', 'info', 'en_US', 'Update to WooCommerce 5.4.1 now', 'WooCommerce 5.4.1 addresses a checkout issue discovered in WooCommerce 5.4. We recommend upgrading to WooCommerce 5.4.1 as soon as possible.', '{}', 'pending', 'woocommerce.com', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(24, 'wcpay-promo-2020-11', 'marketing', 'en_US', 'wcpay-promo-2020-11', 'wcpay-promo-2020-11', '{}', 'pending', 'woocommerce.com', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(25, 'wcpay-promo-2020-12', 'marketing', 'en_US', 'wcpay-promo-2020-12', 'wcpay-promo-2020-12', '{}', 'pending', 'woocommerce.com', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(26, 'wcpay-promo-2021-6-incentive-1', 'marketing', 'en_US', 'Simplify the payments process for you and your customers with WooCommerce Payments', 'With <a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay601\">WooCommerce Payments</a>, you can securely accept all major cards, Apple Pay®, and recurring revenue in over 100 currencies.\n				Built into your store’s WooCommerce dashboard, track cash flow and manage all of your transactions in one place – with no setup costs or monthly fees.\n				<br /><br />\n				By clicking \"Get WooCommerce Payments,\" you agree to the <a href=\"https://wordpress.com/tos/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay601\">Terms of Service</a>\n				and acknowledge you have read the <a href=\"https://automattic.com/privacy/\">Privacy Policy</a>.\n				', '{}', 'pending', 'woocommerce.com', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(27, 'wcpay-promo-2021-6-incentive-2', 'marketing', 'en_US', 'Simplify the payments process for you and your customers with WooCommerce Payments', 'With <a href=\"https://woocommerce.com/payments/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay601\">WooCommerce Payments</a>, you can securely accept all major cards, Apple Pay®, and recurring revenue in over 100 currencies.\n				Built into your store’s WooCommerce dashboard, track cash flow and manage all of your transactions in one place – with no setup costs or monthly fees.\n				<br /><br />\n				By clicking \"Get WooCommerce Payments,\" you agree to the <a href=\"https://wordpress.com/tos/?utm_medium=notification&amp;utm_source=product&amp;utm_campaign=wcpay601\">Terms of Service</a>\n				and acknowledge you have read the <a href=\"https://automattic.com/privacy/\">Privacy Policy</a>.\n				', '{}', 'pending', 'woocommerce.com', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(28, 'ppxo-pps-upgrade-paypal-payments-1', 'info', 'en_US', 'Get the latest PayPal extension for WooCommerce', 'Heads up! There\'s a new PayPal on the block!<br /><br />Now is a great time to upgrade to our latest <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal extension</a> to continue to receive support and updates with PayPal.<br /><br />Get access to a full suite of PayPal payment methods, extensive currency and country coverage, and pay later options with the all-new PayPal extension for WooCommerce.', '{}', 'unactioned', 'woocommerce.com', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(29, 'ppxo-pps-upgrade-paypal-payments-2', 'info', 'en_US', 'Upgrade your PayPal experience!', 'We\'ve developed a whole new <a href=\"https://woocommerce.com/products/woocommerce-paypal-payments/\" target=\"_blank\">PayPal extension for WooCommerce</a> that combines the best features of our many PayPal extensions into just one extension.<br /><br />Get access to a full suite of PayPal payment methods, extensive currency and country coverage, offer subscription and recurring payments, and the new PayPal pay later options.<br /><br />Start using our latest PayPal today to continue to receive support and updates.', '{}', 'pending', 'woocommerce.com', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(30, 'woocommerce-core-sqli-july-2021-need-to-update', 'update', 'en_US', 'Action required: Critical vulnerabilities in WooCommerce', 'In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(31, 'woocommerce-blocks-sqli-july-2021-need-to-update', 'update', 'en_US', 'Action required: Critical vulnerabilities in WooCommerce Blocks', 'In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(32, 'woocommerce-core-sqli-july-2021-store-patched', 'update', 'en_US', 'Solved: Critical vulnerabilities patched in WooCommerce', 'In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(33, 'woocommerce-blocks-sqli-july-2021-store-patched', 'update', 'en_US', 'Solved: Critical vulnerabilities patched in WooCommerce Blocks', 'In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.', '{}', 'pending', 'woocommerce.com', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(34, 'wc-admin-onboarding-email-marketing', 'info', 'en_US', 'Sign up for tips, product updates, and inspiration', 'We\'re here for you - get tips, product updates and inspiration straight to your email box', '{}', 'unactioned', 'woocommerce-admin', '2021-08-04 09:05:05', NULL, 0, 'plain', '', 0, 'info'),
(35, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', '{}', 'unactioned', 'woocommerce-admin', '2021-08-04 09:05:06', NULL, 0, 'plain', '', 0, 'info'),
(36, 'wc-admin-coupon-page-moved', 'update', 'en_US', 'Coupon management has moved!', 'Coupons can now be managed from Marketing &gt; Coupons. Click the button below to remove the legacy WooCommerce &gt; Coupons menu item.', '{}', 'unactioned', 'woocommerce-admin', '2021-08-04 09:09:50', NULL, 0, 'plain', '', 0, 'info'),
(37, 'wc-admin-learn-more-about-variable-products', 'info', 'en_US', 'Learn more about variable products', 'Variable products are a powerful product type that lets you offer a set of variations on a product, with control over prices, stock, image and more for each variation. They can be used for a product like a shirt, where you can offer a large, medium and small and in different colors.', '{}', 'unactioned', 'woocommerce-admin', '2021-08-04 09:18:43', NULL, 0, 'plain', '', 0, 'info'),
(38, 'cocart-wc-admin-do-with-products', 'marketing', 'en_US', '6 things you can do with CoCart Products', 'Fetching your products via the REST API should be easy with no authentication issues. Learn more about the six things you can do with CoCart Products to help your development with CoCart.', '{}', 'unactioned', 'cocart', '2021-08-04 13:48:29', NULL, 0, 'thumbnail', 'https://cocart.xyz/wp-content/uploads/2020/03/rwmibqmoxry-128x214.jpg', 0, 'info'),
(39, 'cocart-wc-admin-help-improve', 'info', 'en_US', 'Help improve CoCart', 'I\'d love your input to shape the future of the CoCart REST API together. Feel free to share any feedback, ideas or suggestions that you have.', '{}', 'unactioned', 'cocart', '2021-08-04 13:48:29', NULL, 0, 'plain', '', 0, 'info'),
(40, 'cocart-wc-admin-need-help', 'info', 'en_US', 'Need help with CoCart?', 'You can ask a question on the support forum, discuss with other CoCart developers in the Slack community or get priority support.', '{}', 'unactioned', 'cocart', '2021-08-04 13:48:29', NULL, 0, 'plain', '', 0, 'info'),
(41, 'cocart-wc-admin-thanks-install', 'info', 'en_US', 'Thank you for installing CoCart!', 'Now you are ready to start developing your headless store. Visit the documentation site to learn how to access the API, view examples and find many action hooks and filters and more.', '{}', 'unactioned', 'cocart', '2021-08-04 13:48:29', NULL, 0, 'plain', '', 0, 'info'),
(42, 'cocart-wc-admin-upgrade-pro', 'info', 'en_US', 'Ready to take your headless store to the next level?', 'Upgrade to CoCart Pro and unlock more cart features and supported WooCommerce extensions.', '{}', 'unactioned', 'cocart', '2021-08-04 13:48:29', NULL, 0, 'plain', '', 0, 'info'),
(43, 'wc-admin-choosing-a-theme', 'marketing', 'en_US', 'Choosing a theme?', 'Check out the themes that are compatible with WooCommerce and choose one aligned with your brand and business needs.', '{}', 'unactioned', 'woocommerce-admin', '2021-08-05 09:16:56', NULL, 0, 'plain', '', 0, 'info'),
(44, 'wc-admin-insight-first-product-and-payment', 'survey', 'en_US', 'Insight', 'More than 80% of new merchants add the first product and have at least one payment method set up during the first week.<br><br>Do you find this type of insight useful?', '{}', 'unactioned', 'woocommerce-admin', '2021-08-05 09:16:56', NULL, 0, 'plain', '', 0, 'info'),
(45, 'wc-admin-mobile-app', 'info', 'en_US', 'Install Woo mobile app', 'Install the WooCommerce mobile app to manage orders, receive sales notifications, and view key metrics — wherever you are.', '{}', 'unactioned', 'woocommerce-admin', '2021-08-06 14:54:10', NULL, 0, 'plain', '', 0, 'info'),
(46, 'wc-admin-customizing-product-catalog', 'info', 'en_US', 'How to customize your product catalog', 'You want your product catalog and images to look great and align with your brand. This guide will give you all the tips you need to get your products looking great in your store.', '{}', 'unactioned', 'woocommerce-admin', '2021-08-06 14:54:10', NULL, 0, 'plain', '', 0, 'info'),
(47, 'wc-admin-onboarding-payments-reminder', 'info', 'en_US', 'Start accepting payments on your store!', 'Take payments with the provider that’s right for you - choose from 100+ payment gateways for WooCommerce.', '{}', 'unactioned', 'woocommerce-admin', '2021-08-09 09:16:28', NULL, 0, 'plain', '', 0, 'info'),
(48, 'wc-admin-marketing-intro', 'info', 'en_US', 'Connect with your audience', 'Grow your customer base and increase your sales with marketing tools built for WooCommerce.', '{}', 'unactioned', 'woocommerce-admin', '2021-08-09 09:16:28', NULL, 0, 'plain', '', 0, 'info'),
(49, 'wc-admin-usage-tracking-opt-in', 'info', 'en_US', 'Help WooCommerce improve with usage tracking', 'Gathering usage data allows us to improve WooCommerce. Your store will be considered as we evaluate new features, judge the quality of an update, or determine if an improvement makes sense. You can always visit the <a href=\"http://localhost:8888/rest/store/wp-admin/admin.php?page=wc-settings&#038;tab=advanced&#038;section=woocommerce_com\" target=\"_blank\">Settings</a> and choose to stop sharing data. <a href=\"https://woocommerce.com/usage-tracking\" target=\"_blank\">Read more</a> about what data we collect.', '{}', 'unactioned', 'woocommerce-admin', '2021-08-11 13:06:47', NULL, 0, 'plain', '', 0, 'info'),
(50, 'wc-admin-marketing-jetpack-backup', 'marketing', 'en_US', 'Protect your WooCommerce Store with Jetpack Backup.', 'Store downtime means lost sales. One-click restores get you back online quickly if something goes wrong.', '{}', 'unactioned', 'woocommerce-admin-notes', '2021-08-11 13:06:47', NULL, 0, 'plain', '', 0, 'info'),
(51, 'wc-admin-insight-first-sale', 'survey', 'en_US', 'Did you know?', 'A WooCommerce powered store needs on average 31 days to get the first sale. You\'re on the right track! Do you find this type of insight useful?', '{}', 'unactioned', 'woocommerce-admin', '2021-08-11 13:06:47', NULL, 0, 'plain', '', 0, 'info'),
(52, 'mercadopago_q3_2021_EN', 'marketing', 'en_US', 'Get paid with Mercado Pago Checkout', 'Latin America\'s leading payment processor is now available for WooCommerce stores. Securely accept debit and credit cards, cash, bank transfers, and installment payments – backed by exclusive fraud prevention tools.', '{}', 'pending', 'woocommerce.com', '2021-09-01 10:48:41', NULL, 0, 'plain', '', 0, 'info'),
(54, 'wc-admin-orders-milestone', 'info', 'en_US', 'Congratulations on processing 10 orders!', 'You\'ve hit the 10 orders milestone! Look at you go. Browse some WooCommerce success stories for inspiration.', '{}', 'unactioned', 'woocommerce-admin', '2021-09-08 20:05:48', NULL, 0, 'plain', '', 0, 'info'),
(55, 'wc-admin-real-time-order-alerts', 'info', 'en_US', 'Get real-time order alerts anywhere', 'Get notifications about store activity, including new orders and product reviews directly on your mobile devices with the Woo app.', '{}', 'unactioned', 'woocommerce-admin', '2021-11-07 14:46:31', NULL, 0, 'plain', '', 0, 'info');

-- --------------------------------------------------------

--
-- Table structure for table `rest_wc_admin_note_actions`
--

CREATE TABLE `rest_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonce_action` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `nonce_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rest_wc_admin_note_actions`
--

INSERT INTO `rest_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`, `actioned_text`, `nonce_action`, `nonce_name`) VALUES
(37, 34, 'yes-please', 'Yes please!', 'https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin', 'actioned', 0, '', NULL, NULL),
(55, 35, 'connect', 'Connect', '?page=wc-addons&section=helper', 'unactioned', 0, '', NULL, NULL),
(147, 36, 'remove-legacy-coupon-menu', 'Remove legacy coupon menu', 'http://localhost:8888/rest/store/wp-admin/admin.php?page=wc-admin&action=remove-coupon-menu', 'actioned', 1, '', NULL, NULL),
(220, 37, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/variable-product/?utm_source=inbox', 'actioned', 0, '', NULL, NULL),
(293, 38, 'cocart-learn-more-products', 'Learn more', 'https://cocart.xyz/6-things-you-can-do-with-cocart-products/?utm_medium=cocart-lite&utm_source=WordPress&utm_campaign=wc-admin&utm_content=wc-inbox&php_version=7.3&wp_version=5.8&wc_version=5.5.2&cocart_version=3.0.12&days_active=0&debug_mode=No&memory_limit=256%20МБ&user_language=ru_RU&multisite=No&environment_type=production', 'unactioned', 1, '', NULL, NULL),
(294, 39, 'cocart-share-feedback', 'Share feedback', 'https://github.com/co-cart/co-cart/issues/new?assignees=&labels=priority%3Alow%2C+enhancement&template=enhancement.md&title=ISBAT+...', 'unactioned', 0, '', NULL, NULL),
(295, 40, 'cocart-learn-more-support', 'Learn more', 'https://cocart.xyz/support/?utm_medium=cocart-lite&utm_source=WordPress&utm_campaign=wc-admin&utm_content=wc-inbox&php_version=7.3&wp_version=5.8&wc_version=5.5.2&cocart_version=3.0.12&days_active=0&debug_mode=No&memory_limit=256%20МБ&user_language=ru_RU&multisite=No&environment_type=production', 'unactioned', 1, '', NULL, NULL),
(296, 41, 'cocart-view-documentation', 'View Documentation', 'https://docs.cocart.xyz?utm_medium=cocart-lite&utm_source=WordPress&utm_campaign=wc-admin&utm_content=wc-inbox&php_version=7.3&wp_version=5.8&wc_version=5.5.2&cocart_version=3.0.12&days_active=0&debug_mode=No&memory_limit=256%20МБ&user_language=ru_RU&multisite=No&environment_type=production', 'unactioned', 1, '', NULL, NULL),
(297, 42, 'cocart-pro-learn-more', 'Learn more', 'https://cocart.xyz/pro/?utm_medium=cocart-lite&utm_source=WordPress&utm_campaign=wc-admin&utm_content=wc-inbox&php_version=7.3&wp_version=5.8&wc_version=5.5.2&cocart_version=3.0.12&days_active=0&debug_mode=No&memory_limit=256%20МБ&user_language=ru_RU&multisite=No&environment_type=production', 'unactioned', 1, '', NULL, NULL),
(514, 43, 'visit-the-theme-marketplace', 'Visit the theme marketplace', 'https://woocommerce.com/product-category/themes/?utm_source=inbox', 'actioned', 0, '', NULL, NULL),
(515, 44, 'affirm-insight-first-product-and-payment', 'Yes', '', 'actioned', 0, 'Thanks for your feedback', NULL, NULL),
(516, 44, 'affirm-insight-first-product-and-payment', 'No', '', 'actioned', 0, 'Thanks for your feedback', NULL, NULL),
(661, 45, 'learn-more', 'Learn more', 'https://woocommerce.com/mobile/', 'actioned', 0, '', NULL, NULL),
(662, 46, 'day-after-first-product', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-customizer/?utm_source=inbox', 'actioned', 0, '', NULL, NULL),
(843, 47, 'view-payment-gateways', 'Learn more', 'https://woocommerce.com/product-category/woocommerce-extensions/payment-gateways/', 'actioned', 1, '', NULL, NULL),
(844, 48, 'open-marketing-hub', 'Open marketing hub', 'http://localhost:8888/rest/store/wp-admin/admin.php?page=wc-admin&path=/marketing', 'actioned', 0, '', NULL, NULL),
(1061, 49, 'tracking-opt-in', 'Activate usage tracking', '', 'actioned', 1, '', NULL, NULL),
(1062, 50, 'jetpack-backup-woocommerce', 'Get backups', 'https://jetpack.com/upgrade/backup-woocommerce/?utm_source=inbox&#038;utm_medium=automattic_referred&#038;utm_campaign=jp_backup_to_woo', 'actioned', 0, '', NULL, NULL),
(1063, 51, 'affirm-insight-first-sale', 'Yes', '', 'actioned', 0, 'Thanks for your feedback', NULL, NULL),
(1064, 51, 'deny-insight-first-sale', 'No', '', 'actioned', 0, 'Thanks for your feedback', NULL, NULL),
(2547, 54, 'browse', 'Browse', 'https://woocommerce.com/success-stories/?utm_source=inbox', 'actioned', 0, '', NULL, NULL),
(2659, 52, 'mercadopago_q3_2021_EN', 'Free download', 'https://woocommerce.com/products/mercado-pago-checkout/?utm_source=inbox&utm_medium=product&utm_campaign=mercadopago_q3_2021_EN', 'actioned', 1, '', NULL, NULL),
(2876, 1, 'wayflyer_q3_2021', 'Get funded', 'https://woocommerce.com/products/wayflyer/', 'actioned', 1, '', NULL, NULL),
(2877, 2, 'eu_vat_changes_2021', 'Learn more about the EU tax regulations', 'https://woocommerce.com/posts/new-eu-vat-regulations', 'actioned', 1, '', NULL, NULL),
(2878, 3, 'open_wc_paypal_payments_product_page', 'Learn more', 'https://woocommerce.com/products/woocommerce-paypal-payments/', 'actioned', 1, '', NULL, NULL),
(2879, 4, 'upgrade_now_facebook_pixel_api', 'Upgrade now', 'plugin-install.php?tab=plugin-information&plugin=&section=changelog', 'actioned', 1, '', NULL, NULL),
(2880, 5, 'learn_more_facebook_ec', 'Learn more', 'https://woocommerce.com/products/facebook/', 'unactioned', 1, '', NULL, NULL),
(2881, 6, 'set-up-concierge', 'Schedule free session', 'https://wordpress.com/me/concierge', 'actioned', 1, '', NULL, NULL),
(2882, 7, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox', 'unactioned', 1, '', NULL, NULL),
(2883, 8, 'learn-more-ecomm-unique-shopping-experience', 'Learn more', 'https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox', 'actioned', 1, '', NULL, NULL),
(2884, 9, 'watch-the-webinar', 'Watch the webinar', 'https://youtu.be/V_2XtCOyZ7o', 'actioned', 1, '', NULL, NULL),
(2885, 10, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox', 'actioned', 1, '', NULL, NULL),
(2886, 11, 'boost-sales-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-boost-sales', 'actioned', 1, '', NULL, NULL),
(2887, 12, 'grow-your-business-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=square-grow-your-business', 'actioned', 1, '', NULL, NULL),
(2888, 13, 'add-apple-pay', 'Add Apple Pay', '/admin.php?page=wc-settings&tab=checkout&section=woocommerce_payments', 'actioned', 1, '', NULL, NULL),
(2889, 13, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/payments/apple-pay/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_applepay', 'actioned', 1, '', NULL, NULL),
(2890, 14, 'boost-sales-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-boost-sales', 'actioned', 1, '', NULL, NULL),
(2891, 15, 'grow-your-business-marketing-guide', 'See marketing guide', 'https://developer.apple.com/apple-pay/marketing/?utm_source=inbox&utm_campaign=wcpay-grow-your-business', 'actioned', 1, '', NULL, NULL),
(2892, 16, 'optimizing-the-checkout-flow', 'Learn more', 'https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox', 'actioned', 1, '', NULL, NULL),
(2893, 17, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/first-things-customize-woocommerce/?utm_source=inbox', 'unactioned', 1, '', NULL, NULL),
(2894, 18, 'qualitative-feedback-from-new-users', 'Share feedback', 'https://automattic.survey.fm/wc-pay-new', 'actioned', 1, '', NULL, NULL),
(2895, 19, 'share-feedback', 'Share feedback', 'http://automattic.survey.fm/paypal-feedback', 'unactioned', 1, '', NULL, NULL),
(2896, 20, 'learn-more', 'Learn about Instant Deposits eligibility', 'https://docs.woocommerce.com/document/payments/instant-deposits/?utm_source=inbox&utm_medium=product&utm_campaign=wcpay_instant_deposits', 'actioned', 1, '', NULL, NULL),
(2897, 21, 'get-started', 'Get started', 'https://woocommerce.com/products/google-listings-and-ads', 'actioned', 1, '', NULL, NULL),
(2898, 22, 'update-wc-subscriptions-3-0-15', 'View latest version', 'http://localhost:8888/rest/store/wp-admin/admin.php?page=wc-admin&page=wc-addons&section=helper', 'actioned', 1, '', NULL, NULL),
(2899, 23, 'update-wc-core-5-4-0', 'How to update WooCommerce', 'https://docs.woocommerce.com/document/how-to-update-woocommerce/', 'actioned', 1, '', NULL, NULL),
(2900, 26, 'get-woo-commerce-payments', 'Get WooCommerce Payments', 'admin.php?page=wc-admin&action=setup-woocommerce-payments', 'actioned', 1, '', NULL, NULL),
(2901, 27, 'get-woocommerce-payments', 'Get WooCommerce Payments', 'admin.php?page=wc-admin&action=setup-woocommerce-payments', 'actioned', 1, '', NULL, NULL),
(2902, 28, 'ppxo-pps-install-paypal-payments-1', 'View upgrade guide', 'https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/', 'actioned', 1, '', NULL, NULL),
(2903, 29, 'ppxo-pps-install-paypal-payments-2', 'View upgrade guide', 'https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/', 'actioned', 1, '', NULL, NULL),
(2904, 30, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=vulnerability_comms', 'unactioned', 1, '', NULL, NULL),
(2905, 30, 'dismiss', 'Dismiss', '', 'actioned', 0, '', NULL, NULL),
(2906, 31, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=vulnerability_comms', 'unactioned', 1, '', NULL, NULL),
(2907, 31, 'dismiss', 'Dismiss', '', 'actioned', 0, '', NULL, NULL),
(2908, 32, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=vulnerability_comms', 'unactioned', 1, '', NULL, NULL),
(2909, 32, 'dismiss', 'Dismiss', '', 'actioned', 0, '', NULL, NULL),
(2910, 33, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=vulnerability_comms', 'unactioned', 1, '', NULL, NULL),
(2911, 33, 'dismiss', 'Dismiss', '', 'actioned', 0, '', NULL, NULL),
(2912, 55, 'learn-more', 'Learn more', 'https://woocommerce.com/mobile/?utm_source=inbox', 'actioned', 0, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rest_wc_category_lookup`
--

CREATE TABLE `rest_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rest_wc_category_lookup`
--

INSERT INTO `rest_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `rest_wc_customer_lookup`
--

CREATE TABLE `rest_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rest_wc_customer_lookup`
--

INSERT INTO `rest_wc_customer_lookup` (`customer_id`, `user_id`, `username`, `first_name`, `last_name`, `email`, `date_last_active`, `date_registered`, `country`, `postcode`, `city`, `state`) VALUES
(1, 1, 'admin', 'Евгений', 'test', 'burlakeugene@gmail.com', '2021-12-23 21:00:00', '2021-08-04 05:49:41', 'RU', '3123D', 'dsadsa', 'fasfas'),
(2, NULL, '', '', '', '', '2021-09-08 16:07:09', NULL, '', '', '', ''),
(3, NULL, '', 'EUgnee', '', '', '2021-09-08 16:45:33', NULL, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `rest_wc_download_log`
--

CREATE TABLE `rest_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rest_wc_order_coupon_lookup`
--

CREATE TABLE `rest_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rest_wc_order_product_lookup`
--

CREATE TABLE `rest_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rest_wc_order_product_lookup`
--

INSERT INTO `rest_wc_order_product_lookup` (`order_item_id`, `order_id`, `product_id`, `variation_id`, `customer_id`, `date_created`, `product_qty`, `product_net_revenue`, `product_gross_revenue`, `coupon_amount`, `tax_amount`, `shipping_amount`, `shipping_tax_amount`) VALUES
(24, 157, 16, 0, 1, '2021-09-08 22:00:42', 2, 16, 16, 0, 0, 0, 0),
(25, 158, 16, 0, 1, '2021-09-08 22:01:03', 2, 16, 16, 0, 0, 0, 0),
(27, 159, 16, 0, 1, '2021-09-08 22:05:22', 3, 24, 24, 0, 0, 0, 0),
(28, 160, 16, 0, 1, '2021-09-08 22:05:34', 3, 24, 24, 0, 0, 0, 0),
(29, 161, 16, 0, 1, '2021-09-08 22:05:50', 3, 24, 24, 0, 0, 0, 0),
(30, 162, 16, 0, 1, '2021-09-08 22:06:03', 3, 24, 24, 0, 0, 0, 0),
(32, 163, 16, 0, 2, '2021-09-08 22:07:09', 2, 16, 16, 0, 0, 0, 0),
(33, 163, 22, 0, 2, '2021-09-08 22:07:09', 1, 9, 9, 0, 0, 0, 0),
(35, 164, 16, 0, 1, '2021-09-08 22:08:17', 1, 8, 8, 0, 0, 0, 0),
(37, 165, 16, 0, 1, '2021-09-08 22:10:35', 1, 8, 8, 0, 0, 0, 0),
(39, 166, 16, 0, 1, '2021-09-08 22:12:25', 1, 8, 8, 0, 0, 0, 0),
(41, 167, 16, 0, 1, '2021-09-08 22:24:34', 1, 8, 8, 0, 0, 0, 0),
(43, 168, 16, 0, 1, '2021-09-08 22:25:03', 1, 8, 8, 0, 0, 0, 0),
(45, 169, 16, 0, 1, '2021-09-08 22:37:12', 1, 8, 8, 0, 0, 0, 0),
(47, 170, 16, 0, 1, '2021-09-08 22:38:44', 2, 16, 16, 0, 0, 0, 0),
(49, 171, 16, 0, 3, '2021-09-08 22:45:33', 2, 16, 16, 0, 0, 0, 0),
(50, 171, 22, 0, 3, '2021-09-08 22:45:33', 1, 9, 9, 0, 0, 0, 0),
(52, 173, 16, 0, 1, '2021-09-08 23:04:27', 1, 8, 8, 0, 0, 0, 0),
(54, 174, 16, 0, 1, '2021-09-08 23:06:14', 2, 16, 16, 0, 0, 0, 0),
(55, 174, 22, 0, 1, '2021-09-08 23:06:14', 1, 9, 9, 0, 0, 0, 0),
(57, 175, 16, 0, 1, '2021-09-08 23:06:34', 2, 16, 16, 0, 0, 0, 0),
(59, 176, 16, 0, 1, '2021-09-08 23:06:34', 2, 16, 16, 0, 0, 0, 0),
(61, 177, 16, 0, 1, '2021-09-08 23:06:35', 2, 16, 16, 0, 0, 0, 0),
(66, 181, 16, 0, 1, '2021-09-08 23:09:54', 1, 8, 8, 0, 0, 0, 0),
(67, 181, 22, 0, 1, '2021-09-08 23:09:54', 1, 9, 9, 0, 0, 0, 0),
(69, 182, 16, 0, 1, '2021-09-08 23:10:13', 1, 8, 8, 0, 0, 0, 0),
(71, 183, 16, 0, 1, '2021-09-08 23:11:11', 2, 16, 16, 0, 0, 0, 0),
(73, 184, 16, 0, 1, '2021-09-08 23:12:13', 1, 8, 8, 0, 0, 0, 0),
(74, 184, 22, 0, 1, '2021-09-08 23:12:13', 1, 9, 9, 0, 0, 0, 0),
(76, 185, 16, 0, 1, '2021-09-08 23:13:18', 2, 16, 16, 0, 0, 0, 0),
(78, 186, 16, 0, 1, '2021-09-08 23:15:34', 1, 8, 8, 0, 0, 0, 0),
(80, 187, 16, 0, 1, '2021-09-08 23:20:40', 2, 16, 16, 0, 0, 0, 0),
(81, 187, 22, 0, 1, '2021-09-08 23:20:40', 1, 9, 9, 0, 0, 0, 0),
(83, 191, 16, 0, 1, '2021-09-12 02:44:48', 6, 48, 48, 0, 0, 0, 0),
(84, 191, 22, 0, 1, '2021-09-12 02:44:48', 1, 9, 9, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rest_wc_order_stats`
--

CREATE TABLE `rest_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rest_wc_order_stats`
--

INSERT INTO `rest_wc_order_stats` (`order_id`, `parent_id`, `date_created`, `date_created_gmt`, `num_items_sold`, `total_sales`, `tax_total`, `shipping_total`, `net_total`, `returning_customer`, `status`, `customer_id`) VALUES
(157, 0, '2021-09-08 22:00:42', '2021-09-08 19:00:42', 2, 16, 0, 0, 16, 1, 'wc-cancelled', 1),
(158, 0, '2021-09-08 22:01:03', '2021-09-08 19:01:03', 2, 16, 0, 0, 16, 0, 'wc-processing', 1),
(159, 0, '2021-09-08 22:05:22', '2021-09-08 19:05:22', 3, 24, 0, 0, 24, 1, 'wc-cancelled', 1),
(160, 0, '2021-09-08 22:05:34', '2021-09-08 19:05:34', 3, 24, 0, 0, 24, 1, 'wc-cancelled', 1),
(161, 0, '2021-09-08 22:05:50', '2021-09-08 19:05:50', 3, 24, 0, 0, 24, 1, 'wc-cancelled', 1),
(162, 0, '2021-09-08 22:06:03', '2021-09-08 19:06:03', 3, 24, 0, 0, 24, 1, 'wc-processing', 1),
(163, 0, '2021-09-08 22:07:09', '2021-09-08 19:07:09', 3, 25, 0, 0, 25, 0, 'wc-processing', 2),
(164, 0, '2021-09-08 22:08:17', '2021-09-08 19:08:17', 1, 8, 0, 0, 8, 1, 'wc-processing', 1),
(165, 0, '2021-09-08 22:10:35', '2021-09-08 19:10:35', 1, 8, 0, 0, 8, 1, 'wc-processing', 1),
(166, 0, '2021-09-08 22:12:25', '2021-09-08 19:12:25', 1, 8, 0, 0, 8, 1, 'wc-processing', 1),
(167, 0, '2021-09-08 22:24:34', '2021-09-08 19:24:34', 1, 8, 0, 0, 8, 1, 'wc-processing', 1),
(168, 0, '2021-09-08 22:25:03', '2021-09-08 19:25:03', 1, 8, 0, 0, 8, 1, 'wc-processing', 1),
(169, 0, '2021-09-08 22:37:12', '2021-09-08 19:37:12', 1, 8, 0, 0, 8, 1, 'wc-processing', 1),
(170, 0, '2021-09-08 22:38:44', '2021-09-08 19:38:44', 2, 16, 0, 0, 16, 1, 'wc-processing', 1),
(171, 0, '2021-09-08 22:45:33', '2021-09-08 19:45:33', 3, 25, 0, 0, 25, 0, 'wc-processing', 3),
(173, 0, '2021-09-08 23:04:27', '2021-09-08 20:04:27', 1, 8, 0, 0, 8, 1, 'wc-processing', 1),
(174, 0, '2021-09-08 23:06:14', '2021-09-08 20:06:14', 3, 25, 0, 0, 25, 1, 'wc-processing', 1),
(175, 0, '2021-09-08 23:06:34', '2021-09-08 20:06:34', 2, 16, 0, 0, 16, 1, 'wc-processing', 1),
(176, 0, '2021-09-08 23:06:34', '2021-09-08 20:06:34', 2, 16, 0, 0, 16, 1, 'wc-processing', 1),
(177, 0, '2021-09-08 23:06:35', '2021-09-08 20:06:35', 2, 16, 0, 0, 16, 1, 'wc-processing', 1),
(178, 0, '2021-09-08 23:06:35', '2021-09-08 20:06:35', 0, 0, 0, 0, 0, 1, 'wc-completed', 1),
(179, 0, '2021-09-08 23:06:35', '2021-09-08 20:06:35', 0, 0, 0, 0, 0, 1, 'wc-completed', 1),
(180, 0, '2021-09-08 23:06:35', '2021-09-08 20:06:35', 0, 0, 0, 0, 0, 1, 'wc-completed', 1),
(181, 0, '2021-09-08 23:09:54', '2021-09-08 20:09:54', 2, 17, 0, 0, 17, 1, 'wc-processing', 1),
(182, 0, '2021-09-08 23:10:13', '2021-09-08 20:10:13', 1, 8, 0, 0, 8, 1, 'wc-processing', 1),
(183, 0, '2021-09-08 23:11:11', '2021-09-08 20:11:11', 2, 16, 0, 0, 16, 1, 'wc-processing', 1),
(184, 0, '2021-09-08 23:12:13', '2021-09-08 20:12:13', 2, 17, 0, 0, 17, 1, 'wc-processing', 1),
(185, 0, '2021-09-08 23:13:18', '2021-09-08 20:13:18', 2, 16, 0, 0, 16, 1, 'wc-processing', 1),
(186, 0, '2021-09-08 23:15:34', '2021-09-08 20:15:34', 1, 8, 0, 0, 8, 1, 'wc-processing', 1),
(187, 0, '2021-09-08 23:20:40', '2021-09-08 20:20:40', 3, 25, 0, 0, 25, 1, 'wc-processing', 1),
(191, 0, '2021-09-12 02:44:48', '2021-09-11 23:44:48', 7, 57, 0, 0, 57, 1, 'wc-processing', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rest_wc_order_tax_lookup`
--

CREATE TABLE `rest_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rest_wc_product_meta_lookup`
--

CREATE TABLE `rest_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0',
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rest_wc_product_meta_lookup`
--

INSERT INTO `rest_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(16, '', 0, 0, '8.0000', '8.0000', 1, NULL, 'instock', 0, '0.00', 55, 'taxable', ''),
(22, '', 0, 0, '9.0000', '9.0000', 0, NULL, 'instock', 0, '0.00', 9, 'taxable', ''),
(36, '', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(136, '', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', '');

-- --------------------------------------------------------

--
-- Table structure for table `rest_wc_reserved_stock`
--

CREATE TABLE `rest_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rest_wc_tax_rate_classes`
--

CREATE TABLE `rest_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rest_wc_tax_rate_classes`
--

INSERT INTO `rest_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Table structure for table `rest_wc_webhooks`
--

CREATE TABLE `rest_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rest_woocommerce_api_keys`
--

CREATE TABLE `rest_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rest_woocommerce_attribute_taxonomies`
--

CREATE TABLE `rest_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rest_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `rest_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rest_woocommerce_log`
--

CREATE TABLE `rest_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rest_woocommerce_order_itemmeta`
--

CREATE TABLE `rest_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rest_woocommerce_order_itemmeta`
--

INSERT INTO `rest_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(182, 24, '_product_id', '16'),
(183, 24, '_variation_id', '0'),
(184, 24, '_qty', '2'),
(185, 24, '_tax_class', ''),
(186, 24, '_line_subtotal', '16'),
(187, 24, '_line_subtotal_tax', '0'),
(188, 24, '_line_total', '16'),
(189, 24, '_line_tax', '0'),
(190, 24, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(191, 25, '_product_id', '16'),
(192, 25, '_variation_id', '0'),
(193, 25, '_qty', '2'),
(194, 25, '_tax_class', ''),
(195, 25, '_line_subtotal', '16'),
(196, 25, '_line_subtotal_tax', '0'),
(197, 25, '_line_total', '16'),
(198, 25, '_line_tax', '0'),
(199, 25, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(200, 26, 'method_id', 'courier'),
(201, 26, 'instance_id', ''),
(202, 26, 'cost', '0'),
(203, 26, 'total_tax', '0'),
(204, 26, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(205, 27, '_product_id', '16'),
(206, 27, '_variation_id', '0'),
(207, 27, '_qty', '3'),
(208, 27, '_tax_class', ''),
(209, 27, '_line_subtotal', '24'),
(210, 27, '_line_subtotal_tax', '0'),
(211, 27, '_line_total', '24'),
(212, 27, '_line_tax', '0'),
(213, 27, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(214, 28, '_product_id', '16'),
(215, 28, '_variation_id', '0'),
(216, 28, '_qty', '3'),
(217, 28, '_tax_class', ''),
(218, 28, '_line_subtotal', '24'),
(219, 28, '_line_subtotal_tax', '0'),
(220, 28, '_line_total', '24'),
(221, 28, '_line_tax', '0'),
(222, 28, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(223, 29, '_product_id', '16'),
(224, 29, '_variation_id', '0'),
(225, 29, '_qty', '3'),
(226, 29, '_tax_class', ''),
(227, 29, '_line_subtotal', '24'),
(228, 29, '_line_subtotal_tax', '0'),
(229, 29, '_line_total', '24'),
(230, 29, '_line_tax', '0'),
(231, 29, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(232, 30, '_product_id', '16'),
(233, 30, '_variation_id', '0'),
(234, 30, '_qty', '3'),
(235, 30, '_tax_class', ''),
(236, 30, '_line_subtotal', '24'),
(237, 30, '_line_subtotal_tax', '0'),
(238, 30, '_line_total', '24'),
(239, 30, '_line_tax', '0'),
(240, 30, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(241, 31, 'method_id', 'courier'),
(242, 31, 'instance_id', ''),
(243, 31, 'cost', '0'),
(244, 31, 'total_tax', '0'),
(245, 31, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(246, 32, '_product_id', '16'),
(247, 32, '_variation_id', '0'),
(248, 32, '_qty', '2'),
(249, 32, '_tax_class', ''),
(250, 32, '_line_subtotal', '16'),
(251, 32, '_line_subtotal_tax', '0'),
(252, 32, '_line_total', '16'),
(253, 32, '_line_tax', '0'),
(254, 32, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(255, 33, '_product_id', '22'),
(256, 33, '_variation_id', '0'),
(257, 33, '_qty', '1'),
(258, 33, '_tax_class', ''),
(259, 33, '_line_subtotal', '9'),
(260, 33, '_line_subtotal_tax', '0'),
(261, 33, '_line_total', '9'),
(262, 33, '_line_tax', '0'),
(263, 33, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(264, 34, 'method_id', 'courier'),
(265, 34, 'instance_id', ''),
(266, 34, 'cost', '0'),
(267, 34, 'total_tax', '0'),
(268, 34, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(269, 35, '_product_id', '16'),
(270, 35, '_variation_id', '0'),
(271, 35, '_qty', '1'),
(272, 35, '_tax_class', ''),
(273, 35, '_line_subtotal', '8'),
(274, 35, '_line_subtotal_tax', '0'),
(275, 35, '_line_total', '8'),
(276, 35, '_line_tax', '0'),
(277, 35, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(278, 36, 'method_id', 'courier'),
(279, 36, 'instance_id', ''),
(280, 36, 'cost', '0'),
(281, 36, 'total_tax', '0'),
(282, 36, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(283, 37, '_product_id', '16'),
(284, 37, '_variation_id', '0'),
(285, 37, '_qty', '1'),
(286, 37, '_tax_class', ''),
(287, 37, '_line_subtotal', '8'),
(288, 37, '_line_subtotal_tax', '0'),
(289, 37, '_line_total', '8'),
(290, 37, '_line_tax', '0'),
(291, 37, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(292, 38, 'method_id', 'courier'),
(293, 38, 'instance_id', ''),
(294, 38, 'cost', '0'),
(295, 38, 'total_tax', '0'),
(296, 38, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(297, 39, '_product_id', '16'),
(298, 39, '_variation_id', '0'),
(299, 39, '_qty', '1'),
(300, 39, '_tax_class', ''),
(301, 39, '_line_subtotal', '8'),
(302, 39, '_line_subtotal_tax', '0'),
(303, 39, '_line_total', '8'),
(304, 39, '_line_tax', '0'),
(305, 39, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(306, 40, 'method_id', 'courier'),
(307, 40, 'instance_id', ''),
(308, 40, 'cost', '0'),
(309, 40, 'total_tax', '0'),
(310, 40, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(311, 41, '_product_id', '16'),
(312, 41, '_variation_id', '0'),
(313, 41, '_qty', '1'),
(314, 41, '_tax_class', ''),
(315, 41, '_line_subtotal', '8'),
(316, 41, '_line_subtotal_tax', '0'),
(317, 41, '_line_total', '8'),
(318, 41, '_line_tax', '0'),
(319, 41, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(320, 42, 'method_id', 'courier'),
(321, 42, 'instance_id', ''),
(322, 42, 'cost', '0'),
(323, 42, 'total_tax', '0'),
(324, 42, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(325, 43, '_product_id', '16'),
(326, 43, '_variation_id', '0'),
(327, 43, '_qty', '1'),
(328, 43, '_tax_class', ''),
(329, 43, '_line_subtotal', '8'),
(330, 43, '_line_subtotal_tax', '0'),
(331, 43, '_line_total', '8'),
(332, 43, '_line_tax', '0'),
(333, 43, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(334, 44, 'method_id', 'self'),
(335, 44, 'instance_id', ''),
(336, 44, 'cost', '0'),
(337, 44, 'total_tax', '0'),
(338, 44, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(339, 45, '_product_id', '16'),
(340, 45, '_variation_id', '0'),
(341, 45, '_qty', '1'),
(342, 45, '_tax_class', ''),
(343, 45, '_line_subtotal', '8'),
(344, 45, '_line_subtotal_tax', '0'),
(345, 45, '_line_total', '8'),
(346, 45, '_line_tax', '0'),
(347, 45, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(348, 46, 'method_id', 'courier'),
(349, 46, 'instance_id', ''),
(350, 46, 'cost', '0'),
(351, 46, 'total_tax', '0'),
(352, 46, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(353, 47, '_product_id', '16'),
(354, 47, '_variation_id', '0'),
(355, 47, '_qty', '2'),
(356, 47, '_tax_class', ''),
(357, 47, '_line_subtotal', '16'),
(358, 47, '_line_subtotal_tax', '0'),
(359, 47, '_line_total', '16'),
(360, 47, '_line_tax', '0'),
(361, 47, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(362, 48, 'method_id', 'courier'),
(363, 48, 'instance_id', ''),
(364, 48, 'cost', '0'),
(365, 48, 'total_tax', '0'),
(366, 48, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(367, 49, '_product_id', '16'),
(368, 49, '_variation_id', '0'),
(369, 49, '_qty', '2'),
(370, 49, '_tax_class', ''),
(371, 49, '_line_subtotal', '16'),
(372, 49, '_line_subtotal_tax', '0'),
(373, 49, '_line_total', '16'),
(374, 49, '_line_tax', '0'),
(375, 49, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(376, 50, '_product_id', '22'),
(377, 50, '_variation_id', '0'),
(378, 50, '_qty', '1'),
(379, 50, '_tax_class', ''),
(380, 50, '_line_subtotal', '9'),
(381, 50, '_line_subtotal_tax', '0'),
(382, 50, '_line_total', '9'),
(383, 50, '_line_tax', '0'),
(384, 50, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(385, 51, 'method_id', 'courier'),
(386, 51, 'instance_id', ''),
(387, 51, 'cost', '0'),
(388, 51, 'total_tax', '0'),
(389, 51, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(390, 52, '_product_id', '16'),
(391, 52, '_variation_id', '0'),
(392, 52, '_qty', '1'),
(393, 52, '_tax_class', ''),
(394, 52, '_line_subtotal', '8'),
(395, 52, '_line_subtotal_tax', '0'),
(396, 52, '_line_total', '8'),
(397, 52, '_line_tax', '0'),
(398, 52, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(399, 53, 'method_id', 'courier'),
(400, 53, 'instance_id', ''),
(401, 53, 'cost', '0'),
(402, 53, 'total_tax', '0'),
(403, 53, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(404, 54, '_product_id', '16'),
(405, 54, '_variation_id', '0'),
(406, 54, '_qty', '2'),
(407, 54, '_tax_class', ''),
(408, 54, '_line_subtotal', '16'),
(409, 54, '_line_subtotal_tax', '0'),
(410, 54, '_line_total', '16'),
(411, 54, '_line_tax', '0'),
(412, 54, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(413, 55, '_product_id', '22'),
(414, 55, '_variation_id', '0'),
(415, 55, '_qty', '1'),
(416, 55, '_tax_class', ''),
(417, 55, '_line_subtotal', '9'),
(418, 55, '_line_subtotal_tax', '0'),
(419, 55, '_line_total', '9'),
(420, 55, '_line_tax', '0'),
(421, 55, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(422, 56, 'method_id', 'courier'),
(423, 56, 'instance_id', ''),
(424, 56, 'cost', '0'),
(425, 56, 'total_tax', '0'),
(426, 56, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(427, 57, '_product_id', '16'),
(428, 57, '_variation_id', '0'),
(429, 57, '_qty', '2'),
(430, 57, '_tax_class', ''),
(431, 57, '_line_subtotal', '16'),
(432, 57, '_line_subtotal_tax', '0'),
(433, 57, '_line_total', '16'),
(434, 57, '_line_tax', '0'),
(435, 57, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(436, 58, 'method_id', 'courier'),
(437, 58, 'instance_id', ''),
(438, 58, 'cost', '0'),
(439, 58, 'total_tax', '0'),
(440, 58, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(441, 59, '_product_id', '16'),
(442, 59, '_variation_id', '0'),
(443, 59, '_qty', '2'),
(444, 59, '_tax_class', ''),
(445, 59, '_line_subtotal', '16'),
(446, 59, '_line_subtotal_tax', '0'),
(447, 59, '_line_total', '16'),
(448, 59, '_line_tax', '0'),
(449, 59, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(450, 60, 'method_id', 'courier'),
(451, 60, 'instance_id', ''),
(452, 60, 'cost', '0'),
(453, 60, 'total_tax', '0'),
(454, 60, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(455, 61, '_product_id', '16'),
(456, 61, '_variation_id', '0'),
(457, 61, '_qty', '2'),
(458, 61, '_tax_class', ''),
(459, 61, '_line_subtotal', '16'),
(460, 61, '_line_subtotal_tax', '0'),
(461, 61, '_line_total', '16'),
(462, 61, '_line_tax', '0'),
(463, 61, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(464, 62, 'method_id', 'courier'),
(465, 62, 'instance_id', ''),
(466, 62, 'cost', '0'),
(467, 62, 'total_tax', '0'),
(468, 62, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(469, 63, 'method_id', 'courier'),
(470, 63, 'instance_id', ''),
(471, 63, 'cost', '0'),
(472, 63, 'total_tax', '0'),
(473, 63, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(474, 64, 'method_id', 'courier'),
(475, 64, 'instance_id', ''),
(476, 64, 'cost', '0'),
(477, 64, 'total_tax', '0'),
(478, 64, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(479, 65, 'method_id', 'courier'),
(480, 65, 'instance_id', ''),
(481, 65, 'cost', '0'),
(482, 65, 'total_tax', '0'),
(483, 65, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(484, 66, '_product_id', '16'),
(485, 66, '_variation_id', '0'),
(486, 66, '_qty', '1'),
(487, 66, '_tax_class', ''),
(488, 66, '_line_subtotal', '8'),
(489, 66, '_line_subtotal_tax', '0'),
(490, 66, '_line_total', '8'),
(491, 66, '_line_tax', '0'),
(492, 66, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(493, 67, '_product_id', '22'),
(494, 67, '_variation_id', '0'),
(495, 67, '_qty', '1'),
(496, 67, '_tax_class', ''),
(497, 67, '_line_subtotal', '9'),
(498, 67, '_line_subtotal_tax', '0'),
(499, 67, '_line_total', '9'),
(500, 67, '_line_tax', '0'),
(501, 67, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(502, 68, 'method_id', 'courier'),
(503, 68, 'instance_id', ''),
(504, 68, 'cost', '0'),
(505, 68, 'total_tax', '0'),
(506, 68, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(507, 69, '_product_id', '16'),
(508, 69, '_variation_id', '0'),
(509, 69, '_qty', '1'),
(510, 69, '_tax_class', ''),
(511, 69, '_line_subtotal', '8'),
(512, 69, '_line_subtotal_tax', '0'),
(513, 69, '_line_total', '8'),
(514, 69, '_line_tax', '0'),
(515, 69, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(516, 70, 'method_id', 'courier'),
(517, 70, 'instance_id', ''),
(518, 70, 'cost', '0'),
(519, 70, 'total_tax', '0'),
(520, 70, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(521, 71, '_product_id', '16'),
(522, 71, '_variation_id', '0'),
(523, 71, '_qty', '2'),
(524, 71, '_tax_class', ''),
(525, 71, '_line_subtotal', '16'),
(526, 71, '_line_subtotal_tax', '0'),
(527, 71, '_line_total', '16'),
(528, 71, '_line_tax', '0'),
(529, 71, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(530, 72, 'method_id', 'courier'),
(531, 72, 'instance_id', ''),
(532, 72, 'cost', '0'),
(533, 72, 'total_tax', '0'),
(534, 72, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(535, 73, '_product_id', '16'),
(536, 73, '_variation_id', '0'),
(537, 73, '_qty', '1'),
(538, 73, '_tax_class', ''),
(539, 73, '_line_subtotal', '8'),
(540, 73, '_line_subtotal_tax', '0'),
(541, 73, '_line_total', '8'),
(542, 73, '_line_tax', '0'),
(543, 73, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(544, 74, '_product_id', '22'),
(545, 74, '_variation_id', '0'),
(546, 74, '_qty', '1'),
(547, 74, '_tax_class', ''),
(548, 74, '_line_subtotal', '9'),
(549, 74, '_line_subtotal_tax', '0'),
(550, 74, '_line_total', '9'),
(551, 74, '_line_tax', '0'),
(552, 74, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(553, 75, 'method_id', 'courier'),
(554, 75, 'instance_id', ''),
(555, 75, 'cost', '0'),
(556, 75, 'total_tax', '0'),
(557, 75, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(558, 76, '_product_id', '16'),
(559, 76, '_variation_id', '0'),
(560, 76, '_qty', '2'),
(561, 76, '_tax_class', ''),
(562, 76, '_line_subtotal', '16'),
(563, 76, '_line_subtotal_tax', '0'),
(564, 76, '_line_total', '16'),
(565, 76, '_line_tax', '0'),
(566, 76, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(567, 77, 'method_id', 'courier'),
(568, 77, 'instance_id', ''),
(569, 77, 'cost', '0'),
(570, 77, 'total_tax', '0'),
(571, 77, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(572, 78, '_product_id', '16'),
(573, 78, '_variation_id', '0'),
(574, 78, '_qty', '1'),
(575, 78, '_tax_class', ''),
(576, 78, '_line_subtotal', '8'),
(577, 78, '_line_subtotal_tax', '0'),
(578, 78, '_line_total', '8'),
(579, 78, '_line_tax', '0'),
(580, 78, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(581, 79, 'method_id', 'courier'),
(582, 79, 'instance_id', ''),
(583, 79, 'cost', '0'),
(584, 79, 'total_tax', '0'),
(585, 79, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(586, 80, '_product_id', '16'),
(587, 80, '_variation_id', '0'),
(588, 80, '_qty', '2'),
(589, 80, '_tax_class', ''),
(590, 80, '_line_subtotal', '16'),
(591, 80, '_line_subtotal_tax', '0'),
(592, 80, '_line_total', '16'),
(593, 80, '_line_tax', '0'),
(594, 80, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(595, 81, '_product_id', '22'),
(596, 81, '_variation_id', '0'),
(597, 81, '_qty', '1'),
(598, 81, '_tax_class', ''),
(599, 81, '_line_subtotal', '9'),
(600, 81, '_line_subtotal_tax', '0'),
(601, 81, '_line_total', '9'),
(602, 81, '_line_tax', '0'),
(603, 81, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(604, 82, 'method_id', 'courier'),
(605, 82, 'instance_id', ''),
(606, 82, 'cost', '0'),
(607, 82, 'total_tax', '0'),
(608, 82, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(609, 83, '_product_id', '16'),
(610, 83, '_variation_id', '0'),
(611, 83, '_qty', '6'),
(612, 83, '_tax_class', ''),
(613, 83, '_line_subtotal', '48'),
(614, 83, '_line_subtotal_tax', '0'),
(615, 83, '_line_total', '48'),
(616, 83, '_line_tax', '0'),
(617, 83, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(618, 84, '_product_id', '22'),
(619, 84, '_variation_id', '0'),
(620, 84, '_qty', '1'),
(621, 84, '_tax_class', ''),
(622, 84, '_line_subtotal', '9'),
(623, 84, '_line_subtotal_tax', '0'),
(624, 84, '_line_total', '9'),
(625, 84, '_line_tax', '0'),
(626, 84, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(627, 85, 'method_id', 'self'),
(628, 85, 'instance_id', ''),
(629, 85, 'cost', '0'),
(630, 85, 'total_tax', '0'),
(631, 85, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}');

-- --------------------------------------------------------

--
-- Table structure for table `rest_woocommerce_order_items`
--

CREATE TABLE `rest_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rest_woocommerce_order_items`
--

INSERT INTO `rest_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(24, 'test', 'line_item', 157),
(25, 'test', 'line_item', 158),
(26, 'Доставка курьером', 'shipping', 158),
(27, 'test', 'line_item', 159),
(28, 'test', 'line_item', 160),
(29, 'test', 'line_item', 161),
(30, 'test', 'line_item', 162),
(31, 'Доставка курьером', 'shipping', 162),
(32, 'test', 'line_item', 163),
(33, 'test 2', 'line_item', 163),
(34, 'Доставка курьером', 'shipping', 163),
(35, 'test', 'line_item', 164),
(36, 'Доставка курьером', 'shipping', 164),
(37, 'test', 'line_item', 165),
(38, 'Доставка курьером', 'shipping', 165),
(39, 'test', 'line_item', 166),
(40, 'Доставка курьером', 'shipping', 166),
(41, 'test', 'line_item', 167),
(42, 'Доставка курьером', 'shipping', 167),
(43, 'test', 'line_item', 168),
(44, 'Самовывоз', 'shipping', 168),
(45, 'test', 'line_item', 169),
(46, 'Доставка курьером', 'shipping', 169),
(47, 'test', 'line_item', 170),
(48, 'Доставка курьером', 'shipping', 170),
(49, 'test', 'line_item', 171),
(50, 'test 2', 'line_item', 171),
(51, 'Доставка курьером', 'shipping', 171),
(52, 'test', 'line_item', 173),
(53, 'Доставка курьером', 'shipping', 173),
(54, 'test', 'line_item', 174),
(55, 'test 2', 'line_item', 174),
(56, 'Доставка курьером', 'shipping', 174),
(57, 'test', 'line_item', 175),
(58, 'Доставка курьером', 'shipping', 175),
(59, 'test', 'line_item', 176),
(60, 'Доставка курьером', 'shipping', 176),
(61, 'test', 'line_item', 177),
(62, 'Доставка курьером', 'shipping', 177),
(63, 'Доставка курьером', 'shipping', 178),
(64, 'Доставка курьером', 'shipping', 179),
(65, 'Доставка курьером', 'shipping', 180),
(66, 'test', 'line_item', 181),
(67, 'test 2', 'line_item', 181),
(68, 'Доставка курьером', 'shipping', 181),
(69, 'test', 'line_item', 182),
(70, 'Доставка курьером', 'shipping', 182),
(71, 'test', 'line_item', 183),
(72, 'Доставка курьером', 'shipping', 183),
(73, 'test', 'line_item', 184),
(74, 'test 2', 'line_item', 184),
(75, 'Доставка курьером', 'shipping', 184),
(76, 'test', 'line_item', 185),
(77, 'Доставка курьером', 'shipping', 185),
(78, 'test', 'line_item', 186),
(79, 'Доставка курьером', 'shipping', 186),
(80, 'test', 'line_item', 187),
(81, 'test 2', 'line_item', 187),
(82, 'Доставка курьером', 'shipping', 187),
(83, 'test', 'line_item', 191),
(84, 'test 2', 'line_item', 191),
(85, 'Самовывоз', 'shipping', 191);

-- --------------------------------------------------------

--
-- Table structure for table `rest_woocommerce_payment_tokenmeta`
--

CREATE TABLE `rest_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rest_woocommerce_payment_tokens`
--

CREATE TABLE `rest_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rest_woocommerce_sessions`
--

CREATE TABLE `rest_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rest_woocommerce_sessions`
--

INSERT INTO `rest_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(2118, '1', 'a:9:{s:7:\"product\";s:49:\"a:1:{s:7:\"popular\";a:1:{s:6:\"active\";s:3:\"all\";}}\";s:8:\"shipping\";s:76:\"a:3:{s:4:\"type\";s:7:\"courier\";s:7:\"at_time\";s:1:\"0\";s:4:\"time\";s:5:\"16:24\";}\";s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:870:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2021-09-08T19:01:11+00:00\";s:8:\"postcode\";s:5:\"3123D\";s:4:\"city\";s:6:\"dsadsa\";s:9:\"address_1\";s:10:\"dsadasdsad\";s:7:\"address\";s:10:\"dsadasdsad\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:6:\"fasfas\";s:7:\"country\";s:2:\"RU\";s:17:\"shipping_postcode\";s:5:\"3123D\";s:13:\"shipping_city\";s:6:\"dsadsa\";s:18:\"shipping_address_1\";s:10:\"dsadasdsad\";s:16:\"shipping_address\";s:10:\"dsadasdsad\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:6:\"fasfas\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:14:\"Евгений\";s:9:\"last_name\";s:4:\"test\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:17:\"32321312321321312\";s:5:\"email\";s:22:\"burlakeugene@gmail.com\";s:19:\"shipping_first_name\";s:14:\"Евгений\";s:18:\"shipping_last_name\";s:4:\"test\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1640525042);

-- --------------------------------------------------------

--
-- Table structure for table `rest_woocommerce_shipping_zones`
--

CREATE TABLE `rest_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rest_woocommerce_shipping_zones`
--

INSERT INTO `rest_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Everywhere', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rest_woocommerce_shipping_zone_locations`
--

CREATE TABLE `rest_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rest_woocommerce_shipping_zone_methods`
--

CREATE TABLE `rest_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `rest_woocommerce_shipping_zone_methods`
--

INSERT INTO `rest_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'free_shipping', 1, 1),
(1, 2, 'local_pickup', 2, 1),
(1, 5, 'flat_rate', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rest_woocommerce_tax_rates`
--

CREATE TABLE `rest_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rest_woocommerce_tax_rate_locations`
--

CREATE TABLE `rest_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rest_actionscheduler_actions`
--
ALTER TABLE `rest_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Indexes for table `rest_actionscheduler_claims`
--
ALTER TABLE `rest_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `rest_actionscheduler_groups`
--
ALTER TABLE `rest_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `rest_actionscheduler_logs`
--
ALTER TABLE `rest_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `rest_cocart_carts`
--
ALTER TABLE `rest_cocart_carts`
  ADD PRIMARY KEY (`cart_id`),
  ADD UNIQUE KEY `cart_key` (`cart_key`);

--
-- Indexes for table `rest_commentmeta`
--
ALTER TABLE `rest_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `rest_comments`
--
ALTER TABLE `rest_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `rest_links`
--
ALTER TABLE `rest_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `rest_options`
--
ALTER TABLE `rest_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `rest_postmeta`
--
ALTER TABLE `rest_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `rest_posts`
--
ALTER TABLE `rest_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `rest_termmeta`
--
ALTER TABLE `rest_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `rest_terms`
--
ALTER TABLE `rest_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `rest_term_relationships`
--
ALTER TABLE `rest_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `rest_term_taxonomy`
--
ALTER TABLE `rest_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `rest_usermeta`
--
ALTER TABLE `rest_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `rest_users`
--
ALTER TABLE `rest_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `rest_wc_admin_notes`
--
ALTER TABLE `rest_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `rest_wc_admin_note_actions`
--
ALTER TABLE `rest_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Indexes for table `rest_wc_category_lookup`
--
ALTER TABLE `rest_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Indexes for table `rest_wc_customer_lookup`
--
ALTER TABLE `rest_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `rest_wc_download_log`
--
ALTER TABLE `rest_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `rest_wc_order_coupon_lookup`
--
ALTER TABLE `rest_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `rest_wc_order_product_lookup`
--
ALTER TABLE `rest_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `rest_wc_order_stats`
--
ALTER TABLE `rest_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Indexes for table `rest_wc_order_tax_lookup`
--
ALTER TABLE `rest_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `rest_wc_product_meta_lookup`
--
ALTER TABLE `rest_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indexes for table `rest_wc_reserved_stock`
--
ALTER TABLE `rest_wc_reserved_stock`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indexes for table `rest_wc_tax_rate_classes`
--
ALTER TABLE `rest_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Indexes for table `rest_wc_webhooks`
--
ALTER TABLE `rest_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rest_woocommerce_api_keys`
--
ALTER TABLE `rest_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `rest_woocommerce_attribute_taxonomies`
--
ALTER TABLE `rest_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `rest_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `rest_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indexes for table `rest_woocommerce_log`
--
ALTER TABLE `rest_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `rest_woocommerce_order_itemmeta`
--
ALTER TABLE `rest_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `rest_woocommerce_order_items`
--
ALTER TABLE `rest_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `rest_woocommerce_payment_tokenmeta`
--
ALTER TABLE `rest_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `rest_woocommerce_payment_tokens`
--
ALTER TABLE `rest_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rest_woocommerce_sessions`
--
ALTER TABLE `rest_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `rest_woocommerce_shipping_zones`
--
ALTER TABLE `rest_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `rest_woocommerce_shipping_zone_locations`
--
ALTER TABLE `rest_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `rest_woocommerce_shipping_zone_methods`
--
ALTER TABLE `rest_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `rest_woocommerce_tax_rates`
--
ALTER TABLE `rest_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `rest_woocommerce_tax_rate_locations`
--
ALTER TABLE `rest_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rest_actionscheduler_actions`
--
ALTER TABLE `rest_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rest_actionscheduler_claims`
--
ALTER TABLE `rest_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `rest_actionscheduler_groups`
--
ALTER TABLE `rest_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rest_actionscheduler_logs`
--
ALTER TABLE `rest_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `rest_cocart_carts`
--
ALTER TABLE `rest_cocart_carts`
  MODIFY `cart_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rest_commentmeta`
--
ALTER TABLE `rest_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rest_comments`
--
ALTER TABLE `rest_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `rest_links`
--
ALTER TABLE `rest_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rest_options`
--
ALTER TABLE `rest_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6991;

--
-- AUTO_INCREMENT for table `rest_postmeta`
--
ALTER TABLE `rest_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2740;

--
-- AUTO_INCREMENT for table `rest_posts`
--
ALTER TABLE `rest_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `rest_termmeta`
--
ALTER TABLE `rest_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rest_terms`
--
ALTER TABLE `rest_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `rest_term_taxonomy`
--
ALTER TABLE `rest_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `rest_usermeta`
--
ALTER TABLE `rest_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `rest_users`
--
ALTER TABLE `rest_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rest_wc_admin_notes`
--
ALTER TABLE `rest_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `rest_wc_admin_note_actions`
--
ALTER TABLE `rest_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2913;

--
-- AUTO_INCREMENT for table `rest_wc_customer_lookup`
--
ALTER TABLE `rest_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rest_wc_download_log`
--
ALTER TABLE `rest_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rest_wc_tax_rate_classes`
--
ALTER TABLE `rest_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rest_wc_webhooks`
--
ALTER TABLE `rest_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rest_woocommerce_api_keys`
--
ALTER TABLE `rest_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rest_woocommerce_attribute_taxonomies`
--
ALTER TABLE `rest_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rest_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `rest_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rest_woocommerce_log`
--
ALTER TABLE `rest_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rest_woocommerce_order_itemmeta`
--
ALTER TABLE `rest_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=632;

--
-- AUTO_INCREMENT for table `rest_woocommerce_order_items`
--
ALTER TABLE `rest_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `rest_woocommerce_payment_tokenmeta`
--
ALTER TABLE `rest_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rest_woocommerce_payment_tokens`
--
ALTER TABLE `rest_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rest_woocommerce_sessions`
--
ALTER TABLE `rest_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2120;

--
-- AUTO_INCREMENT for table `rest_woocommerce_shipping_zones`
--
ALTER TABLE `rest_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rest_woocommerce_shipping_zone_locations`
--
ALTER TABLE `rest_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rest_woocommerce_shipping_zone_methods`
--
ALTER TABLE `rest_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rest_woocommerce_tax_rates`
--
ALTER TABLE `rest_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rest_woocommerce_tax_rate_locations`
--
ALTER TABLE `rest_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rest_wc_download_log`
--
ALTER TABLE `rest_wc_download_log`
  ADD CONSTRAINT `fk_rest_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `rest_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
lorem