-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 01, 2019 lúc 07:07 AM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duanmau`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'SamSung', NULL, 'samsung-01', NULL, NULL),
(2, 'Sony', NULL, 'sony-02', NULL, NULL),
(3, 'Xaomi', NULL, 'xaomi-03', NULL, NULL),
(4, 'Nokia', NULL, 'nokia-04', NULL, NULL),
(5, 'Oppo', NULL, 'oppo-0', NULL, NULL),
(6, 'Asus', NULL, 'asus-554', NULL, NULL),
(7, 'iPhone', NULL, 'Apple-iphone', NULL, NULL),
(8, 'Huawei', NULL, 'Huawei-1664', NULL, NULL),
(9, 'Vsmart', NULL, 'V-smart', NULL, NULL),
(10, 'sharp', 1, 'sharp-346', NULL, NULL),
(12, 'Nguyen huu Hung', 9, 'nguyen-huu-hung', '2019-09-30 21:55:12', '2019-09-30 21:55:19'),
(13, 'Nguyen huu Hung121', 9, 'nguyen-huu-hung121', '2019-09-30 21:55:32', '2019-09-30 21:55:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `product_id`, `parent_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 19, 2, NULL, 'đâsd', '2019-08-15 22:41:07', '2019-08-15 22:41:07'),
(2, 19, 2, 1, 'ádasd', '2019-08-15 22:42:34', '2019-08-15 22:42:34'),
(3, 19, 2, NULL, 'thua', '2019-08-15 22:43:06', '2019-08-15 22:43:06'),
(4, 19, 2, 1, 'ádasd', '2019-08-15 23:22:05', '2019-08-22 19:40:57'),
(5, 19, 2, 1, 'ádasd', '2019-08-15 23:22:45', '2019-08-15 23:22:45'),
(6, 19, 2, 1, 'duy', '2019-08-15 23:27:43', '2019-08-15 23:27:43'),
(7, 19, 2, NULL, 'sadasdasda sadad', '2019-08-15 23:40:53', '2019-08-15 23:40:53'),
(8, 22, 2, 1, 'ádasd', '2019-08-16 02:55:23', '2019-08-21 21:10:44'),
(9, 22, 2, 2, 't2011', '2019-08-16 02:55:33', '2019-08-22 02:34:38'),
(10, 22, 2, 4, 'duy', '2019-08-16 02:55:47', '2019-08-16 02:55:47'),
(11, 22, 2, 3, 'tttttttttttt4', '2019-08-16 02:56:37', '2019-08-16 02:56:37'),
(12, 22, 2, 11, 'duy', '2019-08-16 02:57:12', '2019-08-16 02:57:12'),
(13, 22, 2, 9, 'duy', '2019-08-16 02:59:38', '2019-08-16 02:59:38'),
(14, 22, 9, NULL, 'sdfsdf', '2019-08-16 03:04:57', '2019-08-16 03:04:57'),
(15, 19, 4, NULL, 'asas', '2019-08-16 20:44:35', '2019-08-16 20:44:35'),
(17, 19, 2, 1, 'asdas', '2019-08-17 02:37:53', '2019-08-21 21:10:22'),
(18, 19, 2, 2, 'asdas', '2019-08-17 02:38:03', '2019-08-17 02:38:03'),
(19, 19, 10, NULL, 'ewtet', '2019-08-17 02:42:12', '2019-08-17 02:42:12'),
(20, 19, 10, 19, 'wrwerwr', '2019-08-17 02:42:19', '2019-08-21 03:19:08'),
(21, 19, 10, 20, 'werwer', '2019-08-17 02:42:28', '2019-08-17 02:42:28'),
(22, 19, 12, NULL, 'ssdsd', '2019-08-17 02:56:49', '2019-08-17 02:56:49'),
(23, 19, 12, 22, 'wrwerwr', '2019-08-17 02:56:58', '2019-08-17 02:56:58'),
(28, 19, 108, 27, '123456', '2019-08-17 21:27:11', '2019-08-17 21:27:11'),
(29, 19, 108, 28, '4765', '2019-08-17 21:27:23', '2019-08-17 21:27:23'),
(30, 19, 108, 24, 'duy', '2019-08-17 23:07:25', '2019-08-17 23:07:25'),
(31, 2, 10, 19, 'fsdfsd', '2019-08-21 03:20:14', '2019-08-24 02:07:51'),
(32, 2, 2, NULL, 'dasdasd', '2019-08-22 02:07:19', '2019-08-22 02:07:19'),
(33, 2, 2, NULL, 'dasdasdasd', '2019-08-22 02:07:56', '2019-08-22 02:07:56'),
(34, 2, 2, NULL, 'gfghgjkh', '2019-08-22 02:08:16', '2019-08-22 02:08:16'),
(35, 2, 2, 1, 'ádasd121212121', '2019-08-22 02:19:59', '2019-08-22 02:19:59'),
(36, 2, 2, 1, 'duyadasdasdas', '2019-08-22 03:14:48', '2019-08-22 03:14:48'),
(37, 2, 2, NULL, 'ádasd', '2019-08-22 19:40:46', '2019-08-22 19:40:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favorites`
--

CREATE TABLE `favorites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image` text DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `image`, `product_id`) VALUES
(1, '../public/img/uploads/products/1.jpg', 44),
(2, '../public/img/uploads/products/2.jpg', 43),
(3, '../public/img/uploads/products/3.jpg', 17),
(4, '../public/img/uploads/products/4.jpg', 15),
(5, '../public/img/uploads/products/5.jpg', 52),
(6, '../public/img/uploads/products/6.jpg', 53),
(7, '../public/img/uploads/products/7.jpg', 9),
(8, '../public/img/uploads/products/8.jpg', 58),
(9, '../public/img/uploads/products/9.jpg', 49),
(10, '../public/img/uploads/products/10.jpg', 39),
(11, '../public/img/uploads/products/11.jpg', 7),
(12, '../public/img/uploads/products/12.jpg', 29),
(13, '../public/img/uploads/products/13.jpg', 48),
(14, '../public/img/uploads/products/14.jpg', 35),
(15, '../public/img/uploads/products/15.jpg', 56),
(16, '../public/img/uploads/products/16.jpg', 28),
(17, '../public/img/uploads/products/17.jpg', 3),
(18, '../public/img/uploads/products/18.jpg', 36),
(19, '../public/img/uploads/products/19.jpg', 48),
(20, '../public/img/uploads/products/20.jpg', 6),
(21, '../public/img/uploads/products/21.jpg', 8),
(22, '../public/img/uploads/products/22.jpg', 59),
(23, '../public/img/uploads/products/23.jpg', 18),
(24, '../public/img/uploads/products/24.jpg', 18),
(25, '../public/img/uploads/products/25.jpg', 20),
(26, '../public/img/uploads/products/26.jpg', 45),
(27, '../public/img/uploads/products/27.jpg', 56),
(28, '../public/img/uploads/products/28.jpg', 11),
(29, '../public/img/uploads/products/29.jpg', 4),
(30, '../public/img/uploads/products/30.jpg', 8),
(31, '../public/img/uploads/products/31.jpg', 41),
(32, '../public/img/uploads/products/32.jpg', 4),
(33, '../public/img/uploads/products/33.jpg', 44),
(34, '../public/img/uploads/products/34.jpg', 50),
(35, '../public/img/uploads/products/35.jpg', 39),
(36, '../public/img/uploads/products/36.jpg', 9),
(37, '../public/img/uploads/products/37.jpg', 57),
(38, '../public/img/uploads/products/38.jpg', 8),
(39, '../public/img/uploads/products/39.jpg', 18),
(40, '../public/img/uploads/products/40.jpg', 49),
(41, '../public/img/uploads/products/41.jpg', 6),
(42, '../public/img/uploads/products/42.jpg', 37),
(43, '../public/img/uploads/products/43.jpg', 39),
(44, '../public/img/uploads/products/44.jpg', 44),
(45, '../public/img/uploads/products/45.jpg', 52),
(46, '../public/img/uploads/products/46.jpg', 17),
(47, '../public/img/uploads/products/47.jpg', 3),
(48, '../public/img/uploads/products/48.jpg', 4),
(49, '../public/img/uploads/products/49.jpg', 58),
(50, '../public/img/uploads/products/50.jpg', 37),
(51, '../public/img/uploads/products/51.jpg', 13),
(52, '../public/img/uploads/products/52.jpg', 10),
(53, '../public/img/uploads/products/53.jpg', 12),
(54, '../public/img/uploads/products/54.jpg', 7),
(55, '../public/img/uploads/products/55.jpg', 48),
(56, '../public/img/uploads/products/56.jpg', 54),
(57, '../public/img/uploads/products/57.jpg', 54),
(58, '../public/img/uploads/products/58.jpg', 11),
(59, '../public/img/uploads/products/59.jpg', 27),
(60, '../public/img/uploads/products/60.jpg', 9),
(61, '../public/img/uploads/products/61.jpg', 16),
(62, '../public/img/uploads/products/62.jpg', 35),
(63, '../public/img/uploads/products/63.jpg', 22),
(64, '../public/img/uploads/products/64.jpg', 5),
(65, '../public/img/uploads/products/65.jpg', 18),
(66, '../public/img/uploads/products/66.jpg', 3),
(67, '../public/img/uploads/products/67.jpg', 21),
(68, '../public/img/uploads/products/68.jpg', 12),
(69, '../public/img/uploads/products/69.jpg', 44),
(70, '../public/img/uploads/products/70.jpg', 29),
(71, '../public/img/uploads/products/71.jpg', 51),
(72, '../public/img/uploads/products/72.jpg', 2),
(73, '../public/img/uploads/products/73.jpg', 53),
(74, '../public/img/uploads/products/74.jpg', 9),
(75, '../public/img/uploads/products/75.jpg', 36),
(76, '../public/img/uploads/products/76.jpg', 30),
(77, '../public/img/uploads/products/77.jpg', 11),
(78, '../public/img/uploads/products/78.jpg', 12),
(79, '../public/img/uploads/products/79.jpg', 7),
(80, '../public/img/uploads/products/80.jpg', 15),
(81, '../public/img/uploads/products/81.jpg', 8),
(82, '../public/img/uploads/products/82.jpg', 39),
(83, '../public/img/uploads/products/83.jpg', 36),
(84, '../public/img/uploads/products/84.jpg', 18),
(85, '../public/img/uploads/products/85.jpg', 47),
(86, '../public/img/uploads/products/86.jpg', 3),
(87, '../public/img/uploads/products/87.jpg', 38),
(88, '../public/img/uploads/products/88.jpg', 34),
(89, '../public/img/uploads/products/89.jpg', 28),
(90, '../public/img/uploads/products/90.jpg', 41),
(91, '../public/img/uploads/products/91.jpg', 28),
(92, '../public/img/uploads/products/92.jpg', 9),
(93, '../public/img/uploads/products/93.jpg', 5),
(94, '../public/img/uploads/products/94.jpg', 56),
(95, '../public/img/uploads/products/95.jpg', 13),
(96, '../public/img/uploads/products/96.jpg', 34),
(97, '../public/img/uploads/products/97.jpg', 58),
(98, '../public/img/uploads/products/98.jpg', 35),
(99, '../public/img/uploads/products/99.jpg', 37),
(100, '../public/img/uploads/products/100.jpg', 23),
(101, '../public/img/uploads/products/101.jpg', 46),
(102, '../public/img/uploads/products/102.jpg', 38),
(103, '../public/img/uploads/products/103.jpg', 49),
(104, '../public/img/uploads/products/104.jpg', 27),
(105, '../public/img/uploads/products/105.jpg', 35),
(106, '../public/img/uploads/products/106.jpg', 51),
(107, '../public/img/uploads/products/107.jpg', 41),
(108, '../public/img/uploads/products/108.jpg', 23),
(109, '../public/img/uploads/products/109.jpg', 27),
(110, '../public/img/uploads/products/110.jpg', 56),
(111, '../public/img/uploads/products/111.jpg', 60),
(112, '../public/img/uploads/products/112.jpg', 7),
(113, '../public/img/uploads/products/113.jpg', 7),
(114, '../public/img/uploads/products/114.jpg', 12),
(115, '../public/img/uploads/products/115.jpg', 32),
(116, '../public/img/uploads/products/116.jpg', 11),
(117, '../public/img/uploads/products/117.jpg', 49),
(118, '../public/img/uploads/products/118.jpg', 29),
(119, '../public/img/uploads/products/119.jpg', 36),
(120, '../public/img/uploads/products/120.jpg', 46),
(121, '../public/img/uploads/products/121.jpg', 58),
(122, '../public/img/uploads/products/122.jpg', 29),
(123, '../public/img/uploads/products/123.jpg', 24),
(124, '../public/img/uploads/products/124.jpg', 28),
(125, '../public/img/uploads/products/125.jpg', 19),
(126, '../public/img/uploads/products/126.jpg', 36),
(127, '../public/img/uploads/products/127.jpg', 5),
(128, '../public/img/uploads/products/128.jpg', 60),
(129, '../public/img/uploads/products/129.jpg', 27),
(130, '../public/img/uploads/products/130.jpg', 30),
(131, '../public/img/uploads/products/131.jpg', 57),
(132, '../public/img/uploads/products/132.jpg', 24),
(133, '../public/img/uploads/products/133.jpg', 57),
(134, '../public/img/uploads/products/134.jpg', 39),
(135, '../public/img/uploads/products/135.jpg', 33),
(136, '../public/img/uploads/products/136.jpg', 44),
(137, '../public/img/uploads/products/137.jpg', 14),
(138, '../public/img/uploads/products/138.jpg', 19),
(139, '../public/img/uploads/products/139.jpg', 8),
(140, '../public/img/uploads/products/140.jpg', 54),
(141, '../public/img/uploads/products/141.jpg', 18),
(142, '../public/img/uploads/products/142.jpg', 28),
(143, '../public/img/uploads/products/143.jpg', 45),
(144, '../public/img/uploads/products/144.jpg', 19),
(145, '../public/img/uploads/products/145.jpg', 35),
(146, '../public/img/uploads/products/146.jpg', 26),
(147, '../public/img/uploads/products/147.jpg', 26),
(148, '../public/img/uploads/products/148.jpg', 56),
(149, '../public/img/uploads/products/149.jpg', 50),
(150, '../public/img/uploads/products/150.jpg', 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `sale_percent` int(11) DEFAULT NULL,
  `stocks` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favorite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `category_id`, `price`, `sale_percent`, `stocks`, `is_active`, `created_at`, `updated_at`, `description`, `images`, `favorite`) VALUES
(1, 'sản phẩm 1q21', 'san-pham-1-058977700-1568893577', 4, 2121254, 26, 24, 0, NULL, '2019-09-30 01:16:50', '<p>Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế m&agrave;n h&igrave;nh Infinity-O với phần camera được đặt ph&iacute;a trong m&agrave;n h&igrave;nh rất độc đ&aacute;o. M&agrave;n h&igrave;nh điện thoại Samsung Galaxy S10+ 512GB ch&iacute;nh h&atilde;ng Kiểu thiết kế mới n&agrave;y mang lại phần viền m&agrave;n h&igrave;nh mỏng ở tất cả c&aacute;c cạnh, từ đ&oacute; khiến tổng thể m&aacute;y kh&ocirc;ng qu&aacute; lớn so với k&iacute;ch thước m&agrave;n h&igrave;nh. Mặt trước điện thoại Samsung Galaxy S10+ 512GB ch&iacute;nh h&atilde;ng M&agrave;n h&igrave;nh của m&aacute;y c&oacute; k&iacute;ch thước 6.4 inch c&ugrave;ng độ ph&acirc;n giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những h&igrave;nh ảnh sắc n&eacute;t. C&ocirc;ng nghệ HDR10+ ti&ecirc;n tiến nhất hiện nay cho bạn một trải nghiệm h&igrave;nh ảnh thực sự kh&aacute;c biệt so với phần c&ograve;n lại của thế giới smartphone.</p>\r\n', '../public/img/uploads/products/5d8ecab3144e1-1.jpg', NULL),
(2, 'sản phẩm 12', 'san-pham-2-070343400-1568893577', 8, 67582, 35, 39, 0, NULL, '2019-09-19 04:46:17', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/2.jpg', NULL),
(3, 'sản phẩm 13', 'san-pham-3-072827400-1568893577', 4, 54183, 13, 75, 0, NULL, '2019-09-19 04:46:17', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/3.jpg', NULL),
(4, 'sản phẩm 14', 'san-pham-4-078702500-1568893577', 10, 85148, 49, 33, 0, NULL, '2019-09-19 04:46:17', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/4.jpg', NULL),
(5, 'sản phẩm 15', 'san-pham-5-082056300-1568893577', 10, 60717, 35, 77, 0, NULL, '2019-09-19 04:46:17', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/5.jpg', NULL),
(6, 'sản phẩm 16', 'san-pham-6-086981900-1568893577', 9, 32064, 22, 40, 0, NULL, '2019-09-19 04:46:17', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/6.jpg', NULL),
(7, 'sản phẩm 17', 'san-pham-7-088700500-1568893577', 8, 58561, 30, 61, 0, NULL, '2019-09-19 04:46:17', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/7.jpg', NULL),
(8, 'sản phẩm 18', 'san-pham-8-091151600-1568893577', 10, 59425, 41, 73, 0, NULL, '2019-09-19 04:46:17', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/8.jpg', NULL),
(9, 'sản phẩm 19', 'san-pham-9-096160100-1568893577', 5, 39885, 36, 27, 0, NULL, '2019-09-19 04:46:17', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/9.jpg', NULL),
(10, 'sản phẩm 110', 'san-pham-10-099495300-1568893577', 1, 15845, 10, 73, 0, NULL, '2019-09-19 04:46:17', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/10.jpg', NULL),
(11, 'sản phẩm 111', 'san-pham-11-003706400-1568893578', 5, 22705, 12, 78, 0, NULL, '2019-09-19 04:46:18', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/11.jpg', NULL),
(12, 'sản phẩm 112', 'san-pham-12-006162500-1568893578', 7, 31297, 30, 39, 0, NULL, '2019-09-19 04:46:18', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/12.jpg', NULL),
(13, 'sản phẩm 113', 'san-pham-13-008664400-1568893578', 10, 65169, 11, 20, 0, NULL, '2019-09-19 04:46:18', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/13.jpg', NULL),
(14, 'sản phẩm 114', 'san-pham-14-011010100-1568893578', 2, 1094, 13, 93, 0, NULL, '2019-09-19 04:46:18', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/14.jpg', NULL),
(15, 'sản phẩm 115', 'san-pham-15-012789000-1568893578', 9, 21326, 20, 35, 0, NULL, '2019-09-19 04:46:18', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/15.jpg', NULL),
(16, 'sản phẩm 116', 'san-pham-16-014334400-1568893578', 7, 69231, 34, 21, 0, NULL, '2019-09-19 04:46:18', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/16.jpg', NULL),
(17, 'sản phẩm 117', 'san-pham-17-023481200-1568893578', 8, 89954, 31, 12, 0, NULL, '2019-09-19 04:46:18', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/17.jpg', NULL),
(18, 'sản phẩm 118', 'san-pham-18-028653100-1568893578', 8, 1825, 12, 88, 0, NULL, '2019-09-19 04:46:18', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/18.jpg', NULL),
(19, 'sản phẩm 119', 'san-pham-19-034501400-1568893578', 5, 47458, 47, 51, 0, NULL, '2019-09-19 04:46:18', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/19.jpg', NULL),
(20, 'sản phẩm 120', 'san-pham-20-036172700-1568893578', 4, 27585, 49, 26, 0, NULL, '2019-09-19 04:46:18', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/20.jpg', NULL),
(21, 'sản phẩm 121', 'san-pham-21-038498500-1568893578', 1, 19523, 26, 43, 0, NULL, '2019-09-19 04:46:18', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/21.jpg', NULL),
(22, 'sản phẩm 122', 'san-pham-22-045351300-1568893578', 4, 79660, 17, 35, 0, NULL, '2019-09-19 04:46:18', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/22.jpg', NULL),
(23, 'sản phẩm 123', 'san-pham-23-050984900-1568893578', 1, 35504, 47, 33, 0, NULL, '2019-09-19 04:46:18', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/23.jpg', NULL),
(24, 'sản phẩm 124', 'san-pham-24-058404600-1568893578', 7, 25487, 42, 84, 0, NULL, '2019-09-19 04:46:18', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/24.jpg', NULL),
(25, 'sản phẩm 125', 'san-pham-25-065169400-1568893578', 5, 55755, 29, 81, 0, NULL, '2019-09-19 04:46:18', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/25.jpg', NULL),
(26, 'sản phẩm 126', 'san-pham-26-067003100-1568893578', 2, 66766, 34, 17, 0, NULL, '2019-09-19 04:46:18', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/26.jpg', NULL),
(27, 'sản phẩm 127', 'san-pham-27-068531600-1568893578', 4, 14868, 44, 81, 0, NULL, '2019-09-19 04:46:18', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/27.jpg', NULL),
(28, 'sản phẩm 128', 'san-pham-28-071149600-1568893578', 5, 69389, 31, 85, 0, NULL, '2019-09-19 04:46:18', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/28.jpg', NULL),
(29, 'sản phẩm 129', 'san-pham-29-076144900-1568893578', 1, 76916, 50, 42, 0, NULL, '2019-09-19 04:46:18', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/29.jpg', NULL),
(30, 'sản phẩm 130', 'san-pham-30-077817300-1568893578', 8, 52150, 45, 11, 0, NULL, '2019-09-19 04:46:18', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/30.jpg', NULL),
(31, 'sản phẩm 131', 'san-pham-31-079339000-1568893578', 5, 38623, 46, 64, 0, NULL, '2019-09-19 04:46:18', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/31.jpg', NULL),
(32, 'sản phẩm 132', 'san-pham-32-084538800-1568893578', 7, 78256, 23, 30, 0, NULL, '2019-09-19 04:46:18', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/32.jpg', NULL),
(33, 'sản phẩm 133', 'san-pham-33-086861400-1568893578', 6, 36467, 45, 24, 0, NULL, '2019-09-19 04:46:18', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/33.jpg', NULL),
(34, 'sản phẩm 134', 'san-pham-34-089504600-1568893578', 3, 60801, 38, 70, 0, NULL, '2019-09-19 04:46:18', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/34.jpg', NULL),
(35, 'sản phẩm 135', 'san-pham-35-091030100-1568893578', 2, 92304, 46, 83, 0, NULL, '2019-09-19 04:46:18', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/35.jpg', NULL),
(36, 'sản phẩm 136', 'san-pham-36-092854700-1568893578', 1, 33671, 21, 19, 0, NULL, '2019-09-19 04:46:18', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/36.jpg', NULL),
(37, 'sản phẩm 137', 'san-pham-37-000992500-1568893579', 2, 77451, 31, 28, 0, NULL, '2019-09-19 04:46:19', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/37.jpg', NULL),
(38, 'sản phẩm 138', 'san-pham-38-006165300-1568893579', 4, 48623, 14, 80, 0, NULL, '2019-09-19 04:46:19', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/38.jpg', NULL),
(39, 'sản phẩm 139', 'san-pham-39-012826900-1568893579', 9, 16119, 24, 87, 0, NULL, '2019-09-19 04:46:19', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/39.jpg', NULL),
(40, 'sản phẩm 140', 'san-pham-40-015334400-1568893579', 7, 70999, 28, 91, 0, NULL, '2019-09-19 04:46:19', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/40.jpg', NULL),
(41, 'sản phẩm 141', 'san-pham-41-016802000-1568893579', 2, 35950, 22, 62, 0, NULL, '2019-09-19 04:46:19', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/41.jpg', NULL),
(42, 'sản phẩm 142', 'san-pham-42-018671100-1568893579', 1, 48699, 33, 42, 0, NULL, '2019-09-19 04:46:19', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/42.jpg', NULL),
(43, 'sản phẩm 143', 'san-pham-43-020146600-1568893579', 7, 24528, 41, 83, 0, NULL, '2019-09-19 04:46:19', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/43.jpg', NULL),
(44, 'sản phẩm 144', 'san-pham-44-021982600-1568893579', 9, 22713, 24, 45, 0, NULL, '2019-09-19 04:46:19', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/44.jpg', NULL),
(45, 'sản phẩm 145', 'san-pham-45-026181300-1568893579', 3, 92464, 30, 80, 0, NULL, '2019-09-19 04:46:19', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/45.jpg', NULL),
(46, 'sản phẩm 146', 'san-pham-46-027660900-1568893579', 5, 38665, 15, 75, 0, NULL, '2019-09-19 04:46:19', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/46.jpg', NULL),
(47, 'sản phẩm 147', 'san-pham-47-029468700-1568893579', 9, 96044, 26, 44, 0, NULL, '2019-09-19 04:46:19', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/47.jpg', NULL),
(48, 'sản phẩm 148', 'san-pham-48-031002100-1568893579', 9, 72483, 25, 95, 0, NULL, '2019-09-19 04:46:19', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/48.jpg', NULL),
(49, 'sản phẩm 149', 'san-pham-49-037798300-1568893579', 3, 74325, 37, 33, 0, NULL, '2019-09-19 04:46:19', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/49.jpg', NULL),
(50, 'sản phẩm 150', 'san-pham-50-043699800-1568893579', 10, 30142, 43, 34, 0, NULL, '2019-09-19 04:46:19', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/50.jpg', NULL),
(51, 'sản phẩm 151', 'san-pham-51-045330300-1568893579', 8, 77321, 24, 85, 0, NULL, '2019-09-19 04:46:19', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/51.jpg', NULL),
(52, 'sản phẩm 152', 'san-pham-52-047647100-1568893579', 3, 96041, 43, 56, 0, NULL, '2019-09-19 04:46:19', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/52.jpg', NULL),
(53, 'sản phẩm 153', 'san-pham-53-049505800-1568893579', 3, 58968, 44, 40, 0, NULL, '2019-09-19 04:46:19', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/53.jpg', NULL),
(54, 'sản phẩm 154', 'san-pham-54-051008100-1568893579', 9, 88029, 24, 46, 0, NULL, '2019-09-19 04:46:19', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/54.jpg', NULL),
(55, 'sản phẩm 155', 'san-pham-55-057848800-1568893579', 10, 7451, 22, 51, 0, NULL, '2019-09-19 04:46:19', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/55.jpg', NULL),
(56, 'sản phẩm 156', 'san-pham-56-063697000-1568893579', 3, 37099, 16, 30, 0, NULL, '2019-09-19 04:46:19', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/56.jpg', NULL),
(57, 'sản phẩm 157', 'san-pham-57-065343200-1568893579', 1, 23749, 20, 74, 0, NULL, '2019-09-19 04:46:19', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/57.jpg', NULL),
(58, 'sản phẩm 158', 'san-pham-58-067681400-1568893579', 8, 32449, 43, 73, 0, NULL, '2019-09-19 04:46:19', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/58.jpg', NULL);
INSERT INTO `products` (`id`, `name`, `slug`, `category_id`, `price`, `sale_percent`, `stocks`, `is_active`, `created_at`, `updated_at`, `description`, `images`, `favorite`) VALUES
(59, 'sản phẩm 159', 'san-pham-59-069481600-1568893579', 9, 20586, 22, 40, 0, NULL, '2019-09-19 04:46:19', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/59.jpg', NULL),
(60, 'sản phẩm 160', 'san-pham-60-070983500-1568893579', 7, 77328, 29, 25, 0, NULL, '2019-09-19 04:46:19', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/60.jpg', NULL),
(61, 'sản phẩm 161', 'san-pham-61-078720500-1568893579', 2, 2121254, NULL, 12, NULL, '2019-08-19 07:44:27', '2019-09-19 04:46:19', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/59.jpg', NULL),
(62, 'sản phẩm 162', 'san-pham-62-084549700-1568893579', 2, 2121254, NULL, 3, NULL, '2019-08-19 20:35:21', '2019-09-19 04:46:19', 'Samsung Galaxy S10+ (512GB) đi theo kiểu thiết kế màn hình Infinity-O với phần camera được đặt phía trong màn hình rất độc đáo.\r\n\r\nMàn hình điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nKiểu thiết kế mới này mang lại phần viền màn hình mỏng ở tất cả các cạnh, từ đó khiến tổng thể máy không quá lớn so với kích thước màn hình.\r\n\r\nMặt trước điện thoại Samsung Galaxy S10+ 512GB chính hãng\r\n\r\nMàn hình của máy có kích thước 6.4 inch cùng độ phân giải khủng 2K+ cho bạn thưởng thức những bộ phim hay xem những hình ảnh sắc nét.\r\n\r\nCông nghệ HDR10+ tiên tiến nhất hiện nay cho bạn một trải nghiệm hình ảnh thực sự khác biệt so với phần còn lại của thế giới smartphone.', '../public/img/uploads/products/59.jpg', NULL),
(63, 'sản phẩm 63', 'san-pham-63-000077800-1568893580', 11, 2121254, NULL, 12, NULL, '2019-08-23 20:12:11', '2019-09-19 04:46:20', '<p>Bạn đang xem tại:</p>\r\n\r\n<p><a href=\"javascript:;\">H&agrave; Nội</a></p>\r\n\r\n<p>Hotline&nbsp;HN: 0247.100.6666 - SG: 0965.123.123 - ĐN: 096.123.9797</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://mobilecity.vn/xiaomi/xiaomi-redmi-k20-pro.html\">Tuyển dụng</a></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><a href=\"https://mobilecity.vn/dien-thoai\">ĐIỆN THOẠI</a>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<ul>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n	</ul>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<ul>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n	</ul>\r\n\r\n	<p>&nbsp;</p>\r\n	</li>\r\n	<li>&nbsp;</li>\r\n	<li><a href=\"https://mobilecity.vn/may-tinh-bang\">TABLET</a>\r\n	<p>&nbsp;</p>\r\n\r\n	<ul>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n	</ul>\r\n\r\n	<p>&nbsp;</p>\r\n\r\n	<ul>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n	</ul>\r\n\r\n	<p>&nbsp;</p>\r\n	</li>\r\n	<li>&nbsp;</li>\r\n	<li><a href=\"https://mobilecity.vn/phu-kien\">PHỤ KIỆN</a>\r\n	<p>&nbsp;</p>\r\n\r\n	<ul>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n	</ul>\r\n	</li>\r\n	<li>&nbsp;</li>\r\n	<li><a href=\"https://mobilecity.vn/sua-chua-dien-thoai\">SỬA CHỮA</a>\r\n	<p>&nbsp;</p>\r\n\r\n	<ul>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n		<li>&nbsp;</li>\r\n	</ul>\r\n	</li>\r\n	<li>&nbsp;</li>\r\n	<li><a href=\"https://mobilecity.vn/tin-tuc\">TIN TỨC</a></li>\r\n	<li>&nbsp;</li>\r\n	<li><a href=\"https://forum.mobilecity.vn/\">DIỄN Đ&Agrave;N</a></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li><a href=\"https://mobilecity.vn/\">Trang chủ</a></li>\r\n	<li><a href=\"https://mobilecity.vn/dien-thoai\">Điện thoại di động</a></li>\r\n	<li><a href=\"https://mobilecity.vn/dien-thoai-xiaomi\">Xiaomi</a></li>\r\n</ul>\r\n\r\n<h1>Điện thoại Xiaomi Redmi K20 Pro (RAM 6GB, 8GB)</h1>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"https://mobilecity.vn/xiaomi/xiaomi-redmi-k20-pro.html#\">(861&nbsp;đ&aacute;nh gi&aacute;)</a></p>\r\n\r\n<ul>\r\n	<li><img alt=\"redmi-k20-pro\" src=\"https://sudospaces.com/mobilecity-vn/images/2019/05/redmi-k20-pro.jpg\" /></li>\r\n</ul>\r\n\r\n<p>Gi&aacute; tại:</p>\r\n\r\n<p>&nbsp;&nbsp;H&agrave; Nội&nbsp;&nbsp;&nbsp;TP.HCM&nbsp;&nbsp;&nbsp;Đ&agrave; Nẵng&nbsp;&nbsp;</p>\r\n\r\n<p>7.550.000 ₫</p>\r\n\r\n<p>7.950.000₫</p>\r\n\r\n<p>&nbsp;C&ograve;n h&agrave;ng</p>\r\n\r\n<p>M&agrave;u Sắc</p>\r\n\r\n<p>Chọn bộ nhớ</p>\r\n\r\n<p>6-64GB6-128GB8-128GB</p>\r\n\r\n<p>Chế độ bảo h&agrave;nh</p>\r\n\r\n<p>&nbsp;Bảo h&agrave;nh mặc định&nbsp;BHV 12 Th&aacute;ng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Khuyến m&atilde;i</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>1. Tặng:&nbsp;Cường lực&nbsp;-&nbsp;Ốp lưng&nbsp;- Tai nghe&nbsp;khi mua BHV</p>\r\n	</li>\r\n	<li>\r\n	<p>2. Giảm:&nbsp;100K&nbsp;&aacute;p dụng HSSV mua BHV tại&nbsp;398 Cầu Giấy</p>\r\n	</li>\r\n	<li>\r\n	<p>3. Mua: D&aacute;n cường lực 5D chỉ&nbsp;99K</p>\r\n	</li>\r\n	<li>\r\n	<p>4. Giảm 100K khi mua BHV v&agrave; đặt h&agrave;ng tại:&nbsp;<a href=\"https://goo.gl/PH4Pw9\">Đ&acirc;y</a></p>\r\n	</li>\r\n	<li>\r\n	<p>5. Cam kết b&aacute;n iPhone RẺ nhất VN:&nbsp;<a href=\"https://goo.gl/6xKTMo\">CLICK</a></p>\r\n	</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Bảo h&agrave;nh: 12 Th&aacute;ng</li>\r\n	<li>Giao h&agrave;ng tận nơi miễn ph&iacute; trong 30 ph&uacute;t.&nbsp;<a href=\"https://mobilecity.vn/page/chinh-sach-van-chuyen.html\">T&igrave;m hiểu th&ecirc;m</a></li>\r\n</ul>\r\n\r\n<p><a href=\"javascript:;\">MUA NGAYGiao h&agrave;ng tận nơi miễn ph&iacute;</a><a href=\"https://mobilecity.vn/mua-tra-gop/xiaomi-redmi-k20-pro.html\" target=\"_blank\">MUA TRẢ G&Oacute;PL&atilde;i suất thấp</a></p>\r\n\r\n<p><strong>0969.120.120</strong>&nbsp;(HN)&nbsp;<strong>0965.123.123</strong>&nbsp;(HCM)&nbsp;<strong>096.123.9797</strong>&nbsp;(ĐN)</p>\r\n\r\n<p><a href=\"https://mobilecity.vn/apple/iphone-7-plus-cu-prd2097.html\" target=\"_blank\"><img alt=\"iphone-7-plus-jetblack\" src=\"https://sudospaces.com/mobilecity-vn/images/2019/01/iphone-7-plus-jetblack-small.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://mobilecity.vn/apple/iphone-7-plus-cu-prd2097.html\" target=\"_blank\">iPhone 7 Plus cũ (32GB, 128GB)</a></p>\r\n\r\n<p>7.650.000 ₫</p>\r\n\r\n<p><a href=\"https://mobilecity.vn/xiaomi/xiaomi-mi-9.html\" target=\"_blank\"><img alt=\"xiaomi-mi-9-blackk\" src=\"https://sudospaces.com/mobilecity-vn/images/2019/04/xiaomi-mi-9-blackk-small.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://mobilecity.vn/xiaomi/xiaomi-mi-9.html\" target=\"_blank\">Xiaomi Mi 9 (RAM 6GB, 8GB)</a></p>\r\n\r\n<p>8.750.000 ₫</p>\r\n\r\n<p><a href=\"https://mobilecity.vn/xiaomi/xiaomi-redmi-k20.html\" target=\"_blank\"><img alt=\"redmi-k20\" src=\"https://sudospaces.com/mobilecity-vn/images/2019/05/redmi-k20-small.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://mobilecity.vn/xiaomi/xiaomi-redmi-k20.html\" target=\"_blank\">Xiaomi Redmi K20</a></p>\r\n\r\n<p>5.750.000 ₫</p>\r\n\r\n<p>Th&ocirc;ng số kỹ thuật</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>M&agrave;n h&igrave;nh:</td>\r\n			<td>Super AMOLED, Full HD+ (1080x2340 pixels), 6.39 inches, Corning Gorilla Glass 5</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Hệ điều h&agrave;nh:</td>\r\n			<td>Android 9.0 (Pie); MIUI 10</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera sau:</td>\r\n			<td>3 Camera: 48 MP + 13 MP (ultrawide) + 8 MP (telephoto) ,&nbsp;2160p@30/60fps</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Camera trước:</td>\r\n			<td>Pop-up 20 MP, f/2.2, 0.8&micro;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td>CPU:</td>\r\n			<td>Snapdragon 855 (7 nm) , 8 nh&acirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>RAM:</td>\r\n			<td>6Gb/8Gb</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ nhớ trong:</td>\r\n			<td>128Gb/256Gb</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thẻ SIM:</td>\r\n			<td>2 Sim , Nano Sim</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Dung lượng pin:</td>\r\n			<td>4000 mAh, sạc nhanh 27W</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thiết kế:</td>\r\n			<td>Thiết kế cao cấp 2 mặt k&iacute;nh, m&agrave;n h&igrave;nh fullview Camera Selfie th&ograve; thụt</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Xem th&ecirc;m cấu h&igrave;nh chi tiết</p>\r\n\r\n<p>Xiaomi Redmi K20 Pro (RAM 6GB, 8GB)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>1<img alt=\"\" src=\"https://img.youtube.com/vi/a4b1c6HyVEU/0.jpg\" /></p>\r\n\r\n<p>2<img alt=\"\" src=\"https://img.youtube.com/vi/y4EGYx3h56A/0.jpg\" /></p>\r\n\r\n<p>3<img alt=\"\" src=\"https://img.youtube.com/vi/8LgnUjTGosY/0.jpg\" /></p>\r\n\r\n<p>4<img alt=\"\" src=\"https://img.youtube.com/vi/HngS0_gBx1Q/0.jpg\" /></p>\r\n\r\n<p>5<img alt=\"\" src=\"https://img.youtube.com/vi/zfljSKgvC38/0.jpg\" /></p>\r\n\r\n<p>6<img alt=\"\" src=\"https://img.youtube.com/vi/iJUV0mX-QTs/0.jpg\" /></p>\r\n\r\n<p>Phụ kiện li&ecirc;n quan</p>\r\n\r\n<p><a href=\"https://mobilecity.vn/phu-kien/tai-nghe-xiaomi-in-ear-headphones-basic.html\" target=\"_blank\"><img alt=\"Xiaomi-In-Ear-headphones-Basic-2016\" src=\"https://sudospaces.com/mobilecity-vn/images/2016/11/Xiaomi-In-Ear-headphones-Basic-2016-small.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://mobilecity.vn/phu-kien/tai-nghe-xiaomi-in-ear-headphones-basic.html\" target=\"_blank\">Tai nghe Xiaomi In-Ear Headphones Basic</a></p>\r\n\r\n<p>69.000 ₫</p>\r\n\r\n<p><a href=\"https://mobilecity.vn/phu-kien/tai-nghe-xiaomi-in-ear-headphones-basic.html\" target=\"_blank\">MUA</a></p>\r\n\r\n<p><a href=\"https://mobilecity.vn/phu-kien/tai-nghe-bluetooth-i9ws.html\" target=\"_blank\"><img alt=\"tai-nghe-i9ws\" src=\"https://sudospaces.com/mobilecity-vn/images/2019/03/tai-nghe-i9ws-small.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://mobilecity.vn/phu-kien/tai-nghe-bluetooth-i9ws.html\" target=\"_blank\">Tai nghe Bluetooth i9S</a></p>\r\n\r\n<p>290.000 ₫</p>\r\n\r\n<p><a href=\"https://mobilecity.vn/phu-kien/tai-nghe-bluetooth-i9ws.html\" target=\"_blank\">MUA</a></p>\r\n\r\n<p><a href=\"https://mobilecity.vn/phu-kien/op-lung-redmi-k20-pro.html\" target=\"_blank\"><img alt=\"op-lung-redmi-k20-pro1ok\" src=\"https://sudospaces.com/mobilecity-vn/images/2019/06/op-lung-redmi-k20-pro1ok-small.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://mobilecity.vn/phu-kien/op-lung-redmi-k20-pro.html\" target=\"_blank\">Ốp lưng Redmi K20 Pro</a></p>\r\n\r\n<p>100.000 ₫</p>\r\n\r\n<p><a href=\"https://mobilecity.vn/phu-kien/op-lung-redmi-k20-pro.html\" target=\"_blank\">MUA</a></p>\r\n\r\n<p><a href=\"https://mobilecity.vn/phu-kien/cuong-luc-redmi-k20-k20-pro.html\" target=\"_blank\"><img alt=\"cuong-luc-redmi-k20-k20prook\" src=\"https://sudospaces.com/mobilecity-vn/images/2019/06/cuong-luc-redmi-k20-k20prook-small.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://mobilecity.vn/phu-kien/cuong-luc-redmi-k20-k20-pro.html\" target=\"_blank\">Cường lực redmi K20/K20 Pro</a></p>\r\n\r\n<p>100.000 ₫</p>\r\n\r\n<p><a href=\"https://mobilecity.vn/phu-kien/cuong-luc-redmi-k20-k20-pro.html\" target=\"_blank\">MUA</a></p>\r\n\r\n<p><a href=\"https://mobilecity.vn/phu-kien/loa-google-home-mini.html\" target=\"_blank\"><img alt=\"loa-google-mini-home\" src=\"https://sudospaces.com/mobilecity-vn/images/2019/06/loa-google-mini-home-small.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://mobilecity.vn/phu-kien/loa-google-home-mini.html\" target=\"_blank\">Loa Google Home Mini</a></p>\r\n\r\n<p>850.000 ₫</p>\r\n\r\n<p><a href=\"https://mobilecity.vn/phu-kien/loa-google-home-mini.html\" target=\"_blank\">MUA</a></p>\r\n\r\n<p>Tin tức li&ecirc;n quan</p>\r\n\r\n<p><a href=\"https://mobilecity.vn/tin-tuc/redmi-k20-pro-se-bo-sung-them-ban-ram-khung-12gb-va-them-nhieu-mau-moi.html\"><img alt=\"new2-6\" src=\"https://sudospaces.com/mobilecity-vn/images/2019/06/new2-6-medium.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://mobilecity.vn/tin-tuc/redmi-k20-pro-se-bo-sung-them-ban-ram-khung-12gb-va-them-nhieu-mau-moi.html\" target=\"_blank\">Redmi K20 Pro sẽ bổ sung th&ecirc;m bản RAM khủng 12GB v&agrave; th&ecirc;m nhiều m&agrave;u mới</a></p>\r\n\r\n<p><a href=\"https://mobilecity.vn/tin-tuc/xiaomi-mi-9t-redmi-k20-ban-global-se-duoc-ra-mat-ngay-12-thang-6.html\"><img alt=\"mi9t-1\" src=\"https://sudospaces.com/mobilecity-vn/images/2019/06/mi9t-1-medium.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://mobilecity.vn/tin-tuc/xiaomi-mi-9t-redmi-k20-ban-global-se-duoc-ra-mat-ngay-12-thang-6.html\" target=\"_blank\">Xiaomi Mi 9T (Redmi K20 bản Global) sẽ được ra mắt ng&agrave;y 12 th&aacute;ng 6</a></p>\r\n\r\n<p><a href=\"https://mobilecity.vn/tin-tuc/xuat-hien-mi-9t-pro-tren-geekbench-co-the-la-phien-ban-quoc-te-cua-redmi-k20-pro.html\"><img alt=\"mi9t-pro-1\" src=\"https://sudospaces.com/mobilecity-vn/images/2019/06/mi9t-pro-1-medium.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://mobilecity.vn/tin-tuc/xuat-hien-mi-9t-pro-tren-geekbench-co-the-la-phien-ban-quoc-te-cua-redmi-k20-pro.html\" target=\"_blank\">Xuất hiện Mi 9T Pro tr&ecirc;n Geekbench, c&oacute; thể l&agrave; phi&ecirc;n bản quốc tế của Redmi K20 Pro</a></p>\r\n\r\n<p><a href=\"https://mobilecity.vn/tin-tuc/miui-cap-nhat-nhieu-tinh-nang-huu-ich-co-the-thay-doi-sim-ngay-tren-thanh-thong-bao.html\"><img alt=\"24-6\" src=\"https://sudospaces.com/mobilecity-vn/images/2019/06/24-6-medium.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://mobilecity.vn/tin-tuc/miui-cap-nhat-nhieu-tinh-nang-huu-ich-co-the-thay-doi-sim-ngay-tren-thanh-thong-bao.html\" target=\"_blank\">MIUI cập nhật nhiều t&iacute;nh năng hữu &iacute;ch: C&oacute; thể thay đổi sim ngay tr&ecirc;n thanh th&ocirc;ng b&aacute;o</a></p>\r\n\r\n<h2><img alt=\"\" src=\"https://mobilecity.vn/public/assets/img/logo_icon.png\" />Mở hộp, Đ&aacute;nh gi&aacute; nhanh Xiaomi Redmi K20 Pro</h2>\r\n\r\n<p><strong>Xiaomi Redmi K20 Pro</strong>&nbsp;đ&atilde; được Redmi (thương hiệu con của Xiaomi) ch&iacute;nh thức ra mắt v&agrave;o th&aacute;ng 5/2019 với thiết kế camera pop-up độc đ&aacute;o, đ&aacute;nh dấu một bước ngoặt lớn cho smartphone gi&aacute; rẻ cấu h&igrave;nh cao. C&ugrave;ng MobileCity mở hộp ngay qua video dưới đ&acirc;y nh&eacute;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Xiaomi Redmi K20 Pro cao cấp đột ph&aacute; mới về thiết kế, cấu h&igrave;nh v&agrave; gi&aacute; b&aacute;n</strong></p>\r\n\r\n<p>Thời gian vừa qua Xiaomi lại khẳng định t&ecirc;n tuổi cửa m&igrave;nh th&ecirc;m 1 lần nữa khi cho ra mắt đ&ograve;ng điện thoại Redmi K. N&oacute; mang trong m&igrave;nh sức mạnh lớn nhất, thiết kế thời thượng nhất v&agrave; gi&aacute; lại rẻ nhất, trong số đ&oacute; c&oacute; sản phẩm&nbsp;<a href=\"https://mobilecity.vn/xiaomi/xiaomi-redmi-k20-pro.html\">Xiaomi Redmi K20 Pro</a>&nbsp;khiến cho cộng đồng Fan Xiaomi trao đảo.</p>\r\n\r\n<h3>Đ&aacute;nh gi&aacute; Xiaomi Redmi K20 Pro: Cấu h&igrave;nh &quot;si&ecirc;u Khủng&quot;</h3>\r\n\r\n<p>Về cấu h&igrave;nh, hiệu năng Xiaomi Redmi K20 Pro c&oacute; thể n&oacute;i l&agrave; khủng nhất hiện nay khi sở hữu con chip Snapdragon 855, RAM 8GB c&ugrave;ng 3 t&ugrave;y chọn bộ nhớ 64GB-128GB-256GB. Điểm Antutu Benchmark của Redmi K20 Pro đạt hơn 380.000 điểm, điểm số khủng nhất hiện nay vượt qua mọi&nbsp;si&ecirc;u phẩm cao cấp hiện c&oacute;. Với những con số ở tr&ecirc;n Xiaomi Redmi K20 Pro c&oacute; thể chiến được mọi game nặng nhất hiện c&oacute; mượt m&agrave;, xử l&iacute; &ecirc;m tất cả t&aacute;c vụ cho người d&ugrave;ng những trải nghiệm tuyệt vời nhất,trong v&ograve;ng từ 2 tới 3 năm nữa</p>\r\n\r\n<p><img alt=\"\" src=\"https://sudospaces.com/mobilecity-vn/images/2019/05/xiaomi-redmi-k20-pro-2.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i ra Redmi K20 Pro c&ograve;n&nbsp;được trang bị bộ tản nhiệt nhiều lớp cho khả năng tản nhiệt của m&aacute;y tốt hơn rất nhiều so với thế hệ trư. M&aacute;y được c&agrave;i sẵn giao diệm MIUI 10 mới nhất chạy tr&ecirc;n nền Android 9.0</p>\r\n\r\n<h3>Đ&aacute;nh gi&aacute; Xiaomi Redmi K20 Pro: Thiết kế tuyệt vời</h3>\r\n\r\n<p>Xiaomi Redmi K20 Pro c&oacute; thiết kế từ kim loại cũng với hai mặt k&iacute;nh sang trọng, b&oacute;ng bẩy. Mặt trước của m&aacute;y l&agrave; m&agrave;n h&igrave;nh lớn Fullview với tỉ lệ hiển thị l&ecirc;n tới 91%. Mặt sau của m&aacute;y&nbsp;l&agrave;&nbsp;cụm camera k&eacute;p nằm ch&iacute;nh giữa. Viền m&agrave;n h&igrave;nh thiết kế mỏng cho tỉ lệ th&acirc;n m&aacute;y.</p>\r\n\r\n<p><img alt=\"\" src=\"https://sudospaces.com/mobilecity-vn/images/2019/05/xiaomi-redmi-k20-pro-1.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Xiaomi Redmi K20 Pro cũng được trang bị m&agrave;n h&igrave;nh&nbsp;Supper AMOLED k&iacute;ch thước&nbsp;lớn&nbsp;6.39 inch, độ ph&acirc;n giải&nbsp;Full HD+( 1080x2340 pixels được thiết kế theo tỷ lệ 19.5:9. Đặc biệt hơn nữa l&agrave; sản phẩm c&oacute; hỗ trợ cảm biến v&acirc;n tay thế hệ thứ 7 vơi tốc độ nhanh hơn, đọ bảo mật được cải thiện rất nhiều.</p>', '../public/img/uploads/products/59.jpg', NULL),
(68, 'sản phẩm t20', 'san-pham-t20', 1, 2121254, 0, 1, NULL, NULL, '2019-09-30 21:36:51', '<p>MU đang lụn bại,&nbsp;<a href=\"https://www.24h.com.vn/manchester-united-c48e1521.html\">Old Trafford</a>&nbsp;như thể rơi v&agrave;o c&otilde;i hỗn mang dưới thời HLV Ole Gunnar Solskjaer. Điều đ&aacute;ng n&oacute;i, đ&acirc;y mới l&agrave; lần đầu ti&ecirc;n m&agrave; nh&agrave; cầm qu&acirc;n người Na Uy khởi đầu m&ugrave;a giải mới c&ugrave;ng &quot;Quỷ đỏ&quot;. Tuy nhi&ecirc;n, tất cả đều đ&atilde; ch&aacute;n ng&aacute;n với lối chơi bạc nhược của&nbsp;<a href=\"https://www.24h.com.vn/manchester-united-c48e1521.html\">MU</a>&nbsp;l&uacute;c n&agrave;y, cho d&ugrave; m&ugrave;a giải 2019/20 chỉ mới đi qua được 1 th&aacute;ng rưỡi.</p>\r\n\r\n<p><img alt=\"Trước đại chiến MU - Arsenal: Tin đồn Wenger muốn cứu MU nếu thành sự thật sẽ ra sao? - 1\" src=\"https://cdn.24h.com.vn/upload/3-2019/images/2019-09-26/HLV-Wenger-dan-dat-MU-gay-soc-4-wenger-1569498230-470-width660height371.jpg\" /></p>\r\n\r\n<p>Rộ th&ocirc;ng tin cho rằng HLV Wenger đang muốn ngồi v&agrave;o ghế n&oacute;ng ở Old Trafford</p>\r\n\r\n<p>L&agrave;n s&oacute;ng đ&ograve;i sa thải HLV Ole Gunnar Solskjaer đang dần được c&aacute;c fan MU hưởng ứng. Nếu th&agrave;nh t&iacute;ch v&agrave; lối chơi của đội chủ s&acirc;n Old Trafford cứ như thời điểm n&agrave;y, th&igrave; c&oacute; lẽ kh&ocirc;ng đi qua th&aacute;ng 12, nh&agrave; cầm qu&acirc;n người Na Uy sẽ bị sa thải, giống như c&aacute;i c&aacute;ch ban l&atilde;nh đạo MU đ&atilde; l&agrave;m với David Moyes, Louis van Gaal v&agrave; Jose Mourinho.</p>\r\n', '../public/img/uploads/products/5d8ed3275dbf6-1.jpg', NULL),
(69, 't-s20', NULL, 2, 2121254, 0, 2, NULL, NULL, NULL, '<p>Khi được ph&oacute;ng vi&ecirc;n hỏi về khả năng dẫn dắt M.U trong tương lai, HLV Wenger kh&ocirc;ng ngần ngại đ&aacute;p: &ldquo;T&ocirc;i vừa n&oacute;i đ&oacute; th&ocirc;i, MU l&agrave; giấc mơ của mọi HLV. T&ocirc;i th&igrave; kh&ocirc;ng thiếu sự tự tin v&agrave; dũng cảm. Ngo&agrave;i ra, t&ocirc;i c&ograve;n c&oacute; rất nhiều &yacute; tưởng&rdquo;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Trước đại chiến MU - Arsenal: Tin đồn Wenger muốn cứu MU nếu thành sự thật sẽ ra sao? - 2\" src=\"https://cdn.24h.com.vn/upload/3-2019/images/2019-09-26/HLV-Wenger-dan-dat-MU-gay-soc-4-mu-1569498230-455-width660height660.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>4 cầu thủ m&agrave; MU muốn mang về MU gồm Lewandowski, Kroos, Koulibaly, Zyech</p>\r\n\r\n<p>Trong b&agrave;i trả lời phỏng vấn n&agrave;y, HLV Wenger nhiều lần nhắc đến mục ti&ecirc;u l&agrave; MU cần c&oacute; th&ecirc;m 4 cầu thủ giỏi. Chắc chắn l&agrave; khi đề cập đến vấn đề n&agrave;y, nh&agrave; cầm qu&acirc;n người Ph&aacute;p đ&atilde; c&acirc;n nhắc kỹ c&agrave;ng. V&agrave; hiển nhi&ecirc;n l&agrave; &quot;Gi&aacute;o sư&quot; đ&atilde; c&oacute; sẵn 4 c&aacute;i t&ecirc;n trong đầu, chỉ cần Ph&oacute; chủ tịch Ed Woodward v&agrave; đại diện MU đặt vấn đề, &ocirc;ng sẽ đưa ra 4 c&aacute;i t&ecirc;n để phục hưng &quot;Quỷ đỏ&quot; c&ugrave;ng m&igrave;nh.</p>\r\n', '../public/img/uploads/products/5d8ee98c09a4e-18.jpg', NULL),
(70, 't-sthu12345', NULL, 2, 2121254, 0, 2, NULL, NULL, NULL, '<p>Khi được ph&oacute;ng vi&ecirc;n hỏi về khả năng dẫn dắt M.U trong tương lai, HLV Wenger kh&ocirc;ng ngần ngại đ&aacute;p: &ldquo;T&ocirc;i vừa n&oacute;i đ&oacute; th&ocirc;i, MU l&agrave; giấc mơ của mọi HLV. T&ocirc;i th&igrave; kh&ocirc;ng thiếu sự tự tin v&agrave; dũng cảm. Ngo&agrave;i ra, t&ocirc;i c&ograve;n c&oacute; rất nhiều &yacute; tưởng&rdquo;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Trước đại chiến MU - Arsenal: Tin đồn Wenger muốn cứu MU nếu thành sự thật sẽ ra sao? - 2\" src=\"https://cdn.24h.com.vn/upload/3-2019/images/2019-09-26/HLV-Wenger-dan-dat-MU-gay-soc-4-mu-1569498230-455-width660height660.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>4 cầu thủ m&agrave; MU muốn mang về MU gồm Lewandowski, Kroos, Koulibaly, Zyech</p>\r\n\r\n<p>Trong b&agrave;i trả lời phỏng vấn n&agrave;y, HLV Wenger nhiều lần nhắc đến mục ti&ecirc;u l&agrave; MU cần c&oacute; th&ecirc;m 4 cầu thủ giỏi. Chắc chắn l&agrave; khi đề cập đến vấn đề n&agrave;y, nh&agrave; cầm qu&acirc;n người Ph&aacute;p đ&atilde; c&acirc;n nhắc kỹ c&agrave;ng. V&agrave; hiển nhi&ecirc;n l&agrave; &quot;Gi&aacute;o sư&quot; đ&atilde; c&oacute; sẵn 4 c&aacute;i t&ecirc;n trong đầu, chỉ cần Ph&oacute; chủ tịch Ed Woodward v&agrave; đại diện MU đặt vấn đề, &ocirc;ng sẽ đưa ra 4 c&aacute;i t&ecirc;n để phục hưng &quot;Quỷ đỏ&quot; c&ugrave;ng m&igrave;nh.</p>\r\n', '../public/img/uploads/products/5d8ee9e009a13-18.jpg', NULL),
(72, 't-shirtaa', NULL, 2, 1546, 0, 1, NULL, NULL, NULL, '<p>21</p>\r\n', '../public/img/uploads/products/5d8eea9f5056f-2.jpg', NULL),
(73, 't20', NULL, 2, 2121254, 0, 1, NULL, NULL, NULL, '<p>werwrw</p>\r\n', '../public/img/uploads/products/5d8eef5046816-5d8ec96cc7468-3.jpg', NULL),
(74, 'Nguyen huu Hung', 'nguyen-huu-hung', 2, 2121254, 0, 1, NULL, NULL, '2019-09-30 21:36:29', '<p>dasda</p>\r\n', '../public/img/uploads/products/5d919623642c4-1qw.jpg', NULL),
(75, 't-shirtaa212', 't-shirtaa212', 2, 2121254, 0, 1, NULL, '2019-09-30 01:12:55', '2019-09-30 21:36:05', '<p>qwq</p>\r\n', '../public/img/uploads/products/5d919ce7977d9-1qw.jpg', NULL),
(76, 'sản phẩm 11212a', 'san-pham-11212a', 2, 2121254, 0, 1, NULL, '2019-09-30 21:38:23', '2019-09-30 21:38:23', '<p>wwqw</p>\r\n', '../public/img/uploads/products/5d92bc1fe2236-10000.jpg', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slideshow`
--

CREATE TABLE `slideshow` (
  `id` int(11) NOT NULL,
  `image` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `address`, `birthday`, `is_active`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `avatar`) VALUES
(1, 'Duy', 'Nguyễn Hữu', 'Support', '1996-07-25', '1', 'nhduy9x@gmail.com', NULL, '$2y$10$tvKCgXSp6P.U0697Vw6NlO3wvr8OiA0aEiF7K30bXjKU7UzAItRiq', NULL, NULL, NULL, NULL),
(2, 'Support', 'Super', 'Support', '2019-08-11', '1', 'admin@gmail.com', NULL, '$2y$10$vhlQtDYYztGmxeGKMWrkE.cofU/OHEXfucDFhVB/BahuAo7EnIEAy', 'oAgdMshRJoq6YsQqQM06vzT0Uz6qvt2aTEv1WCMwXKj1cG4mTe54otiuDYSa', NULL, NULL, NULL),
(3, 'Support', 'Super', 'Support', '2019-08-11', '0', 'author@gmail.com', NULL, '$2y$10$pyJwbOs4fpWYyVMTgULxs.EotViSFAH8u4ntNZdF7/oAjXw2J9DNC', NULL, NULL, '2019-08-20 04:09:39', NULL),
(4, 'supper', 'supper', 'supper', '2019-08-15', '1', 'supper@gmail.com', NULL, '$2y$10$pyJwbOs4fpWYyVMTgULxs.EotViSFAH8u4ntNZdF7/oAjXw2J9DNC', NULL, NULL, '2019-08-20 01:22:16', 'img/uploads/products/2.jpg'),
(5, NULL, 'asfasf', 'asfasf', '2019-08-12', '1', 'demo@gmail.com', NULL, '$2y$10$pyJwbOs4fpWYyVMTgULxs.EotViSFAH8u4ntNZdF7/oAjXw2J9DNC', NULL, NULL, NULL, NULL),
(6, 'nguyễn', 'DUY', 'Ha Noi\r\nThanh Hoa', '2019-08-19', '1', 'kenstudy11@gmail.com', '2019-08-20 06:37:10', '$2y$10$/CDbufywU5ntbqia4OrkYubaQxML8pcF/NpVUWhX5Wh6JzRQ.atPC', 'XP4hHuLjLyHv6Zygv0Wxl4AUYN1q41Or2gIjvUOnIUEzMI6gXwlYC1QzDPJz', '2019-08-20 06:37:10', '2019-08-20 06:37:10', 'img/uploads/users\\10000jpg-PHNemkzTIA35heFC14kB.jpeg'),
(7, 'nguyễn', 'DUY', 'Ha Noi\r\nThanh Hoa', '2019-08-13', '1', 'kenstudy11asa@gmail.com', '2019-08-20 21:07:47', '$2y$10$/ZnCEqQrFyxA5rqIPbbgkeZYUvGZiPIRa2iGetOVuTO4DaiTL1Qk.', NULL, '2019-08-20 06:41:52', '2019-08-24 03:17:07', 'img/uploads/users\\10000jpg-NCzEmx9qfc121V0WKZ3D.jpeg'),
(8, 'nguyễn', 'DUY1212', 'Ha Noi\r\nThanh Hoa', '2019-08-16', '0', 'fpoly123@gmail.com', '2019-08-20 06:45:38', '$2y$10$FFZcVJzAxxUbvPoiVX4CQ.LX6JfqpclVySLdLtAreXzPFkX6ScsR.', NULL, '2019-08-20 06:45:39', '2019-08-23 23:03:39', 'img/uploads/users\\1-1920x660jpg-aMkTMohxQsnvpfpE9RLw.jpeg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_name_index` (`name`),
  ADD KEY `categories_slug_index` (`slug`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_name_index` (`name`),
  ADD KEY `products_slug_index` (`slug`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
