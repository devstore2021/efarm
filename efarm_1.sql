-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 18, 2021 at 04:20 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `efarm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_categorys_detail`
--

CREATE TABLE `admin_categorys_detail` (
  `id_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ma_danhmuc` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maker_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_khoitao` datetime DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime DEFAULT NULL,
  `duyet` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'y',
  `id_nv_duyet` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay_duyet` datetime DEFAULT CURRENT_TIMESTAMP,
  `record_note` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_validity` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'o',
  `idkey` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_tieude` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_categorys_master`
--

CREATE TABLE `admin_categorys_master` (
  `id_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maker_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay_khoitao` datetime DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime DEFAULT NULL,
  `duyet` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'y',
  `id_nv_duyet` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay_duyet` datetime DEFAULT CURRENT_TIMESTAMP,
  `record_note` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_validity` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'o'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_holiday_list`
--

CREATE TABLE `admin_holiday_list` (
  `id_code` varchar(20) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `ngaynghi` date DEFAULT NULL,
  `nam` varchar(20) DEFAULT NULL,
  `id_loaingay` varchar(20) DEFAULT NULL,
  `maker_id` varchar(20) DEFAULT NULL,
  `ngay_khoitao` date DEFAULT NULL,
  `date_modified` date DEFAULT NULL,
  `record_note` varchar(200) DEFAULT NULL,
  `id_validity` varchar(20) DEFAULT 'O'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
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
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Index', 'fa-bar-chart', '/', NULL, NULL),
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL),
(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL),
(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL),
(8, 31, 27, 'Khách hàng', 'fa-user-md', 'shop_customer', '2018-01-13 08:27:55', '2018-05-08 06:27:40'),
(9, 25, 20, 'Đơn hàng', 'fa-shopping-cart', 'shop_order', '2018-01-13 08:33:55', '2018-05-07 06:45:27'),
(10, 15, 16, 'Quản lý sản phảm', 'fa-file-photo-o', 'shop_product', '2018-01-13 08:44:02', '2018-02-11 08:03:44'),
(11, 15, 18, 'Nhãn hiệu', 'fa-bank', 'shop_brand', '2018-01-13 08:47:15', '2018-02-11 08:03:44'),
(12, 15, 17, 'Thuộc tính', 'fa-indent', 'shop_option', '2018-01-13 08:51:13', '2018-03-30 23:59:43'),
(13, 15, 14, 'Danh mục sản phẩm', 'fa-folder-open-o', 'shop_category', '2018-01-13 08:52:17', '2018-02-11 08:03:44'),
(14, 15, 15, 'Giá khuyến mãi', 'fa-paw', 'shop_special_price', '2018-02-06 11:07:21', '2018-02-11 08:03:44'),
(15, 0, 13, 'Danh mục và sản phẩm', 'fa-folder-open', NULL, '2018-02-08 23:04:43', '2018-05-06 08:13:13'),
(16, 23, 57, 'Bật/Tắt chức năng', 'fa-cog', 'config_mode', '2018-02-08 23:12:57', '2018-05-09 07:45:59'),
(17, 0, 8, 'Quản lý nội dung CMS', 'fa-coffee', NULL, '2018-02-10 02:06:05', '2018-05-07 06:42:32'),
(18, 23, 56, 'Cấu hình thông tin', 'fa-cog', 'config_info', '2018-02-10 02:07:45', '2018-05-09 07:45:59'),
(19, 17, 9, 'Chủ đề', 'fa-folder-open-o', 'cms_category', '2018-02-10 02:09:03', '2018-02-11 08:03:44'),
(20, 17, 10, 'Bài viết thuộc chủ đề', 'fa-file-text', 'cms_content', '2018-02-10 02:11:58', '2018-02-11 08:03:44'),
(21, 17, 11, 'Blog & Tin tức', 'fa-file-powerpoint-o', 'cms_news', '2018-02-10 02:13:01', '2018-02-11 08:03:44'),
(22, 17, 12, 'Trang viết', 'fa-clone', 'cms_page', '2018-02-10 02:19:50', '2018-02-11 08:03:44'),
(23, 0, 55, 'Cấu hình website', 'fa-cogs', NULL, '2018-02-11 08:01:24', '2018-05-09 07:45:59'),
(24, 0, 58, 'Banner & Hình ảnh', 'fa-picture-o', 'banner', '2018-03-13 13:10:22', '2018-05-09 07:45:59'),
(25, 0, 19, 'Quản lý đơn hàng', 'fa-cart-arrow-down', NULL, '2018-05-06 07:59:14', '2018-05-07 06:41:52'),
(26, 25, 21, 'Order status', 'fa-asterisk', 'shop_order_status', '2018-05-06 08:56:14', '2018-05-07 06:45:27'),
(27, 25, 22, 'Payment Status', 'fa-recycle', 'shop_payment_status', '2018-05-06 08:57:12', '2018-05-07 06:45:27'),
(28, 25, 23, 'Shipping status', 'fa-ambulance', 'shop_shipping_status', '2018-05-06 16:46:53', '2018-05-07 06:45:27'),
(30, 0, 30, 'Marketing', 'fa-star-half-empty', NULL, '2018-05-07 06:47:33', '2018-05-09 07:38:40'),
(31, 0, 26, 'Khách hàng, nhà cung cấp', 'fa-group', NULL, '2018-05-07 06:52:20', '2018-05-07 16:41:43'),
(41, 30, 32, 'Coupon & khuyến mãi', 'fa-rocket', 'shop_promotion', '2018-05-07 16:54:45', '2018-05-20 01:54:31'),
(42, 0, 33, 'Thanh toán trực tuyến', 'fa-cc-paypal', NULL, '2018-05-07 16:55:33', '2018-05-09 07:38:40'),
(43, 0, 36, 'Quản lý vận chuyển', 'fa-ambulance', NULL, '2018-05-07 16:56:13', '2018-05-09 07:38:40'),
(49, 42, 35, 'Transaction log', 'fa-file-text-o', 'shop_order?action=paypal', '2018-05-09 07:32:55', '2018-06-05 15:49:43'),
(50, 43, 37, 'Cấu hình', 'fa-cog', 'shop_shipping', '2018-05-09 07:33:24', '2018-05-19 23:32:13');

-- --------------------------------------------------------

--
-- Table structure for table `admin_parameters`
--

CREATE TABLE `admin_parameters` (
  `id_code` varchar(20) NOT NULL,
  `sysday` date DEFAULT NULL,
  `workday` date DEFAULT NULL,
  `account_day` date DEFAULT NULL,
  `ngay_cuoithang` date DEFAULT NULL,
  `ngay_lamviectruoc` date DEFAULT NULL,
  `id_validity` varchar(1) DEFAULT 'n',
  `ngay_lv_tieptheo` date DEFAULT NULL,
  `chuoingaynghi` varchar(200) DEFAULT NULL,
  `songaynghi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_detail`
--

CREATE TABLE `admin_role_detail` (
  `role_id` varchar(20) DEFAULT NULL,
  `menu_id` varchar(40) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `maker_id` varchar(30) DEFAULT NULL,
  `maker_dt_stamp` date DEFAULT NULL,
  `checker_id` varchar(30) DEFAULT NULL,
  `checker_dt_stamp` date DEFAULT NULL,
  `record_stat` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_master`
--

CREATE TABLE `admin_role_master` (
  `role_id` varchar(30) DEFAULT NULL,
  `role_description` varchar(35) DEFAULT NULL,
  `maker_id` varchar(30) DEFAULT NULL,
  `maker_dt_stamp` date DEFAULT NULL,
  `checker_id` varchar(30) DEFAULT NULL,
  `checker_dt_stamp` date DEFAULT NULL,
  `record_stat` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `user_id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `user_password` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_signed_on` datetime DEFAULT NULL,
  `time_level` tinyint(4) DEFAULT NULL,
  `user_status` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pwd_changed_on` datetime DEFAULT NULL,
  `user_language` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_branch` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checker_dt_stamp` datetime DEFAULT NULL,
  `checker_id` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maker_dt_stamp` datetime DEFAULT CURRENT_TIMESTAMP,
  `maker_id` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record_stat` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chance_pass` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'n',
  `hinh` tinyint(1) DEFAULT NULL,
  `chuky` tinyint(1) DEFAULT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `so_cmnd` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngaycap` datetime DEFAULT NULL,
  `noicap` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diachi` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_validity` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'o',
  `tel` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`user_id`, `user_name`, `start_date`, `user_password`, `last_signed_on`, `time_level`, `user_status`, `pwd_changed_on`, `user_language`, `home_branch`, `checker_dt_stamp`, `checker_id`, `maker_dt_stamp`, `maker_id`, `record_stat`, `chance_pass`, `hinh`, `chuky`, `email`, `so_cmnd`, `ngaycap`, `noicap`, `diachi`, `id_validity`, `tel`, `created_at`, `updated_at`) VALUES
('AaA', 'AaA', NULL, '$2y$10$CO8eyf9S1i/JCxJo9Mo3Mu3pknDhd7Y/ayoM3EfP8jyRknZQ50Oja', NULL, NULL, NULL, NULL, NULL, '5', NULL, NULL, '2021-10-18 23:13:04', NULL, NULL, 'n', NULL, NULL, 'AAaaaaaa@12121', NULL, NULL, NULL, NULL, 'o', NULL, '2021-10-18 09:13:04', '2021-10-18 16:13:04'),
('eewewew', 'eewewew', NULL, 'sdsdsdsdsds', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '2021-10-18 23:07:48', NULL, NULL, 'n', NULL, NULL, 'wewewew@1234', NULL, NULL, NULL, NULL, 'o', NULL, '2021-10-18 09:07:48', '2021-10-18 16:07:48'),
('qwqwqwq', 'qwqwqwq', NULL, 'wqwqwqwq', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '2021-10-18 23:06:58', NULL, NULL, 'n', NULL, NULL, 'wqwqwqwq@123', NULL, NULL, NULL, NULL, 'o', NULL, '2021-10-18 09:06:58', '2021-10-18 16:06:58'),
('wqwqwqw', 'wqwqwqw', NULL, '123456789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-10-18 23:05:45', NULL, NULL, 'n', NULL, NULL, 'wqqwqwqwqwq@12121', NULL, NULL, NULL, NULL, 'o', NULL, '2021-10-18 09:05:45', '2021-10-18 16:05:45');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 2),
(6, '2019_08_19_000000_create_failed_jobs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_categorys_detail`
--
ALTER TABLE `admin_categorys_detail`
  ADD KEY `FK_categorys` (`ma_danhmuc`);

--
-- Indexes for table `admin_categorys_master`
--
ALTER TABLE `admin_categorys_master`
  ADD PRIMARY KEY (`id_code`);

--
-- Indexes for table `admin_holiday_list`
--
ALTER TABLE `admin_holiday_list`
  ADD PRIMARY KEY (`id_code`);

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_parameters`
--
ALTER TABLE `admin_parameters`
  ADD PRIMARY KEY (`id_code`),
  ADD KEY `idx_idvalidity_para` (`id_validity`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_categorys_detail`
--
ALTER TABLE `admin_categorys_detail`
  ADD CONSTRAINT `FK_categorys` FOREIGN KEY (`ma_danhmuc`) REFERENCES `admin_categorys_master` (`id_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
