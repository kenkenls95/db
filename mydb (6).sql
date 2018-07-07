-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 07, 2018 lúc 07:27 PM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mydb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `categoryid` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `shortdesc` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `parentid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`categoryid`, `name`, `shortdesc`, `parentid`) VALUES
(1, 'Quả\r\n', 'Quả\r\n', 0),
(2, 'Nội địa', 'Nội địa', 1),
(3, 'Nhập khẩu', 'Nhập khẩu', 1),
(4, 'Củ', 'Củ', 0),
(5, 'Các loại rau củ khác', 'Các loại rau củ khác', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_humidity`
--

CREATE TABLE `tbl_humidity` (
  `id` int(11) NOT NULL,
  `value` float NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(254) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_humidity`
--

INSERT INTO `tbl_humidity` (`id`, `value`, `date`, `status`) VALUES
(1, 17, '2018-06-20 16:35:45', 'Device is ready'),
(2, 17, '2018-06-20 16:36:12', 'Device is ready'),
(3, 17, '2018-06-20 16:36:42', 'Device is ready'),
(4, 18, '2018-06-20 16:37:12', 'Device is ready'),
(5, 17, '2018-06-20 16:37:56', 'Device is ready'),
(6, 17, '2018-06-20 16:38:57', 'Device is ready'),
(7, 17, '2018-06-20 16:39:26', 'Device is ready'),
(8, 17, '2018-06-20 16:39:56', 'Device is ready'),
(9, 17, '2018-06-20 16:40:26', 'Device is ready'),
(10, 16, '2018-06-21 09:48:51', 'Device is ready'),
(11, 16, '2018-06-21 09:49:21', 'Device is ready'),
(12, 15, '2018-06-21 09:49:51', 'Device is ready'),
(13, 16, '2018-06-21 09:50:22', 'Device is ready'),
(14, 15, '2018-06-21 09:50:51', 'Device is ready'),
(15, 15, '2018-06-21 09:51:21', 'Device is ready'),
(16, 16, '2018-06-21 09:51:51', 'Device is ready'),
(17, 16, '2018-06-21 09:52:21', 'Device is ready'),
(18, 17, '2018-06-21 09:52:52', 'Device is ready'),
(19, 17, '2018-06-21 09:53:25', 'Device is ready'),
(20, 17, '2018-06-21 09:53:55', 'Device is ready'),
(21, 17, '2018-06-21 09:54:23', 'Device is ready'),
(22, 17, '2018-06-21 09:54:52', 'Device is ready'),
(23, 17, '2018-06-21 09:55:21', 'Device is ready'),
(24, 17, '2018-06-21 09:55:51', 'Device is ready'),
(25, 17, '2018-06-21 09:56:23', 'Device is ready'),
(26, 17, '2018-06-21 09:56:52', 'Device is ready'),
(27, 17, '2018-06-21 09:57:26', 'Device is ready'),
(28, 17, '2018-06-21 09:57:53', 'Device is ready'),
(29, 17, '2018-06-21 09:58:22', 'Device is ready'),
(30, 17, '2018-06-21 09:58:53', 'Device is ready'),
(31, 17, '2018-06-21 09:59:23', 'Device is ready'),
(32, 17, '2018-06-21 09:59:53', 'Device is ready'),
(33, 17, '2018-06-21 10:00:23', 'Device is ready'),
(34, 17, '2018-06-21 10:00:53', 'Device is ready'),
(35, 18, '2018-06-21 10:01:22', 'Device is ready'),
(36, 18, '2018-06-21 10:01:54', 'Device is ready'),
(37, 17, '2018-06-21 10:02:23', 'Device is ready'),
(38, 17, '2018-06-21 10:02:53', 'Device is ready'),
(39, 17, '2018-06-21 10:03:22', 'Device is ready'),
(40, 17, '2018-06-21 10:03:53', 'Device is ready'),
(41, 17, '2018-06-21 10:04:22', 'Device is ready'),
(42, 17, '2018-06-21 10:04:53', 'Device is ready'),
(43, 17, '2018-06-21 10:05:23', 'Device is ready'),
(44, 18, '2018-06-21 10:05:53', 'Device is ready'),
(45, 17, '2018-06-21 10:06:24', 'Device is ready'),
(46, 17, '2018-06-21 10:06:53', 'Device is ready'),
(47, 17, '2018-06-21 10:07:28', 'Device is ready'),
(48, 17, '2018-06-21 10:08:23', 'Device is ready'),
(49, 17, '2018-06-21 10:08:53', 'Device is ready'),
(50, 17, '2018-06-21 10:09:23', 'Device is ready'),
(51, 17, '2018-06-21 10:09:53', 'Device is ready'),
(52, 17, '2018-06-21 10:10:23', 'Device is ready'),
(53, 17, '2018-06-21 10:10:53', 'Device is ready'),
(54, 17, '2018-06-21 10:11:23', 'Device is ready'),
(55, 18, '2018-06-21 10:11:54', 'Device is ready'),
(56, 17, '2018-06-21 10:12:23', 'Device is ready'),
(57, 17, '2018-06-21 10:12:54', 'Device is ready'),
(58, 17, '2018-06-21 10:13:25', 'Device is ready'),
(59, 17, '2018-06-21 10:13:54', 'Device is ready'),
(60, 17, '2018-06-21 10:14:24', 'Device is ready'),
(61, 18, '2018-06-21 10:14:54', 'Device is ready'),
(62, 17, '2018-06-21 10:15:24', 'Device is ready'),
(63, 17, '2018-06-21 10:15:58', 'Device is ready'),
(64, 17, '2018-06-21 10:16:25', 'Device is ready'),
(65, 17, '2018-06-21 10:16:56', 'Device is ready'),
(66, 17, '2018-06-21 10:17:25', 'Device is ready'),
(67, 17, '2018-06-21 10:17:55', 'Device is ready'),
(68, 17, '2018-06-21 10:18:25', 'Device is ready'),
(69, 17, '2018-06-21 10:18:57', 'Device is ready'),
(70, 18, '2018-06-21 10:19:25', 'Device is ready'),
(71, 17, '2018-06-21 10:19:54', 'Device is ready'),
(72, 17, '2018-06-21 10:20:25', 'Device is ready'),
(73, 17, '2018-06-21 10:20:55', 'Device is ready'),
(74, 17, '2018-06-21 10:21:25', 'Device is ready'),
(75, 17, '2018-06-21 10:21:55', 'Device is ready'),
(76, 17, '2018-06-21 10:22:27', 'Device is ready'),
(77, 17, '2018-06-21 10:22:56', 'Device is ready'),
(78, 18, '2018-06-21 10:23:25', 'Device is ready'),
(79, 18, '2018-06-21 10:23:56', 'Device is ready'),
(80, 17, '2018-06-21 10:24:25', 'Device is ready'),
(81, 18, '2018-06-21 10:24:55', 'Device is ready'),
(82, 17, '2018-06-21 10:25:26', 'Device is ready'),
(83, 17, '2018-06-21 10:25:55', 'Device is ready'),
(84, 17, '2018-06-21 10:26:25', 'Device is ready'),
(85, 17, '2018-06-21 10:26:56', 'Device is ready'),
(86, 17, '2018-06-21 10:27:27', 'Device is ready'),
(87, 17, '2018-06-21 10:27:56', 'Device is ready'),
(88, 18, '2018-06-21 10:28:26', 'Device is ready'),
(89, 17, '2018-06-21 10:28:56', 'Device is ready'),
(90, 17, '2018-06-21 10:29:26', 'Device is ready'),
(91, 17, '2018-06-21 10:29:57', 'Device is ready'),
(92, 17, '2018-06-21 10:30:31', 'Device is ready'),
(93, 17, '2018-06-21 10:31:01', 'Device is ready'),
(94, 17, '2018-06-21 10:32:01', 'Device is ready'),
(95, 17, '2018-06-21 10:32:32', 'Device is ready'),
(96, 17, '2018-06-21 10:33:02', 'Device is ready'),
(97, 18, '2018-06-21 10:33:33', 'Device is ready'),
(98, 17, '2018-06-21 10:34:02', 'Device is ready'),
(99, 17, '2018-06-21 10:34:31', 'Device is ready'),
(100, 54, '2018-06-22 09:01:00', 'Device is ready'),
(101, 53, '2018-06-22 09:01:31', 'Device is ready'),
(102, 53, '2018-06-22 09:02:00', 'Device is ready'),
(103, 53, '2018-06-22 09:02:30', 'Device is ready'),
(104, 53, '2018-06-22 09:03:00', 'Device is ready'),
(105, 53, '2018-06-22 09:03:30', 'Device is ready'),
(106, 53, '2018-06-22 09:04:00', 'Device is ready'),
(107, 53, '2018-06-22 09:04:31', 'Device is ready'),
(108, 55, '2018-06-22 09:05:01', 'Device is ready'),
(109, 54, '2018-06-22 09:05:32', 'Device is ready'),
(110, 53, '2018-06-22 09:06:01', 'Device is ready'),
(111, 53, '2018-06-22 09:06:31', 'Device is ready'),
(112, 53, '2018-06-22 09:07:02', 'Device is ready'),
(113, 53, '2018-06-22 09:07:33', 'Device is ready'),
(114, 53, '2018-06-22 09:08:02', 'Device is ready'),
(115, 53, '2018-06-22 09:08:33', 'Device is ready'),
(116, 54, '2018-06-22 09:09:02', 'Device is ready'),
(117, 53, '2018-06-22 09:09:32', 'Device is ready'),
(118, 55, '2018-06-22 09:10:03', 'Device is ready'),
(119, 54, '2018-06-22 09:10:32', 'Device is ready'),
(120, 53, '2018-06-22 09:11:02', 'Device is ready'),
(121, 53, '2018-06-22 09:12:44', 'Device is ready'),
(122, 53, '2018-06-22 09:13:14', 'Device is ready'),
(123, 52, '2018-06-22 09:13:44', 'Device is ready'),
(124, 52, '2018-06-22 09:14:14', 'Device is ready'),
(125, 52, '2018-06-22 09:14:45', 'Device is ready'),
(126, 52, '2018-06-22 09:15:14', 'Device is ready'),
(127, 53, '2018-06-22 09:15:44', 'Device is ready'),
(128, 53, '2018-06-22 09:16:15', 'Device is ready'),
(129, 53, '2018-06-22 09:16:48', 'Device is ready');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_led`
--

CREATE TABLE `tbl_led` (
  `id` int(11) NOT NULL,
  `led1` int(11) NOT NULL,
  `led2` int(11) NOT NULL,
  `led3` int(11) NOT NULL,
  `led4` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_led`
--

INSERT INTO `tbl_led` (`id`, `led1`, `led2`, `led3`, `led4`, `date`) VALUES
(1, 1, 1, 1, 1, '2018-06-20 16:35:45'),
(2, 1, 1, 1, 1, '2018-06-20 16:36:12'),
(3, 1, 1, 1, 1, '2018-06-20 16:36:42'),
(4, 1, 1, 1, 1, '2018-06-20 16:37:12'),
(5, 1, 1, 1, 1, '2018-06-20 16:37:56'),
(6, 1, 1, 1, 1, '2018-06-20 16:38:57'),
(7, 1, 1, 1, 1, '2018-06-20 16:39:26'),
(8, 1, 1, 1, 1, '2018-06-20 16:39:56'),
(9, 1, 1, 1, 1, '2018-06-20 16:40:26'),
(10, 0, 1, 1, 1, '2018-06-21 09:48:51'),
(11, 0, 0, 0, 0, '2018-06-21 09:49:21'),
(12, 0, 1, 0, 1, '2018-06-21 09:49:51'),
(13, 0, 1, 0, 1, '2018-06-21 09:50:22'),
(14, 0, 1, 0, 1, '2018-06-21 09:50:51'),
(15, 0, 1, 0, 1, '2018-06-21 09:51:21'),
(16, 0, 1, 0, 1, '2018-06-21 09:51:52'),
(17, 0, 1, 0, 1, '2018-06-21 09:52:21'),
(18, 0, 1, 0, 1, '2018-06-21 09:52:52'),
(19, 0, 1, 0, 1, '2018-06-21 09:53:25'),
(20, 0, 1, 0, 1, '2018-06-21 09:53:55'),
(21, 0, 1, 0, 1, '2018-06-21 09:54:23'),
(22, 0, 1, 0, 1, '2018-06-21 09:54:52'),
(23, 0, 1, 0, 1, '2018-06-21 09:55:21'),
(24, 0, 1, 0, 1, '2018-06-21 09:55:51'),
(25, 0, 1, 0, 1, '2018-06-21 09:56:23'),
(26, 0, 1, 0, 1, '2018-06-21 09:56:52'),
(27, 0, 1, 0, 1, '2018-06-21 09:57:26'),
(28, 0, 1, 0, 1, '2018-06-21 09:57:53'),
(29, 0, 1, 0, 1, '2018-06-21 09:58:22'),
(30, 0, 1, 0, 1, '2018-06-21 09:58:53'),
(31, 0, 1, 0, 1, '2018-06-21 09:59:23'),
(32, 0, 1, 0, 1, '2018-06-21 09:59:53'),
(33, 0, 1, 0, 1, '2018-06-21 10:00:23'),
(34, 0, 1, 0, 1, '2018-06-21 10:00:53'),
(35, 0, 1, 0, 1, '2018-06-21 10:01:22'),
(36, 0, 1, 0, 1, '2018-06-21 10:01:54'),
(37, 0, 1, 0, 1, '2018-06-21 10:02:23'),
(38, 0, 1, 0, 1, '2018-06-21 10:02:53'),
(39, 0, 1, 0, 1, '2018-06-21 10:03:22'),
(40, 0, 1, 0, 1, '2018-06-21 10:03:53'),
(41, 0, 1, 0, 1, '2018-06-21 10:04:22'),
(42, 0, 1, 0, 1, '2018-06-21 10:04:53'),
(43, 0, 1, 0, 1, '2018-06-21 10:05:23'),
(44, 0, 1, 0, 1, '2018-06-21 10:05:53'),
(45, 0, 1, 0, 1, '2018-06-21 10:06:24'),
(46, 0, 1, 0, 1, '2018-06-21 10:06:53'),
(47, 0, 1, 0, 1, '2018-06-21 10:07:28'),
(48, 0, 1, 0, 1, '2018-06-21 10:08:23'),
(49, 0, 1, 0, 1, '2018-06-21 10:08:53'),
(50, 0, 1, 0, 1, '2018-06-21 10:09:23'),
(51, 0, 1, 0, 1, '2018-06-21 10:09:53'),
(52, 0, 1, 0, 1, '2018-06-21 10:10:23'),
(53, 0, 1, 0, 1, '2018-06-21 10:10:53'),
(54, 0, 1, 0, 1, '2018-06-21 10:11:23'),
(55, 0, 1, 0, 1, '2018-06-21 10:11:54'),
(56, 0, 1, 0, 1, '2018-06-21 10:12:23'),
(57, 0, 1, 0, 1, '2018-06-21 10:12:54'),
(58, 0, 1, 0, 1, '2018-06-21 10:13:25'),
(59, 0, 1, 0, 1, '2018-06-21 10:13:54'),
(60, 0, 1, 0, 1, '2018-06-21 10:14:24'),
(61, 0, 1, 0, 1, '2018-06-21 10:14:54'),
(62, 0, 1, 0, 1, '2018-06-21 10:15:24'),
(63, 0, 1, 0, 1, '2018-06-21 10:15:58'),
(64, 0, 1, 0, 1, '2018-06-21 10:16:25'),
(65, 0, 1, 0, 1, '2018-06-21 10:16:56'),
(66, 0, 1, 0, 1, '2018-06-21 10:17:25'),
(67, 0, 1, 0, 1, '2018-06-21 10:17:55'),
(68, 0, 1, 0, 1, '2018-06-21 10:18:25'),
(69, 0, 1, 0, 1, '2018-06-21 10:18:57'),
(70, 0, 1, 0, 1, '2018-06-21 10:19:25'),
(71, 0, 1, 0, 1, '2018-06-21 10:19:54'),
(72, 0, 1, 0, 1, '2018-06-21 10:20:25'),
(73, 0, 1, 0, 1, '2018-06-21 10:20:55'),
(74, 0, 1, 0, 1, '2018-06-21 10:21:25'),
(75, 0, 1, 0, 1, '2018-06-21 10:21:55'),
(76, 0, 1, 0, 1, '2018-06-21 10:22:27'),
(77, 0, 1, 0, 1, '2018-06-21 10:22:56'),
(78, 0, 1, 0, 1, '2018-06-21 10:23:25'),
(79, 0, 1, 0, 1, '2018-06-21 10:23:56'),
(80, 0, 1, 0, 1, '2018-06-21 10:24:25'),
(81, 0, 1, 0, 1, '2018-06-21 10:24:55'),
(82, 0, 1, 0, 1, '2018-06-21 10:25:26'),
(83, 0, 1, 0, 1, '2018-06-21 10:25:55'),
(84, 0, 1, 0, 1, '2018-06-21 10:26:25'),
(85, 0, 1, 0, 1, '2018-06-21 10:26:56'),
(86, 0, 1, 0, 1, '2018-06-21 10:27:27'),
(87, 0, 1, 0, 1, '2018-06-21 10:27:56'),
(88, 0, 1, 0, 1, '2018-06-21 10:28:26'),
(89, 0, 1, 0, 1, '2018-06-21 10:28:56'),
(90, 0, 1, 0, 1, '2018-06-21 10:29:26'),
(91, 0, 1, 0, 1, '2018-06-21 10:29:57'),
(92, 1, 1, 1, 1, '2018-06-21 10:30:31'),
(93, 1, 1, 1, 1, '2018-06-21 10:31:01'),
(94, 1, 1, 1, 1, '2018-06-21 10:32:01'),
(95, 1, 1, 1, 1, '2018-06-21 10:32:32'),
(96, 1, 1, 1, 1, '2018-06-21 10:33:02'),
(97, 1, 1, 1, 1, '2018-06-21 10:33:33'),
(98, 1, 1, 1, 1, '2018-06-21 10:34:02'),
(99, 1, 1, 1, 1, '2018-06-21 10:34:31'),
(100, 1, 1, 1, 1, '2018-06-22 09:01:00'),
(101, 1, 1, 1, 1, '2018-06-22 09:01:31'),
(102, 1, 1, 1, 1, '2018-06-22 09:02:00'),
(103, 1, 1, 1, 1, '2018-06-22 09:02:30'),
(104, 1, 1, 1, 1, '2018-06-22 09:03:00'),
(105, 1, 1, 1, 1, '2018-06-22 09:03:30'),
(106, 1, 1, 1, 1, '2018-06-22 09:04:01'),
(107, 1, 1, 1, 1, '2018-06-22 09:04:31'),
(108, 1, 1, 1, 1, '2018-06-22 09:05:01'),
(109, 1, 1, 1, 1, '2018-06-22 09:05:32'),
(110, 1, 1, 1, 1, '2018-06-22 09:06:01'),
(111, 1, 1, 1, 1, '2018-06-22 09:06:31'),
(112, 1, 1, 1, 1, '2018-06-22 09:07:02'),
(113, 1, 1, 1, 1, '2018-06-22 09:07:33'),
(114, 1, 1, 1, 1, '2018-06-22 09:08:02'),
(115, 1, 1, 1, 1, '2018-06-22 09:08:33'),
(116, 0, 1, 0, 1, '2018-06-22 09:09:02'),
(117, 0, 1, 0, 1, '2018-06-22 09:09:32'),
(118, 0, 1, 0, 1, '2018-06-22 09:10:03'),
(119, 0, 1, 0, 1, '2018-06-22 09:10:32'),
(120, 0, 1, 0, 1, '2018-06-22 09:11:02'),
(121, 1, 1, 1, 1, '2018-06-22 09:12:44'),
(122, 1, 1, 1, 1, '2018-06-22 09:13:14'),
(123, 1, 1, 1, 1, '2018-06-22 09:13:44'),
(124, 1, 1, 1, 1, '2018-06-22 09:14:14'),
(125, 1, 1, 1, 1, '2018-06-22 09:14:45'),
(126, 1, 1, 1, 1, '2018-06-22 09:15:14'),
(127, 1, 1, 1, 1, '2018-06-22 09:15:44'),
(128, 1, 1, 1, 1, '2018-06-22 09:16:15'),
(129, 1, 1, 1, 1, '2018-06-22 09:16:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `statusid` int(11) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `userguild` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `userid`, `created_date`, `statusid`, `address`, `updated_date`, `userguild`) VALUES
(1, '1', '2018-05-06', 1, 'abc', NULL, NULL),
(2, '1', '2018-05-01', 2, 'abc', NULL, NULL),
(4, '5', '2018-07-07', 3, NULL, NULL, 'f23f9523-d09b-4876-8c69-3f8b25f6d5ef'),
(7, '1', '2018-07-07', 3, NULL, NULL, '81c26581-c4de-4ff7-b692-04a1c15ab5e0'),
(8, NULL, '2018-07-07', 3, NULL, NULL, '7a6f4a52-c4c7-4fe8-b0d7-207cceebc03c');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_orderproduct`
--

CREATE TABLE `tbl_orderproduct` (
  `id` int(11) NOT NULL,
  `productid` int(11) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `orderquantity` int(11) DEFAULT NULL,
  `orderprice` decimal(10,0) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_orderproduct`
--

INSERT INTO `tbl_orderproduct` (`id`, `productid`, `orderid`, `orderquantity`, `orderprice`, `created_date`, `updated_date`) VALUES
(1, 3, 1, 5, '31000', '2018-05-06', NULL),
(2, 4, 1, 3, '15000', '2018-05-06', NULL),
(5, 3, 4, 1, '47000', '2018-07-07', NULL),
(6, 4, 4, 1, '22000', '2018-07-07', NULL),
(14, 4, 7, 2, '22000', '2018-07-07', NULL),
(15, 4, 7, 2, '22000', '2018-07-07', NULL),
(16, 4, 7, 2, '22000', '2018-07-07', NULL),
(17, 5, 7, 2, '53000', '2018-07-07', NULL),
(18, 5, 7, 2, '53000', '2018-07-07', NULL),
(19, 1, 7, 4, '16000', '2018-07-07', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productid` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `shortdesc` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `createddate` date NOT NULL,
  `categoryid` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `price` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productid`, `name`, `shortdesc`, `image`, `createddate`, `categoryid`, `amount`, `price`) VALUES
(1, 'Cà chua beef Đà lạt loại 1 Vineco', 'Cà chua beef Đà lạt loại 1 Vineco có hương vị chua dịu, thơm ngon hấp dẫn', 'https://media.static-adayroi.com/240_240/70/h09/hab/9548565119006.jpg', '2018-06-12', 2, 20, '16000'),
(3, 'Xoài Đài Loan trái dài', 'Xoài dài giống Đài Loan ăn rất giòn và thơm', 'https://media.static-adayroi.com/240_240/70/h5e/hb9/12801674641438.jpg', '2018-06-12', 2, 12, '47000'),
(4, 'Bí đỏ hồ lô L1 MT', 'Giống bí đỏ dài cho ra quả to, thon dài, đặc thịt và vị ngọt bùi đậm đà', 'https://media.static-adayroi.com/240_240/70/h28/h77/11563958730782.jpg', '2018-06-14', 2, 50, '22000'),
(5, 'Xoài cát chu', 'Xoài Cát Chu là một loại trái cây nổi tiếng, có hình thon dài, khi chín vỏ màu vàng nhạt, hương vị thơm ngon', 'https://media.static-adayroi.com/240_240/70/h92/h42/9487846080542.jpg', '2018-06-11', 2, 30, '53000'),
(6, 'Táo Empire Mỹ', 'Táo Empire có vỏ mịn, bóng, màu đỏ đậm bắt mắt và đặc biệt là phần thịt màu vàng kem, độ giòn rất cao, vị ngọt đậm đà, mùi thơm dịu nhẹ', 'https://media.static-adayroi.com/240_240/70/h47/h5b/9537421344798.jpg', '2018-06-13', 3, 24, '106000'),
(7, 'Táo Breeze New Zealand', 'Táo Breeze New Zealand có quả to đều, bên ngoài quả màu đỏ tươi, bên trong thịt trắng, nhiều nước, thơm ngon đặc trưng', 'https://media.static-adayroi.com/240_240/70/h0b/h47/9535109136414.jpg', '2018-06-14', 3, 25, '92000'),
(8, 'Táo Ambrosia New Zealand', 'Táo Ambrosia có hàm lượng axit thấp, là một lựa chọn tốt cho trẻ em và người già vì dễ tiêu hóa', 'https://media.static-adayroi.com/240_240/70/h3d/hf1/9487271428126.jpg', '2018-06-16', 3, 45, '114000'),
(9, 'Lê đỏ Nam Phi', 'Lê đỏ Nam Phi do VinMart phân phối có vị ngọt dịu, rất giòn và thơm, ngon hơn khi ăn lạnh vào thời tiết nóng bức', 'https://media.static-adayroi.com/240_240/70/h04/h74/9584517054494.jpg', '2018-06-14', 3, 56, '49000'),
(10, 'Riềng L1 VinEco', 'Riềng là nguồn cung cấp dồi dào các chất natri, sắt, chất xơ, nitamin A, C, flavanoid', 'https://media.static-adayroi.com/240_240/70/images/h2e/h7c/13958811844638.jpg', '2018-06-13', 4, 100, '12000'),
(11, 'Khoai tây vàng Đà Lạt Loại 1 VinEco', 'Khoai tây là loại thực phẩm chứa các vitamin A, C, B, các khoáng chất như phốt pho, canxi, sắt, kali, ngoài ra còn có chất xơ và protein', 'https://media.static-adayroi.com/240_240/70/h54/h09/12802266628126.jpg', '2018-06-15', 4, 34, '30000'),
(12, 'Su hào tím L1 Vineco', 'Su hào là thực phẩm chứa nhiều chất dinh dưỡng như: đường, sợi thô, canxi, phốt pho, sắt, vitamin C, axit nicotic', 'https://media.static-adayroi.com/240_240/70/h34/h73/12863211241502.jpg', '2018-06-12', 4, 155, '25000'),
(13, 'Khoai môn DL L1 MT', 'Sản phẩm mang đến chất lượng thơm ngon, cho khoai môn sáp có vị bở, ngọt, thơm dẻo sau khi chế biến thành thành phẩm', 'https://media.static-adayroi.com/240_240/70/h4f/hd3/9623006969886.jpg', '2018-06-14', 4, 56, '62000'),
(14, 'Sả L1 Vineco', 'Ở Việt Nam, sả thường được dùng để ăn sống kèm một số món ăn giúp làm tăng thêm hương vị', 'https://media.static-adayroi.com/240_240/70/hea/heb/12864376799262.jpg', '2018-06-12', 4, 45, '30000'),
(15, 'Khoai tây hồng L1 VinEco', 'Khoai tây hồng là loại thực phẩm chứa các vitamin A, C, B, các khoáng chất như phốt pho, canxi, sắt, kali, ngoài ra còn có chất xơ và protein', 'https://media.static-adayroi.com/240_240/70/h38/h62/12804528701470.jpg', '2018-06-15', 4, 34, '25000'),
(16, 'Giá đỗ L1 Vineco', 'Giá đỗ là loại thực phẩm tốt cho sức khỏe, trong giá đỗ có chứa các chất dinh dưỡng, nhiều vitamin C và E, lượng calo thấp', 'https://media.static-adayroi.com/240_240/70/h7b/h33/12863159894046.jpg', '2018-06-13', 5, 200, '14000'),
(17, 'Ớt ngọt (ớt chuông) màu loại 1 VinEco', 'Ớt chuông là loại quả có hàm lượng vitamin C rất cao', 'https://media.static-adayroi.com/240_240/70/heb/h3e/9487537176606.jpg', '2018-06-15', 5, 150, '39000'),
(18, 'Cà chua beef loại 1 VinEco', 'Cà chua được xem là một trong những món ăn tốt cho sức khỏe', 'https://media.static-adayroi.com/240_240/70/heb/h3e/9487537176606.jpg', '2018-06-19', 5, 56, '31000'),
(19, 'Lặc lày (mướp Nhật) L1 Vineco', 'Quả lặc lày ngắn khoảng từ 10 - 15cm, màu xanh sọc trắng, thuôn dài đặc trưng', 'https://media.static-adayroi.com/240_240/70/hc8/h8c/12864049217566.jpg', '2018-06-17', 5, 56, '23000'),
(20, 'Cà tím dài L1 VinEco', 'Quả là loại quả nhiều cùi thịt, thuôn dài có màu tím đậm', 'https://media.static-adayroi.com/240_240/70/h4d/h1b/12863134138398.jpg', '2018-06-13', 5, 120, '17000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_role`
--

CREATE TABLE `tbl_role` (
  `id` int(11) NOT NULL,
  `rolename` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `desc` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_date` date NOT NULL,
  `updated_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_role`
--

INSERT INTO `tbl_role` (`id`, `rolename`, `desc`, `created_date`, `updated_date`) VALUES
(1, 'ROLE_ADMIN', 'admin', '2018-04-09', '2018-04-10'),
(2, 'ROLE_USER', 'user', '2018-04-02', '2018-04-12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_soilmoisture`
--

CREATE TABLE `tbl_soilmoisture` (
  `id` int(11) NOT NULL,
  `value` float NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_soilmoisture`
--

INSERT INTO `tbl_soilmoisture` (`id`, `value`, `date`) VALUES
(1, 0, '2018-06-20 16:35:45'),
(2, 0, '2018-06-20 16:36:12'),
(3, 0, '2018-06-20 16:36:42'),
(4, 0, '2018-06-20 16:37:12'),
(5, 0, '2018-06-20 16:37:56'),
(6, 0, '2018-06-20 16:38:57'),
(7, 0, '2018-06-20 16:39:26'),
(8, 0, '2018-06-20 16:39:56'),
(9, 0, '2018-06-20 16:40:26'),
(10, 0, '2018-06-21 09:48:51'),
(11, 0, '2018-06-21 09:49:21'),
(12, 0, '2018-06-21 09:49:51'),
(13, 0, '2018-06-21 09:50:22'),
(14, 0, '2018-06-21 09:50:51'),
(15, 0, '2018-06-21 09:51:21'),
(16, 0, '2018-06-21 09:51:52'),
(17, 0, '2018-06-21 09:52:21'),
(18, 0, '2018-06-21 09:52:52'),
(19, 0, '2018-06-21 09:53:25'),
(20, 0, '2018-06-21 09:53:55'),
(21, 0, '2018-06-21 09:54:23'),
(22, 0, '2018-06-21 09:54:52'),
(23, 0, '2018-06-21 09:55:21'),
(24, 0, '2018-06-21 09:55:51'),
(25, 0, '2018-06-21 09:56:23'),
(26, 0, '2018-06-21 09:56:52'),
(27, 0, '2018-06-21 09:57:26'),
(28, 0, '2018-06-21 09:57:53'),
(29, 0, '2018-06-21 09:58:22'),
(30, 0, '2018-06-21 09:58:53'),
(31, 0, '2018-06-21 09:59:23'),
(32, 0, '2018-06-21 09:59:53'),
(33, 0, '2018-06-21 10:00:23'),
(34, 0, '2018-06-21 10:00:53'),
(35, 0, '2018-06-21 10:01:22'),
(36, 0, '2018-06-21 10:01:54'),
(37, 0, '2018-06-21 10:02:23'),
(38, 0, '2018-06-21 10:02:53'),
(39, 0, '2018-06-21 10:03:22'),
(40, 0, '2018-06-21 10:03:53'),
(41, 0, '2018-06-21 10:04:22'),
(42, 0, '2018-06-21 10:04:53'),
(43, 0, '2018-06-21 10:05:23'),
(44, 0, '2018-06-21 10:05:53'),
(45, 0, '2018-06-21 10:06:24'),
(46, 0, '2018-06-21 10:06:53'),
(47, 0, '2018-06-21 10:07:28'),
(48, 0, '2018-06-21 10:08:23'),
(49, 0, '2018-06-21 10:08:53'),
(50, 0, '2018-06-21 10:09:23'),
(51, 0, '2018-06-21 10:09:53'),
(52, 0, '2018-06-21 10:10:23'),
(53, 0, '2018-06-21 10:10:53'),
(54, 0, '2018-06-21 10:11:23'),
(55, 0, '2018-06-21 10:11:54'),
(56, 0, '2018-06-21 10:12:23'),
(57, 0, '2018-06-21 10:12:54'),
(58, 0, '2018-06-21 10:13:25'),
(59, 0, '2018-06-21 10:13:54'),
(60, 0, '2018-06-21 10:14:24'),
(61, 0, '2018-06-21 10:14:54'),
(62, 0, '2018-06-21 10:15:24'),
(63, 0, '2018-06-21 10:15:58'),
(64, 0, '2018-06-21 10:16:25'),
(65, 0, '2018-06-21 10:16:56'),
(66, 0, '2018-06-21 10:17:25'),
(67, 0, '2018-06-21 10:17:55'),
(68, 0, '2018-06-21 10:18:25'),
(69, 0, '2018-06-21 10:18:57'),
(70, 0, '2018-06-21 10:19:25'),
(71, 0, '2018-06-21 10:19:54'),
(72, 0, '2018-06-21 10:20:25'),
(73, 0, '2018-06-21 10:20:55'),
(74, 0, '2018-06-21 10:21:25'),
(75, 0, '2018-06-21 10:21:55'),
(76, 0, '2018-06-21 10:22:27'),
(77, 0, '2018-06-21 10:22:56'),
(78, 0, '2018-06-21 10:23:25'),
(79, 0, '2018-06-21 10:23:56'),
(80, 0, '2018-06-21 10:24:25'),
(81, 0, '2018-06-21 10:24:55'),
(82, 0, '2018-06-21 10:25:26'),
(83, 0, '2018-06-21 10:25:55'),
(84, 0, '2018-06-21 10:26:25'),
(85, 0, '2018-06-21 10:26:56'),
(86, 0, '2018-06-21 10:27:27'),
(87, 0, '2018-06-21 10:27:56'),
(88, 0, '2018-06-21 10:28:26'),
(89, 0, '2018-06-21 10:28:56'),
(90, 0, '2018-06-21 10:29:26'),
(91, 0, '2018-06-21 10:29:57'),
(92, 0, '2018-06-21 10:30:31'),
(93, 0, '2018-06-21 10:31:01'),
(94, 0, '2018-06-21 10:32:01'),
(95, 0, '2018-06-21 10:32:32'),
(96, 0, '2018-06-21 10:33:02'),
(97, 0, '2018-06-21 10:33:33'),
(98, 0, '2018-06-21 10:34:02'),
(99, 0, '2018-06-21 10:34:31'),
(100, 43, '2018-06-22 09:01:00'),
(101, 43, '2018-06-22 09:01:31'),
(102, 43, '2018-06-22 09:02:00'),
(103, 43, '2018-06-22 09:02:30'),
(104, 44, '2018-06-22 09:03:00'),
(105, 43, '2018-06-22 09:03:30'),
(106, 44, '2018-06-22 09:04:01'),
(107, 44, '2018-06-22 09:04:31'),
(108, 44, '2018-06-22 09:05:01'),
(109, 44, '2018-06-22 09:05:32'),
(110, 44, '2018-06-22 09:06:01'),
(111, 44, '2018-06-22 09:06:31'),
(112, 44, '2018-06-22 09:07:02'),
(113, 44, '2018-06-22 09:07:33'),
(114, 44, '2018-06-22 09:08:02'),
(115, 44, '2018-06-22 09:08:33'),
(116, 45, '2018-06-22 09:09:02'),
(117, 44, '2018-06-22 09:09:32'),
(118, 44, '2018-06-22 09:10:03'),
(119, 45, '2018-06-22 09:10:32'),
(120, 45, '2018-06-22 09:11:02'),
(121, 0, '2018-06-22 09:12:44'),
(122, 0, '2018-06-22 09:13:14'),
(123, 0, '2018-06-22 09:13:44'),
(124, 0, '2018-06-22 09:14:14'),
(125, 0, '2018-06-22 09:14:45'),
(126, 0, '2018-06-22 09:15:14'),
(127, 0, '2018-06-22 09:15:44'),
(128, 0, '2018-06-22 09:16:15'),
(129, 0, '2018-06-22 09:16:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_status`
--

CREATE TABLE `tbl_status` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_date` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_status`
--

INSERT INTO `tbl_status` (`id`, `name`, `desc`, `created_date`, `updated_date`) VALUES
(1, 'đã giao hàng', '', NULL, NULL),
(2, 'đang giao hàng', '', NULL, NULL),
(3, 'chưa thanh toán', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_temperature`
--

CREATE TABLE `tbl_temperature` (
  `id` int(11) NOT NULL,
  `value` float NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(254) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_temperature`
--

INSERT INTO `tbl_temperature` (`id`, `value`, `date`, `status`) VALUES
(1, 26, '2018-06-20 16:35:45', 'Device is ready'),
(2, 26, '2018-06-20 16:36:12', 'Device is ready'),
(3, 26, '2018-06-20 16:36:42', 'Device is ready'),
(4, 26, '2018-06-20 16:37:12', 'Device is ready'),
(5, 26, '2018-06-20 16:37:56', 'Device is ready'),
(6, 26, '2018-06-20 16:38:57', 'Device is ready'),
(7, 26, '2018-06-20 16:39:26', 'Device is ready'),
(8, 26, '2018-06-20 16:39:56', 'Device is ready'),
(9, 26, '2018-06-20 16:40:26', 'Device is ready'),
(10, 27, '2018-06-21 09:48:51', 'Device is ready'),
(11, 27, '2018-06-21 09:49:21', 'Device is ready'),
(12, 29, '2018-06-21 09:49:51', 'Device is ready'),
(13, 27, '2018-06-21 09:50:22', 'Device is ready'),
(14, 30, '2018-06-21 09:50:51', 'Device is ready'),
(15, 29, '2018-06-21 09:51:21', 'Device is ready'),
(16, 27, '2018-06-21 09:51:52', 'Device is ready'),
(17, 27, '2018-06-21 09:52:21', 'Device is ready'),
(18, 25, '2018-06-21 09:52:52', 'Device is ready'),
(19, 25, '2018-06-21 09:53:25', 'Device is ready'),
(20, 25, '2018-06-21 09:53:55', 'Device is ready'),
(21, 25, '2018-06-21 09:54:23', 'Device is ready'),
(22, 25, '2018-06-21 09:54:52', 'Device is ready'),
(23, 25, '2018-06-21 09:55:21', 'Device is ready'),
(24, 25, '2018-06-21 09:55:51', 'Device is ready'),
(25, 25, '2018-06-21 09:56:23', 'Device is ready'),
(26, 25, '2018-06-21 09:56:52', 'Device is ready'),
(27, 25, '2018-06-21 09:57:26', 'Device is ready'),
(28, 25, '2018-06-21 09:57:53', 'Device is ready'),
(29, 25, '2018-06-21 09:58:22', 'Device is ready'),
(30, 25, '2018-06-21 09:58:53', 'Device is ready'),
(31, 25, '2018-06-21 09:59:23', 'Device is ready'),
(32, 25, '2018-06-21 09:59:53', 'Device is ready'),
(33, 25, '2018-06-21 10:00:23', 'Device is ready'),
(34, 25, '2018-06-21 10:00:53', 'Device is ready'),
(35, 25, '2018-06-21 10:01:22', 'Device is ready'),
(36, 25, '2018-06-21 10:01:54', 'Device is ready'),
(37, 25, '2018-06-21 10:02:23', 'Device is ready'),
(38, 25, '2018-06-21 10:02:53', 'Device is ready'),
(39, 25, '2018-06-21 10:03:22', 'Device is ready'),
(40, 25, '2018-06-21 10:03:53', 'Device is ready'),
(41, 25, '2018-06-21 10:04:22', 'Device is ready'),
(42, 25, '2018-06-21 10:04:53', 'Device is ready'),
(43, 25, '2018-06-21 10:05:23', 'Device is ready'),
(44, 25, '2018-06-21 10:05:53', 'Device is ready'),
(45, 25, '2018-06-21 10:06:24', 'Device is ready'),
(46, 25, '2018-06-21 10:06:53', 'Device is ready'),
(47, 25, '2018-06-21 10:07:28', 'Device is ready'),
(48, 25, '2018-06-21 10:08:23', 'Device is ready'),
(49, 25, '2018-06-21 10:08:53', 'Device is ready'),
(50, 25, '2018-06-21 10:09:23', 'Device is ready'),
(51, 25, '2018-06-21 10:09:53', 'Device is ready'),
(52, 25, '2018-06-21 10:10:23', 'Device is ready'),
(53, 25, '2018-06-21 10:10:53', 'Device is ready'),
(54, 25, '2018-06-21 10:11:23', 'Device is ready'),
(55, 24, '2018-06-21 10:11:54', 'Device is ready'),
(56, 25, '2018-06-21 10:12:23', 'Device is ready'),
(57, 25, '2018-06-21 10:12:54', 'Device is ready'),
(58, 25, '2018-06-21 10:13:25', 'Device is ready'),
(59, 25, '2018-06-21 10:13:54', 'Device is ready'),
(60, 25, '2018-06-21 10:14:24', 'Device is ready'),
(61, 25, '2018-06-21 10:14:54', 'Device is ready'),
(62, 25, '2018-06-21 10:15:24', 'Device is ready'),
(63, 25, '2018-06-21 10:15:58', 'Device is ready'),
(64, 25, '2018-06-21 10:16:25', 'Device is ready'),
(65, 25, '2018-06-21 10:16:56', 'Device is ready'),
(66, 25, '2018-06-21 10:17:25', 'Device is ready'),
(67, 25, '2018-06-21 10:17:55', 'Device is ready'),
(68, 25, '2018-06-21 10:18:25', 'Device is ready'),
(69, 25, '2018-06-21 10:18:57', 'Device is ready'),
(70, 25, '2018-06-21 10:19:25', 'Device is ready'),
(71, 25, '2018-06-21 10:19:54', 'Device is ready'),
(72, 25, '2018-06-21 10:20:25', 'Device is ready'),
(73, 25, '2018-06-21 10:20:55', 'Device is ready'),
(74, 25, '2018-06-21 10:21:25', 'Device is ready'),
(75, 25, '2018-06-21 10:21:55', 'Device is ready'),
(76, 25, '2018-06-21 10:22:27', 'Device is ready'),
(77, 25, '2018-06-21 10:22:56', 'Device is ready'),
(78, 24, '2018-06-21 10:23:25', 'Device is ready'),
(79, 25, '2018-06-21 10:23:56', 'Device is ready'),
(80, 25, '2018-06-21 10:24:25', 'Device is ready'),
(81, 25, '2018-06-21 10:24:55', 'Device is ready'),
(82, 25, '2018-06-21 10:25:26', 'Device is ready'),
(83, 25, '2018-06-21 10:25:55', 'Device is ready'),
(84, 25, '2018-06-21 10:26:25', 'Device is ready'),
(85, 25, '2018-06-21 10:26:56', 'Device is ready'),
(86, 25, '2018-06-21 10:27:27', 'Device is ready'),
(87, 25, '2018-06-21 10:27:56', 'Device is ready'),
(88, 25, '2018-06-21 10:28:26', 'Device is ready'),
(89, 25, '2018-06-21 10:28:56', 'Device is ready'),
(90, 25, '2018-06-21 10:29:26', 'Device is ready'),
(91, 25, '2018-06-21 10:29:57', 'Device is ready'),
(92, 25, '2018-06-21 10:30:31', 'Device is ready'),
(93, 25, '2018-06-21 10:31:01', 'Device is ready'),
(94, 25, '2018-06-21 10:32:01', 'Device is ready'),
(95, 25, '2018-06-21 10:32:32', 'Device is ready'),
(96, 25, '2018-06-21 10:33:02', 'Device is ready'),
(97, 25, '2018-06-21 10:33:33', 'Device is ready'),
(98, 25, '2018-06-21 10:34:02', 'Device is ready'),
(99, 25, '2018-06-21 10:34:31', 'Device is ready'),
(100, 27, '2018-06-22 09:01:00', 'Device is ready'),
(101, 27, '2018-06-22 09:01:31', 'Device is ready'),
(102, 27, '2018-06-22 09:02:00', 'Device is ready'),
(103, 27, '2018-06-22 09:02:30', 'Device is ready'),
(104, 27, '2018-06-22 09:03:00', 'Device is ready'),
(105, 27, '2018-06-22 09:03:30', 'Device is ready'),
(106, 27, '2018-06-22 09:04:01', 'Device is ready'),
(107, 27, '2018-06-22 09:04:31', 'Device is ready'),
(108, 26, '2018-06-22 09:05:01', 'Device is ready'),
(109, 27, '2018-06-22 09:05:32', 'Device is ready'),
(110, 27, '2018-06-22 09:06:01', 'Device is ready'),
(111, 27, '2018-06-22 09:06:31', 'Device is ready'),
(112, 27, '2018-06-22 09:07:02', 'Device is ready'),
(113, 27, '2018-06-22 09:07:33', 'Device is ready'),
(114, 27, '2018-06-22 09:08:02', 'Device is ready'),
(115, 27, '2018-06-22 09:08:33', 'Device is ready'),
(116, 26, '2018-06-22 09:09:02', 'Device is ready'),
(117, 27, '2018-06-22 09:09:32', 'Device is ready'),
(118, 26, '2018-06-22 09:10:03', 'Device is ready'),
(119, 26, '2018-06-22 09:10:32', 'Device is ready'),
(120, 27, '2018-06-22 09:11:02', 'Device is ready'),
(121, 28, '2018-06-22 09:12:44', 'Device is ready'),
(122, 28, '2018-06-22 09:13:14', 'Device is ready'),
(123, 29, '2018-06-22 09:13:44', 'Device is ready'),
(124, 29, '2018-06-22 09:14:14', 'Device is ready'),
(125, 29, '2018-06-22 09:14:45', 'Device is ready'),
(126, 29, '2018-06-22 09:15:14', 'Device is ready'),
(127, 29, '2018-06-22 09:15:44', 'Device is ready'),
(128, 28, '2018-06-22 09:16:15', 'Device is ready'),
(129, 28, '2018-06-22 09:16:48', 'Device is ready');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(2002) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordhashed` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `imageurl` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `fullname`, `email`, `passwordhashed`, `created_date`, `updated_date`, `imageurl`, `address`, `gender`, `phone`) VALUES
('1', 'abc', 'vi trung kiên', 'abc@gmail.com', '$2a$10$FLMAXz6nsk9iYr482EcXF.b4t2AD7vJ7HiwqYPRzftVdbKn.vENGK', '2018-04-29', '2018-06-12', '/link/1528285535-2f5c47448fdae0bd56323f206d9fc1f2_46-7735-1480135132gif.gif', 'asdasd', 'Male', '213123123123'),
('11', 'Kiên Trung Vi', NULL, NULL, NULL, '2018-05-26', '2018-05-26', 'https://graph.facebook.com/v2.5/841550332695892/picture', NULL, 'Male', NULL),
('12', 'Nguyễn Phú Cường', NULL, NULL, NULL, '2018-06-11', NULL, 'https://graph.facebook.com/v2.5/801069846752939/picture', '', 'Male', NULL),
('14', 'quay', 'quay', 'quay@gmail.com', '$2a$10$BHeq.Uemm7UYEjXnM5HAV.4asegmfwo7d1e16V770ljfvQ5ZDCBNW', '2018-06-21', '2018-06-21', '/link/1529549179-download.jpg', 'abc', 'Male', NULL),
('2', 'admin', 'admin', 'admin@gmail.com', '$2a$10$G1y1rTDKEoba0v5cit3rq.IC349Ukt1qUTBH7Gdf0QfqeYYmpUVWS', '2018-04-29', '2018-06-11', '/link/1528177697-default-user.png', 'số nhà 33, ngõ 40/2, tạ quang bửu', 'Male', NULL),
('5', 'kiendz', 'kiendz', 'kiendz@gmail.com', '$2a$10$Sf6D9AwU2wzZFnceHJ8dQ.vYv0bWi.iBpHzEypk091LImougFRcdm', '2018-05-12', '2018-05-12', '/link/1528177697-default-user.png', NULL, 'Male', NULL),
('6', 'abcd', 'abcd', 'abcd@gmail.com', '$2a$10$EcRfz/CigWE/V2gR9pKDn.ztsaHEWXxOd/y6WinKE6wItFSgcCIOu', '2018-05-25', '2018-05-25', NULL, NULL, '0', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_userrole`
--

CREATE TABLE `tbl_userrole` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_userrole`
--

INSERT INTO `tbl_userrole` (`id`, `user_id`, `role_id`, `status`) VALUES
(1, 1, 2, '1'),
(2, 2, 1, '1'),
(3, 5, 2, '1'),
(4, 6, 2, '1'),
(5, 7, 2, '1'),
(6, 8, 2, '1'),
(7, 9, 2, '1'),
(8, 10, 2, '1'),
(9, 11, 2, '1'),
(10, 12, 2, '1'),
(11, 13, 2, '1'),
(12, 14, 2, '1');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Chỉ mục cho bảng `tbl_humidity`
--
ALTER TABLE `tbl_humidity`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_led`
--
ALTER TABLE `tbl_led`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_orderproduct`
--
ALTER TABLE `tbl_orderproduct`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productid`);

--
-- Chỉ mục cho bảng `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_soilmoisture`
--
ALTER TABLE `tbl_soilmoisture`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_temperature`
--
ALTER TABLE `tbl_temperature`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_userrole`
--
ALTER TABLE `tbl_userrole`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_humidity`
--
ALTER TABLE `tbl_humidity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT cho bảng `tbl_led`
--
ALTER TABLE `tbl_led`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_orderproduct`
--
ALTER TABLE `tbl_orderproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_soilmoisture`
--
ALTER TABLE `tbl_soilmoisture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT cho bảng `tbl_status`
--
ALTER TABLE `tbl_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_temperature`
--
ALTER TABLE `tbl_temperature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT cho bảng `tbl_userrole`
--
ALTER TABLE `tbl_userrole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
