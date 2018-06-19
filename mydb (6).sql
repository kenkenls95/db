-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 18, 2018 lúc 05:15 PM
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
(1, 16, '2018-06-18 00:47:44', 'Device is ready'),
(2, 16, '2018-06-18 00:48:14', 'Device is ready'),
(3, 15, '2018-06-18 00:48:43', 'Device is ready'),
(4, 15, '2018-06-18 00:49:14', 'Device is ready'),
(5, 16, '2018-06-18 00:49:44', 'Device is ready'),
(6, 16, '2018-06-18 00:50:14', 'Device is ready'),
(7, 16, '2018-06-18 00:50:44', 'Device is ready'),
(8, 16, '2018-06-18 00:51:14', 'Device is ready'),
(9, 16, '2018-06-18 00:51:44', 'Device is ready'),
(10, 16, '2018-06-18 00:52:14', 'Device is ready'),
(11, 16, '2018-06-18 00:52:44', 'Device is ready'),
(12, 16, '2018-06-18 00:53:13', 'Device is ready'),
(13, 15, '2018-06-18 00:53:43', 'Device is ready'),
(14, 15, '2018-06-18 00:54:13', 'Device is ready'),
(15, 15, '2018-06-18 00:54:43', 'Device is ready'),
(16, 16, '2018-06-18 00:55:13', 'Device is ready'),
(17, 17, '2018-06-18 00:55:43', 'Device is ready'),
(18, 17, '2018-06-18 00:56:13', 'Device is ready'),
(19, 17, '2018-06-18 00:56:43', 'Device is ready'),
(20, 17, '2018-06-18 00:57:14', 'Device is ready'),
(21, 17, '2018-06-18 00:57:44', 'Device is ready'),
(22, 16, '2018-06-18 00:58:13', 'Device is ready'),
(23, 16, '2018-06-18 00:58:44', 'Device is ready'),
(24, 16, '2018-06-18 00:59:13', 'Device is ready'),
(25, 15, '2018-06-18 00:59:43', 'Device is ready'),
(26, 16, '2018-06-18 01:00:13', 'Device is ready'),
(27, 16, '2018-06-18 01:00:43', 'Device is ready');

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
(1, 1, 1, 1, 1, '2018-06-18 00:47:44'),
(2, 0, 0, 0, 0, '2018-06-18 00:48:14'),
(3, 1, 1, 1, 1, '2018-06-18 00:48:43'),
(4, 1, 1, 1, 1, '2018-06-18 00:49:14'),
(5, 1, 1, 1, 1, '2018-06-18 00:49:44'),
(6, 1, 1, 1, 1, '2018-06-18 00:50:14'),
(7, 1, 1, 1, 1, '2018-06-18 00:50:44'),
(8, 1, 1, 1, 1, '2018-06-18 00:51:14'),
(9, 1, 1, 1, 1, '2018-06-18 00:51:44'),
(10, 1, 1, 1, 1, '2018-06-18 00:52:14'),
(11, 1, 1, 1, 1, '2018-06-18 00:52:44'),
(12, 1, 1, 1, 1, '2018-06-18 00:53:13'),
(13, 1, 1, 1, 1, '2018-06-18 00:53:43'),
(14, 1, 1, 1, 1, '2018-06-18 00:54:13'),
(15, 1, 1, 1, 1, '2018-06-18 00:54:43'),
(16, 1, 1, 1, 1, '2018-06-18 00:55:13'),
(17, 1, 1, 1, 1, '2018-06-18 00:55:43'),
(18, 1, 1, 1, 1, '2018-06-18 00:56:13'),
(19, 1, 1, 1, 1, '2018-06-18 00:56:43'),
(20, 1, 1, 1, 1, '2018-06-18 00:57:14'),
(21, 1, 1, 1, 1, '2018-06-18 00:57:44'),
(22, 1, 1, 1, 1, '2018-06-18 00:58:13'),
(23, 1, 1, 1, 1, '2018-06-18 00:58:44'),
(24, 1, 1, 1, 1, '2018-06-18 00:59:13'),
(25, 1, 1, 1, 1, '2018-06-18 00:59:43'),
(26, 1, 1, 1, 1, '2018-06-18 01:00:13'),
(27, 1, 1, 1, 1, '2018-06-18 01:00:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `statusid` int(11) NOT NULL,
  `address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `userid`, `created_date`, `statusid`, `address`) VALUES
(1, 1, '2018-05-06', 1, 'abc'),
(2, 1, '2018-05-01', 2, 'abc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_orderproduct`
--

CREATE TABLE `tbl_orderproduct` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `orderquantity` int(11) NOT NULL,
  `orderprice` decimal(10,0) NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_orderproduct`
--

INSERT INTO `tbl_orderproduct` (`id`, `productid`, `orderid`, `orderquantity`, `orderprice`, `created_date`) VALUES
(1, 3, 1, 1, '31000', '2018-05-06'),
(2, 4, 1, 3, '15000', '2018-05-06'),
(3, 4, 2, 12, '12000', '2018-06-04');

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
(2, 'Bưởi năm roi túi lưới VietGap', 'Bưởi năm roi có vỏ màu xanh non, vị ngon, mọng nước', 'https://namroivinhlong.com/wp-content/uploads/2018/02/3.jpg', '2018-06-13', 2, 100, '87000'),
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
(1, -0.097752, '2018-06-18 00:47:44'),
(2, -0.097752, '2018-06-18 00:48:14'),
(3, -0.097752, '2018-06-18 00:48:43'),
(4, -0.097752, '2018-06-18 00:49:14'),
(5, -0.097752, '2018-06-18 00:49:44'),
(6, -0.097752, '2018-06-18 00:50:14'),
(7, -0.097752, '2018-06-18 00:50:44'),
(8, -0.097752, '2018-06-18 00:51:14'),
(9, -0.097752, '2018-06-18 00:51:44'),
(10, -0.097752, '2018-06-18 00:52:14'),
(11, -0.097752, '2018-06-18 00:52:44'),
(12, -0.097752, '2018-06-18 00:53:13'),
(13, -0.097752, '2018-06-18 00:53:43'),
(14, -0.097752, '2018-06-18 00:54:13'),
(15, -0.097752, '2018-06-18 00:54:43'),
(16, -0.097752, '2018-06-18 00:55:13'),
(17, -0.097752, '2018-06-18 00:55:43'),
(18, -0.097752, '2018-06-18 00:56:13'),
(19, -0.097752, '2018-06-18 00:56:43'),
(20, -0.097752, '2018-06-18 00:57:14'),
(21, -0.097752, '2018-06-18 00:57:44'),
(22, -0.097752, '2018-06-18 00:58:13'),
(23, -0.097752, '2018-06-18 00:58:44'),
(24, -0.097752, '2018-06-18 00:59:13'),
(25, -0.097752, '2018-06-18 00:59:43'),
(26, -0.097752, '2018-06-18 01:00:13'),
(27, -0.097752, '2018-06-18 01:00:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_status`
--

CREATE TABLE `tbl_status` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_status`
--

INSERT INTO `tbl_status` (`id`, `name`, `desc`) VALUES
(1, 'đã giao hàng', ''),
(2, 'đang giao hàng', '');

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
(1, 27, '2018-06-18 00:47:44', 'Device is ready'),
(2, 27, '2018-06-18 00:48:14', 'Device is ready'),
(3, 27, '2018-06-18 00:48:43', 'Device is ready'),
(4, 27, '2018-06-18 00:49:14', 'Device is ready'),
(5, 27, '2018-06-18 00:49:44', 'Device is ready'),
(6, 27, '2018-06-18 00:50:14', 'Device is ready'),
(7, 27, '2018-06-18 00:50:44', 'Device is ready'),
(8, 27, '2018-06-18 00:51:14', 'Device is ready'),
(9, 27, '2018-06-18 00:51:44', 'Device is ready'),
(10, 27, '2018-06-18 00:52:14', 'Device is ready'),
(11, 27, '2018-06-18 00:52:44', 'Device is ready'),
(12, 27, '2018-06-18 00:53:13', 'Device is ready'),
(13, 27, '2018-06-18 00:53:43', 'Device is ready'),
(14, 27, '2018-06-18 00:54:13', 'Device is ready'),
(15, 27, '2018-06-18 00:54:43', 'Device is ready'),
(16, 27, '2018-06-18 00:55:13', 'Device is ready'),
(17, 27, '2018-06-18 00:55:43', 'Device is ready'),
(18, 27, '2018-06-18 00:56:13', 'Device is ready'),
(19, 27, '2018-06-18 00:56:43', 'Device is ready'),
(20, 27, '2018-06-18 00:57:14', 'Device is ready'),
(21, 27, '2018-06-18 00:57:44', 'Device is ready'),
(22, 27, '2018-06-18 00:58:13', 'Device is ready'),
(23, 27, '2018-06-18 00:58:44', 'Device is ready'),
(24, 27, '2018-06-18 00:59:13', 'Device is ready'),
(25, 27, '2018-06-18 00:59:43', 'Device is ready'),
(26, 27, '2018-06-18 01:00:13', 'Device is ready'),
(27, 27, '2018-06-18 01:00:43', 'Device is ready');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(2002) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordhashed` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `imageurl` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `fullname`, `email`, `passwordhashed`, `created_date`, `updated_date`, `imageurl`, `address`, `gender`) VALUES
(1, 'abc', 'vi trung kiên', 'abc@gmail.com', '$2a$10$FLMAXz6nsk9iYr482EcXF.b4t2AD7vJ7HiwqYPRzftVdbKn.vENGK', '2018-04-29', '2018-06-12', '/link/1528285535-2f5c47448fdae0bd56323f206d9fc1f2_46-7735-1480135132gif.gif', 'asdasd', 'Male'),
(2, 'admin', 'admin', 'admin@gmail.com', '$2a$10$G1y1rTDKEoba0v5cit3rq.IC349Ukt1qUTBH7Gdf0QfqeYYmpUVWS', '2018-04-29', '2018-06-11', '/link/1528177697-default-user.png', 'số nhà 33, ngõ 40/2, tạ quang bửu', 'Male'),
(5, 'kiendz', 'kiendz', 'kiendz@gmail.com', '$2a$10$Sf6D9AwU2wzZFnceHJ8dQ.vYv0bWi.iBpHzEypk091LImougFRcdm', '2018-05-12', '2018-05-12', '/link/1528177697-default-user.png', NULL, 'Male'),
(6, 'abcd', 'abcd', 'abcd@gmail.com', '$2a$10$EcRfz/CigWE/V2gR9pKDn.ztsaHEWXxOd/y6WinKE6wItFSgcCIOu', '2018-05-25', '2018-05-25', NULL, NULL, '0'),
(11, 'Kiên Trung Vi', NULL, NULL, NULL, '2018-05-26', '2018-05-26', 'https://graph.facebook.com/v2.5/841550332695892/picture', NULL, 'Male'),
(12, 'Nguyễn Phú Cường', NULL, NULL, NULL, '2018-06-11', NULL, 'https://graph.facebook.com/v2.5/801069846752939/picture', '', 'Male');

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
(10, 12, 2, '1');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `tbl_led`
--
ALTER TABLE `tbl_led`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_orderproduct`
--
ALTER TABLE `tbl_orderproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `tbl_status`
--
ALTER TABLE `tbl_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_temperature`
--
ALTER TABLE `tbl_temperature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_userrole`
--
ALTER TABLE `tbl_userrole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
