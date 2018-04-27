-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 06, 2018 lúc 06:02 PM
-- Phiên bản máy phục vụ: 10.1.26-MariaDB
-- Phiên bản PHP: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dbgomsu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `payment` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `complete` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `total`, `payment`, `note`, `complete`, `created_at`, `updated_at`) VALUES
(82, 110, 1100000, 'COD', NULL, 1, '2018-03-01 22:04:45', '2018-03-01 23:28:47'),
(89, 117, 1100000, 'COD', NULL, 1, '2018-03-01 22:57:14', '2018-03-01 23:22:02'),
(90, 118, 1100000, 'COD', NULL, 1, '2018-03-01 23:01:22', '2018-03-01 23:22:01'),
(97, 125, 1000000, 'ATM', NULL, NULL, '2018-03-01 23:29:16', '2018-03-01 23:29:16'),
(98, 126, 1175000, 'COD', NULL, NULL, '2018-03-05 08:51:44', '2018-03-05 08:51:44'),
(99, 127, 1175000, 'COD', NULL, NULL, '2018-03-05 08:54:09', '2018-03-05 08:54:09'),
(100, 128, 1175000, 'COD', NULL, NULL, '2018-03-05 08:56:37', '2018-03-05 08:56:37'),
(101, 129, 1175000, 'COD', NULL, NULL, '2018-03-05 08:58:46', '2018-03-05 08:58:46'),
(102, 130, 1175000, 'COD', NULL, NULL, '2018-03-05 09:00:16', '2018-03-05 09:00:16'),
(103, 131, 1175000, 'COD', NULL, NULL, '2018-03-05 09:06:08', '2018-03-05 09:06:08'),
(104, 132, 1175000, 'COD', NULL, NULL, '2018-03-05 09:06:20', '2018-03-05 09:06:20'),
(105, 133, 1175000, 'COD', NULL, NULL, '2018-03-05 09:11:06', '2018-03-05 09:11:06'),
(106, 134, 1175000, 'COD', NULL, NULL, '2018-03-05 09:17:08', '2018-03-05 09:17:08'),
(107, 135, 1175000, 'COD', NULL, NULL, '2018-03-05 09:17:12', '2018-03-05 09:17:12'),
(108, 136, 1175000, 'COD', NULL, NULL, '2018-03-05 09:21:45', '2018-03-05 09:21:45'),
(109, 137, 75000, 'COD', NULL, NULL, '2018-03-05 14:26:10', '2018-03-05 14:26:10'),
(110, 138, 75000, 'COD', NULL, NULL, '2018-03-05 14:28:20', '2018-03-05 14:28:20'),
(111, 139, 1850000, 'COD', NULL, NULL, '2018-03-05 21:54:29', '2018-03-05 21:54:29'),
(112, 140, 1850000, 'COD', NULL, NULL, '2018-03-05 21:54:43', '2018-03-05 21:54:43'),
(113, 141, 1550000, 'COD', NULL, NULL, '2018-03-05 21:57:35', '2018-03-05 21:57:35'),
(114, 142, 1550000, 'COD', NULL, NULL, '2018-03-05 22:00:37', '2018-03-05 22:00:37'),
(115, 143, 75000, 'COD', NULL, NULL, '2018-03-05 22:06:55', '2018-03-05 22:06:55'),
(116, 144, 1550000, 'COD', NULL, NULL, '2018-03-05 22:08:59', '2018-03-05 22:08:59'),
(117, 145, 75000, 'COD', NULL, NULL, '2018-03-05 22:22:31', '2018-03-05 22:22:31'),
(118, 146, 1550000, 'COD', NULL, NULL, '2018-03-06 10:47:52', '2018-03-06 10:47:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_details`
--

CREATE TABLE `bill_details` (
  `id` int(11) NOT NULL,
  `id_bill` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill_details`
--

INSERT INTO `bill_details` (`id`, `id_bill`, `id_product`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(95, 82, 5, 1, 1100000, '2018-03-01 22:04:45', '2018-03-01 22:04:45'),
(104, 89, 5, 1, 1100000, '2018-03-01 22:57:14', '2018-03-01 22:57:14'),
(105, 90, 5, 1, 1100000, '2018-03-01 23:01:22', '2018-03-01 23:01:22'),
(113, 97, 7, 1, 1000000, '2018-03-01 23:29:16', '2018-03-01 23:29:16'),
(114, 112, 12, 1, 1850000, '2018-03-05 21:54:43', '2018-03-05 21:54:43'),
(115, 114, 6, 1, 1550000, '2018-03-05 22:00:37', '2018-03-05 22:00:37'),
(116, 115, 4, 1, 75000, '2018-03-05 22:06:55', '2018-03-05 22:06:55'),
(117, 116, 6, 1, 1550000, '2018-03-05 22:08:59', '2018-03-05 22:08:59'),
(118, 118, 6, 1, 1550000, '2018-03-06 10:47:52', '2018-03-06 10:47:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Ấm chén', 'Hơn 1000 mẫu ấm chén Thank Bọc đồng, In logo, Tử Sa, Giả cổ, gốm sứ sẽ làm quý khách có nhiều sự lựa chọn tốt nhất.Hơn nữa thuận lợi cho khách hàng làm đồ dùng trong nhà, quà tặng ....', NULL, '2017-11-12 15:59:43', '2018-02-08 23:59:32'),
(2, 'Bộ đồ ăn', 'Bộ đồ ăn được làm từ các chất liệu(men,gốm sứ) cao cấp sang trọng, tinh tế, mang màu trắng thuần khiết giản dị của sứ góp phần làm tôn lên vẻ đẹp của các món ăn được bày. Các sản phẩm bát đĩa men trắng  phù hợp khi dùng trong gia đình, nhà hàng, khách sạn theo phong cách truyền thống và muốn mang nét văn hóa truyền thống của dân tộc giới thiệu cho các thực khách trong nước cũng như quốc tế.', NULL, '2017-11-12 15:59:49', '2018-02-09 21:35:26'),
(3, 'Đèn sứ thấu quang', 'Đèn sứ thấu quang có thể trưng bày, làm đèn trang trí, đèn ngủ, khi bật điện lên ánh sáng xuyên qua lớp sương sứ tạo cho hình ảnh có chiều sâu, sống động đa chiều, họa tiết tinh tế lung linh huyền ảo – Chân đế đã được đấu sẵn dây điện và bóng đèn, có công tắc bật tắt khi sử dụng. Chân đế rời , dễ dàng thay bóng đèn và vệ sinh đèn khi sử dụng', NULL, '2017-11-12 15:59:55', '2018-02-09 21:36:32'),
(4, 'Lọ lộc bình', 'Lọ lộc bình phong thủy có hình dạng rất đặc trưng, thân phình to, cổ thắt lại trên miệng thường loe ra. Trong phong thủy, theo thuyết hình khí (hình nào khí nấy) thì hình dạng của lộc bình có tác dụng thu và giữ khí rất tốt, lộc bình mang ý nghĩa tượng trưng cho sự sung túc về tiền bạc, phát tài phát lộc, sự sinh sôi nảy nở, sự phát triển những điều mới mẻ, may mắn và cát khánh đồng thời nó cất giữ, bảo quản tài sản và của cải cho gia chủ. Lộc bình có nhiều hình dạng và được làm từ nhiều nguồn nguyên liệu khác nhau như đồng , gỗ , gốm sứ…', NULL, '2017-11-12 16:00:00', '2018-02-09 21:37:00'),
(5, 'Bình sứ trưng bày', 'Bình sứ trưng bày được sản xuất từ đất sét cao cấp, được nung ở lò gas trên 1200 độ C đạt đến độ sứ, màu men sáng bóng, họa tiết sắc nét, độ bền vĩnh cửu theo thời gian. Có đủ kích thước to, nhỏ khác nhau để bạn lựa chọn.\r\nBình sứ trưng bày phong thủy có thể làm quà tặng, quà biếu cho người thân bạn bè khi bắt đầu khởi nghiệp kinh doanh, buôn bán vào dịp khai trương. Hoặc những người đang trên đường lập công danh sự nghiệp, công chức, viên chức nhà nước. Đặc biệt là những người lập nghiệp trong môi trường quân đội, công an thì rất tốt, có ý nghĩa mong chủ nhân nhanh được thăng quan tiến chức.\r\nBình sứ trưng bày được sản xuất từ đất sét cao cấp, được nung ở lò gas trên 1200 độ C đạt đến độ sứ, màu men sáng bóng, họa tiết sắc nét, độ bền vĩnh cửu theo thời gian. Có đủ kích thước to, nhỏ khác nhau để bạn lựa chọn.\r\nBình sứ trưng bày phong thủy có thể làm quà tặng, quà biếu cho người thân bạn bè khi bắt đầu khởi nghiệp kinh doanh, buôn bán vào dịp khai trương. Hoặc những người đang trên đường lập công danh sự nghiệp, công chức, viên chức nhà nước. Đặc biệt là những người lập nghiệp trong môi trường quân đội, công an thì rất tốt, có ý nghĩa mong chủ nhân nhanh được thăng quan tiến chức.\r\n', NULL, '2017-11-12 16:00:04', '2018-02-09 21:38:26'),
(6, 'Đồ thờ cúng', 'Đồ thờ cúng có hoa văn truyền thống đó là lưỡng long chầu nguyệt ( rồng chầu mặt nguyệt ),đồ thờ cúng là dòng sản phẩm truyền thống làng nghề gốm sứ cổ truyền Bát Tràng. Đồ thờ cúng được sản xuất tỉ mỉ, công phu với những bàn tay khéo léo của các nghệ nhân làng nghề. Hoa văn trên  đồ thờ cúng được vẽ sắc nét và mềm mại từng chi tiết tạo nên nét sang trọng, cổ kính, sự linh thiêng và trường tồn với thời gian', NULL, '2018-02-18 10:18:16', '2018-02-18 10:18:16'),
(7, 'Bình hoa-lọ hoa', 'có thể dùng cắm hoa , lựa chọn cho khách', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idproduct` int(11) NOT NULL,
  `id_users` int(11) DEFAULT NULL,
  `rate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `comment`, `idproduct`, `id_users`, `rate`, `created_at`, `updated_at`) VALUES
(12, 'giá là bao nhiêu đây', 12, 5, '', '2018-02-18 12:31:14', '2018-02-18 12:31:14'),
(13, 'sản phẩm chúng tôi', 32, 5, '', '2018-02-19 10:33:46', '2018-02-19 10:33:46'),
(14, 'hậu nguyễn', 11, 5, '', '2018-02-20 14:24:43', '2018-02-20 14:24:43'),
(15, 'sản phẩm đẹp lắm !!', 14, 5, '', '2018-02-20 14:28:07', '2018-02-20 14:28:07'),
(17, 'tôi rất ưng bộ sản phẩm này', 4, 5, '', '2018-02-20 14:35:27', '2018-02-20 14:35:27'),
(18, 'sản phẩm hay', 12, 5, '', '2018-02-20 20:47:18', '2018-02-20 20:47:18'),
(19, 'sản phẩm chất lượng tốt', 5, 5, '', '2018-02-20 20:47:44', '2018-02-20 20:47:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `gender`, `email`, `address`, `phone_number`, `note`, `created_at`, `updated_at`) VALUES
(6, 'Linh', 'nữ', 'linh@gmail.com', 'Ngọc Khánh, Hà Nội', '01685275068', NULL, '2017-11-13 19:05:27', '2017-11-13 19:05:27'),
(7, 'Nguyễn Thị Hậu', 'nữ', 'haunt42@wru.vn', 'bỉm sơn -thanh hóa', '01695722171', NULL, '2018-02-08 22:43:36', '2018-02-08 22:43:36'),
(8, 'Nguyễn Thị Hậu', 'nam', 'haunguyen9627@gmail.com', 'bỉm sơn -thanh hóa', '01695722171', NULL, '2018-02-10 07:19:59', '2018-02-10 07:19:59'),
(9, 'Nguyễn Thị Lan', 'nữ', 'haunguyen9627@gmail.com', 'bỉm sơn thanh hóa', '01695722171', NULL, '2018-02-16 22:11:12', '2018-02-16 22:11:12'),
(10, 'Nguyễn Thị Lan', 'nữ', 'haunguyen9627@gmail.com', 'bỉm sơn thanh hóa', '01695722171', NULL, '2018-02-16 22:11:38', '2018-02-16 22:11:38'),
(12, 'Nguyễn Thị Lan', 'nữ', 'haunt42@wru.vn', '124 tây sơn', '0567890987', NULL, '2018-02-22 19:12:47', '2018-02-22 19:12:47'),
(13, 'đoàn hoàng anh', 'nữ', 'anhdth42@wru.vn', 'nghệ an', '016789799', NULL, '2018-02-23 08:38:42', '2018-02-23 08:38:42'),
(14, 'Hậu Nguyễn', 'nữ', 'anhhau9799@gmail.com', '124 tây sơn - hà nội', '1695722171', NULL, '2018-02-23 08:46:20', '2018-02-23 08:46:20'),
(15, 'Hậu Nguyễn', 'nam', 'anhhau9799@gmail.com', '124 tây sơn - hà nội', '1695722171', NULL, '2018-02-23 08:47:06', '2018-02-23 08:47:06'),
(24, 'Nguyễn Thị Hậu', 'nữ', 'ngoannt42@wru.vn', '124 tây sơn', '1234567890', NULL, '2018-02-28 23:47:30', '2018-02-28 23:47:30'),
(25, 'nguyễn thị hậu', 'nam', 'ngoannt42@wru.vn', '124 tây sơn', '123456789', NULL, '2018-02-28 23:51:07', '2018-02-28 23:51:07'),
(26, 'nguyễn thị hậu', 'nam', 'ngoannt42@wru.vn', '124 tây sơn', '123456789', NULL, '2018-02-28 23:51:34', '2018-02-28 23:51:34'),
(27, 'Trần Thị Thi', 'nữ', 'ngoannt42@wru.vn', '124 tây sơn', '01695722171', NULL, '2018-03-01 10:46:05', '2018-03-01 10:46:05'),
(28, 'Hậu Nguyễn', 'nam', 'haunguyen112797@gmail.com', 'dfghjk', '1695722171', NULL, '2018-03-01 13:18:28', '2018-03-01 13:18:28'),
(29, 'super', 'nữ', 'haunguyen112797@gmail.com', 'dsdsfsdf', '1234567890', NULL, '2018-03-01 13:25:35', '2018-03-01 13:25:35'),
(30, 'ddd', 'nam', 'haunguyen112797@gmail.com', 'fsdsdsd', '12454347', NULL, '2018-03-01 13:27:58', '2018-03-01 13:27:58'),
(31, 'ddd', 'nam', 'haunguyen112797@gmail.com', 'fsdsdsd', '12454347', NULL, '2018-03-01 13:28:00', '2018-03-01 13:28:00'),
(32, 'ddd', 'nam', 'haunguyen112797@gmail.com', 'fsdsdsd', '12454347', NULL, '2018-03-01 13:28:03', '2018-03-01 13:28:03'),
(33, 'sdsdsa', 'nam', 'haunguyen112797@gmail.com', 'dadadad', '12432435', NULL, '2018-03-01 13:28:20', '2018-03-01 13:28:20'),
(34, 'sdsdsa', 'nam', 'haunguyen112797@gmail.com', 'dadadad', '12432435', NULL, '2018-03-01 13:33:46', '2018-03-01 13:33:46'),
(35, 'sdsdsa', 'nam', 'haunguyen112797@gmail.com', 'dadadad', '12432435', NULL, '2018-03-01 13:35:08', '2018-03-01 13:35:08'),
(36, 'sdsdsa', 'nam', 'haunguyen112797@gmail.com', 'dadadad', '12432435', NULL, '2018-03-01 13:36:05', '2018-03-01 13:36:05'),
(37, 'sdsdsa', 'nam', 'haunguyen112797@gmail.com', 'dadadad', '12432435', NULL, '2018-03-01 13:37:41', '2018-03-01 13:37:41'),
(38, 'adsl', 'nam', 'haunguyen112797@gmail.com', 'rewrwerw', '13424355', NULL, '2018-03-01 13:42:52', '2018-03-01 13:42:52'),
(39, 'dsdscs', 'nam', 'haunguyen112797@gmail.com', 'c			fdsfsd', '11432423', NULL, '2018-03-01 13:45:12', '2018-03-01 13:45:12'),
(40, 'dsdscs', 'nam', 'haunguyen112797@gmail.com', 'c			fdsfsd', '11432423', NULL, '2018-03-01 13:45:58', '2018-03-01 13:45:58'),
(41, 'dsdscs', 'nam', 'haunguyen112797@gmail.com', 'c			fdsfsd', '11432423', NULL, '2018-03-01 13:46:01', '2018-03-01 13:46:01'),
(42, 'dsdscs', 'nam', 'haunguyen112797@gmail.com', 'cccfdsfsd', '11432423', NULL, '2018-03-01 13:46:09', '2018-03-01 13:46:09'),
(43, 'dsdscs', 'nam', 'haunguyen112797@gmail.com', 'cccfdsfsd', '11432423', NULL, '2018-03-01 13:46:11', '2018-03-01 13:46:11'),
(44, 'dsdscs', 'nam', 'haunguyen112797@gmail.com', 'cccfdsfsd', '11432423', NULL, '2018-03-01 13:46:14', '2018-03-01 13:46:14'),
(45, 'dsdscs', 'nam', 'haunguyen112797@gmail.com', 'cccfdsfsd', '11432423', NULL, '2018-03-01 13:46:15', '2018-03-01 13:46:15'),
(46, 'dsdscs', 'nam', 'haunguyen112797@gmail.com', 'cccfdsfsd', '11432423', NULL, '2018-03-01 13:51:58', '2018-03-01 13:51:58'),
(47, 'dsdscs', 'nam', 'haunguyen112797@gmail.com', 'cccfdsfsd', '11432423', NULL, '2018-03-01 13:52:53', '2018-03-01 13:52:53'),
(48, 'dsdscs', 'nam', 'haunguyen112797@gmail.com', 'cccfdsfsd', '11432423', NULL, '2018-03-01 13:55:00', '2018-03-01 13:55:00'),
(49, 'ga', 'nam', 'haunguyen112797@gmail.com', 'fdfdf', '124546', NULL, '2018-03-01 14:00:08', '2018-03-01 14:00:08'),
(50, 'gacsdas', 'nam', 'haunguyen112797@gmail.com', 'fdfdf', '124546', NULL, '2018-03-01 14:00:25', '2018-03-01 14:00:25'),
(51, 'gacsdas', 'nam', 'haunguyen112797@gmail.com', 'fdfdf', '124546', NULL, '2018-03-01 14:00:26', '2018-03-01 14:00:26'),
(52, 'Hậu Nguyễn', 'nam', 'haunguyen112797@gmail.com', 'fdfdf', '124546', NULL, '2018-03-01 14:00:43', '2018-03-01 14:00:43'),
(53, 'Hậu Nguyễn', 'nam', 'haunguyen112797@gmail.com', 'fdfdf', '124546', NULL, '2018-03-01 14:01:55', '2018-03-01 14:01:55'),
(54, 'Hậu Nguyễn', 'nam', 'haunguyen112797@gmail.com', 'fdfdf', '124546', NULL, '2018-03-01 14:01:59', '2018-03-01 14:01:59'),
(55, 'Hậu Nguyễn', 'nam', 'haunguyen112797@gmail.com', 'fdfdf', '124546', NULL, '2018-03-01 14:02:00', '2018-03-01 14:02:00'),
(56, 'Hậu Nguyễn', 'nam', 'haunguyen112797@gmail.com', 'fdfdf', '124546', NULL, '2018-03-01 14:02:02', '2018-03-01 14:02:02'),
(57, 'hs', 'nam', 'haunguyen112797@gmail.com', 'sdsdsd', '1214324324', NULL, '2018-03-01 14:05:40', '2018-03-01 14:05:40'),
(58, 'fsa', 'nữ', 'haunguyen112797@gmail.com', 'aaaaa', '132423', NULL, '2018-03-01 14:07:29', '2018-03-01 14:07:29'),
(59, 'da', 'nam', 'haunguyen112797@gmail.com', 'asa', '124343', NULL, '2018-03-01 14:11:37', '2018-03-01 14:11:37'),
(60, 'da', 'nam', 'haunguyen112797@gmail.com', 'dada', '16957221', NULL, '2018-03-01 14:23:42', '2018-03-01 14:23:42'),
(61, 'da', 'nam', 'haunguyen112797@gmail.com', 'dada', '16957221', NULL, '2018-03-01 14:25:16', '2018-03-01 14:25:16'),
(62, 'da', 'nam', 'haunguyen112797@gmail.com', 'dada', '16957221', NULL, '2018-03-01 14:25:18', '2018-03-01 14:25:18'),
(63, 'asdf', 'nữ', 'haunguyen112797@gmail.com', 'sdsada', '12143244', NULL, '2018-03-01 14:27:13', '2018-03-01 14:27:13'),
(64, 'asdf', 'nữ', 'haunguyen112797@gmail.com', 'sdsada', '12143244', NULL, '2018-03-01 14:27:19', '2018-03-01 14:27:19'),
(65, 'dadad', 'nam', 'haunguyen112797@gmail.com', 'dsadasd', '213231', NULL, '2018-03-01 14:27:55', '2018-03-01 14:27:55'),
(66, 'Nguyễn Thị Hậu', 'nữ', 'ngoannt42@wru.vn', 'wderttds', '234567', NULL, '2018-03-01 14:34:19', '2018-03-01 14:34:19'),
(67, 'Nguyễn Thị Hậu', 'nam', 'haunguyen112797@gmail.com', 'asdfghj', '123456', NULL, '2018-03-01 14:36:57', '2018-03-01 14:36:57'),
(68, 'Nguyễn Thị Hậu', 'nam', 'haunguyen112797@gmail.com', 'asdfghj', '123456', NULL, '2018-03-01 14:37:02', '2018-03-01 14:37:02'),
(69, 'Nguyễn Thị Hậu', 'nam', 'haunguyen112797@gmail.com', 'asdfghj', '123456', NULL, '2018-03-01 14:37:03', '2018-03-01 14:37:03'),
(70, 'Nguyễn Thị Hậu', 'nam', 'haunguyen112797@gmail.com', 'asdfghj', '123456', NULL, '2018-03-01 14:37:03', '2018-03-01 14:37:03'),
(71, 'Nguyễn Thị Hậu', 'nam', 'haunguyen112797@gmail.com', 'asdfghj', '123456', NULL, '2018-03-01 14:37:03', '2018-03-01 14:37:03'),
(72, 'Nguyễn Thị Hậu', 'nam', 'haunguyen112797@gmail.com', 'asdfghj', '123456', NULL, '2018-03-01 14:37:03', '2018-03-01 14:37:03'),
(73, 'Nguyễn Thị Hậu', 'nam', 'haunguyen112797@gmail.com', 'asdfghj', '123456', NULL, '2018-03-01 14:37:03', '2018-03-01 14:37:03'),
(74, 'Nguyễn Thị Hậu', 'nam', 'haunguyen112797@gmail.com', 'asdfghj', '123456', NULL, '2018-03-01 14:37:04', '2018-03-01 14:37:04'),
(75, 'Nguyễn Thị Hậu', 'nam', 'haunguyen112797@gmail.com', 'asdfghj', '123456', NULL, '2018-03-01 14:37:04', '2018-03-01 14:37:04'),
(76, 'Nguyễn Thị Hậu', 'nam', 'haunguyen112797@gmail.com', 'asdfghj', '123456', NULL, '2018-03-01 14:37:04', '2018-03-01 14:37:04'),
(77, 'Nguyễn Thị Hậu', 'nam', 'haunguyen112797@gmail.com', 'asdfghj', '123456', NULL, '2018-03-01 14:37:04', '2018-03-01 14:37:04'),
(78, 'Nguyễn Thị Hậu', 'nam', 'haunguyen112797@gmail.com', 'asdfghj', '123456', NULL, '2018-03-01 14:37:05', '2018-03-01 14:37:05'),
(79, 'Nguyễn Thị Hậu', 'nam', 'haunguyen112797@gmail.com', 'asdfghj', '123456', NULL, '2018-03-01 14:37:06', '2018-03-01 14:37:06'),
(80, 'Nguyễn Thị Hậu', 'nam', 'haunguyen112797@gmail.com', 'asdfghj', '123456', NULL, '2018-03-01 14:37:06', '2018-03-01 14:37:06'),
(81, 'Nguyễn Thị Hậu', 'nam', 'haunguyen112797@gmail.com', 'asdfghj', '123456', NULL, '2018-03-01 14:37:06', '2018-03-01 14:37:06'),
(82, 'Nguyễn Thị Hậu', 'nam', 'haunguyen112797@gmail.com', 'asdfghj', '123456', NULL, '2018-03-01 14:39:41', '2018-03-01 14:39:41'),
(83, 'Nguyễn Thị Hậu', 'nam', 'haunguyen112797@gmail.com', 'asdfghj', '123456', NULL, '2018-03-01 14:40:15', '2018-03-01 14:40:15'),
(84, 'Nguyễn Thị Hậu', 'nam', 'haunguyen112797@gmail.com', 'asdfghj', '123456', NULL, '2018-03-01 14:40:22', '2018-03-01 14:40:22'),
(85, 'Nguyễn Thị Hậu', 'nữ', 'haunguyen112797@gmail.com', 'asertyhui', '234567', NULL, '2018-03-01 14:41:21', '2018-03-01 14:41:21'),
(86, 'Nguyễn Thị Hậu', 'nữ', 'haunguyen112797@gmail.com', 'asertyhui', '234567', NULL, '2018-03-01 14:41:23', '2018-03-01 14:41:23'),
(87, 'Nguyễn Thị Hậu', 'nữ', 'haunguyen112797@gmail.com', 'asertyhui', '234567', NULL, '2018-03-01 14:41:23', '2018-03-01 14:41:23'),
(88, 'Nguyễn Thị Hậu', 'nữ', 'haunguyen112797@gmail.com', 'asertyhui', '234567', NULL, '2018-03-01 14:41:23', '2018-03-01 14:41:23'),
(89, 'Nguyễn Thị Hậu', 'nữ', 'haunguyen112797@gmail.com', 'asertyhui', '234567', NULL, '2018-03-01 14:41:24', '2018-03-01 14:41:24'),
(90, 'Nguyễn Thị Hậu', 'nữ', 'haunguyen112797@gmail.com', 'asertyhui', '234567', NULL, '2018-03-01 14:41:24', '2018-03-01 14:41:24'),
(91, 'Nguyễn Thị Hậu', 'nữ', 'haunguyen112797@gmail.com', 'asertyhui', '234567', NULL, '2018-03-01 14:41:24', '2018-03-01 14:41:24'),
(92, 'Nguyễn Thị Hậu', 'nữ', 'haunguyen112797@gmail.com', 'asertyhui', '234567', NULL, '2018-03-01 14:41:24', '2018-03-01 14:41:24'),
(93, 'Nguyễn Thị Hậu', 'nữ', 'haunguyen112797@gmail.com', 'asertyhui', '234567', NULL, '2018-03-01 14:41:26', '2018-03-01 14:41:26'),
(94, 'Nguyễn Thị Hậu', 'nữ', 'haunguyen112797@gmail.com', 'asertyhui', '234567', NULL, '2018-03-01 14:41:27', '2018-03-01 14:41:27'),
(95, 'Nguyễn Thị Hậu', 'nữ', 'haunguyen112797@gmail.com', 'asertyhui', '234567', NULL, '2018-03-01 14:41:27', '2018-03-01 14:41:27'),
(96, 'Nguyễn Thị Hậu', 'nữ', 'haunguyen112797@gmail.com', 'asertyhui', '234567', NULL, '2018-03-01 14:41:28', '2018-03-01 14:41:28'),
(97, 'Nguyễn Thị Hậu', 'nữ', 'haunguyen112797@gmail.com', 'asertyhui', '234567', NULL, '2018-03-01 14:41:28', '2018-03-01 14:41:28'),
(98, 'aaaa', 'nữ', 'haunguyen112797@gmail.com', 'asertyhui', '234567', NULL, '2018-03-01 14:44:08', '2018-03-01 14:44:08'),
(99, 'aaaa', 'nữ', 'haunguyen112797@gmail.com', 'asertyhui', '234567', NULL, '2018-03-01 14:45:41', '2018-03-01 14:45:41'),
(100, 'aaaa', 'nữ', 'haunguyen112797@gmail.com', 'asertyhui', '234567', NULL, '2018-03-01 14:47:05', '2018-03-01 14:47:05'),
(101, 'Nguyễn Thị Hậu', 'nam', 'haunguyen112797@gmail.com', '124 tây sơn', '01695722171', NULL, '2018-03-01 21:16:43', '2018-03-01 21:16:43'),
(102, 'Nguyễn Thị Hậu', 'nam', 'haunguyen112797@gmail.com', 'sdfghjkl', '01695722171', NULL, '2018-03-01 21:30:01', '2018-03-01 21:30:01'),
(103, 'Nguyễn Thị Hậu', 'nữ', 'haunguyen112797@gmail.com', 'ẻtyuio', '1695722171', NULL, '2018-03-01 21:34:13', '2018-03-01 21:34:13'),
(104, 'Nguyễn Thị Hậu', 'nữ', 'haunguyen112797@gmail.com', 'haunguyen1996', '1695722171', NULL, '2018-03-01 21:34:58', '2018-03-01 21:34:58'),
(105, 'Nguyễn Thị Hậu', 'nữ', 'haunguyen112797@gmail.com', 'haunguyen1996', '1695722171', NULL, '2018-03-01 21:37:07', '2018-03-01 21:37:07'),
(106, 'Nguyễn Thị Hậu', 'nữ', 'haunguyen112797@gmail.com', 'sdfghjkl;', '01695722171', NULL, '2018-03-01 21:41:58', '2018-03-01 21:41:58'),
(107, 'Nguyễn Thị Hậu', 'nam', 'haunguyen112797@gmail.com', 'sdfghjkl;', '1695722171', NULL, '2018-03-01 21:42:53', '2018-03-01 21:42:53'),
(108, 'Nguyễn Thị Hậu', 'nam', 'haunguyen112797@gmail.com', 'sdfghjk', '01695722171', NULL, '2018-03-01 21:58:18', '2018-03-01 21:58:18'),
(109, 'Nguyễn Đức Kiên', 'nam', 'haunguyen112797@gmail.com', '124 tây sơn', '01695722171', NULL, '2018-03-01 22:01:29', '2018-03-01 22:01:29'),
(110, 'Nguyễn Thị Hậu', 'nam', 'haunguyen112797@gmail.com', 'ádfghjk', '5678967', NULL, '2018-03-01 22:04:45', '2018-03-01 22:04:45'),
(111, 'Nguyễn Thị Hậu', 'nữ', 'haunguyen112797@gmail.com', 'ádfghjk', '1695722171', NULL, '2018-03-01 22:07:23', '2018-03-01 22:07:23'),
(112, 'Trần Thị Thi', 'nữ', 'haunguyen112797@gmail.com', '124 tây sơn', '01695722171', NULL, '2018-03-01 22:09:13', '2018-03-01 22:09:13'),
(113, 'Trần Thị Thi', 'nữ', 'haunguyen112797@gmail.com', '124 tây sơn', '01695722171', NULL, '2018-03-01 22:10:18', '2018-03-01 22:10:18'),
(114, 'Nguyễn Thị Hậu', 'nam', 'haunguyen112797@gmail.com', 'sdfghjk', '01695722171', NULL, '2018-03-01 22:26:57', '2018-03-01 22:26:57'),
(115, 'Nguyễn Thị Hậu', 'nữ', 'haunguyen112797@gmail.com', 'ádfghjk', '01695722171', NULL, '2018-03-01 22:52:39', '2018-03-01 22:52:39'),
(116, 'Nguyễn Thị Hậu', 'nữ', 'haunguyen112797@gmail.com', 'ádfghjk', '01695722171', NULL, '2018-03-01 22:53:03', '2018-03-01 22:53:03'),
(117, 'Nguyễn Thị Hậu', 'nữ', 'haunguyen112797@gmail.com', 'ádfgh', '01695722171', NULL, '2018-03-01 22:57:13', '2018-03-01 22:57:13'),
(118, 'Trần Thị Thi', 'nam', 'haunguyen112797@gmail.com', 'sdfghjk', '01695722171', NULL, '2018-03-01 23:01:22', '2018-03-01 23:01:22'),
(119, 'Trần Thị Thi', 'nam', 'haunguyen112797@gmail.com', 'ádfghj', '01695722171', NULL, '2018-03-01 23:05:21', '2018-03-01 23:05:21'),
(120, 'Nguyễn Đức Kiên', 'nam', 'haunguyen112797@gmail.com', NULL, '01695722171', NULL, '2018-03-01 23:18:57', '2018-03-01 23:18:57'),
(121, 'Trần Thị Thi', 'nam', 'haunguyen112797@gmail.com', '124 tây sơn', '01695722171', NULL, '2018-03-01 23:19:46', '2018-03-01 23:19:46'),
(122, 'Nguyễn Đức Kiên', 'nam', 'haunguyen112797@gmail.com', '12tasfgh', '01695722171', NULL, '2018-03-01 23:23:21', '2018-03-01 23:23:21'),
(123, 'Nguyễn thị ngoan', 'nữ', 'haunguyen112797@gmail.com', '124 tây sơn', '01695722171', NULL, '2018-03-01 23:24:52', '2018-03-01 23:24:52'),
(124, 'Nguyễn Đức KiênA', 'nam', 'haunguyen112797@gmail.com', '124 tây sơn', '01695722171', NULL, '2018-03-01 23:27:47', '2018-03-01 23:27:47'),
(125, 'Nguyễn Đức Kiênb', 'nam', 'haunguyen112797@gmail.com', '124 tây sơn', '1695722171', NULL, '2018-03-01 23:29:15', '2018-03-01 23:29:15'),
(126, 'Nguyễn Thị Hậu', 'nam', 'haunt42@wru.vn', '175 tây sơn', '01695722171', NULL, '2018-03-05 08:51:44', '2018-03-05 08:51:44'),
(127, 'Nguyễn Thị Hậu', 'nam', 'haunt42@wru.vn', '175 tây sơn', '01695722171', NULL, '2018-03-05 08:54:09', '2018-03-05 08:54:09'),
(128, 'Nguyễn Thị Hậu', 'nam', 'haunt42@wru.vn', '175 tây sơn', '01695722171', NULL, '2018-03-05 08:56:37', '2018-03-05 08:56:37'),
(129, 'Nguyễn Thị Hậu', 'nam', 'haunt42@wru.vn', '175 tây sơn', '01695722171', NULL, '2018-03-05 08:58:46', '2018-03-05 08:58:46'),
(130, 'Nguyễn Thị Hậu', 'nam', 'haunt42@wru.vn', '175 tây sơn', '01695722171', NULL, '2018-03-05 09:00:16', '2018-03-05 09:00:16'),
(131, 'Nguyễn Thị Hậu', 'nam', 'haunt42@wru.vn', '175 tây sơn', '01695722171', NULL, '2018-03-05 09:06:08', '2018-03-05 09:06:08'),
(132, 'Nguyễn Thị Hậu', 'nam', 'haunt42@wru.vn', '175 tây sơn', '01695722171', NULL, '2018-03-05 09:06:20', '2018-03-05 09:06:20'),
(133, 'Nguyễn Thị Hậu', 'nam', 'haunt42@wru.vn', '175 tây sơn', '01695722171', NULL, '2018-03-05 09:11:06', '2018-03-05 09:11:06'),
(134, 'Nguyễn Thị Hậu', 'nam', 'haunt42@wru.vn', '175 tây sơn', '01695722171', NULL, '2018-03-05 09:17:08', '2018-03-05 09:17:08'),
(135, 'Nguyễn Thị Hậu', 'nam', 'haunt42@wru.vn', '175 tây sơn', '01695722171', NULL, '2018-03-05 09:17:12', '2018-03-05 09:17:12'),
(136, 'Nguyễn Thị Hậu', 'nam', 'haunt42@wru.vn', '175 tây sơn', '01695722171', NULL, '2018-03-05 09:21:45', '2018-03-05 09:21:45'),
(137, 'Nguyễn Thị Hậu', 'nam', 'haunt42@wru.vn', 'ádfgh', '01695722171', NULL, '2018-03-05 14:26:09', '2018-03-05 14:26:09'),
(138, 'Trần Thị Thi', 'nam', 'haunt42@wru.vn', 'scdvfgbnhjk', '01695722171', NULL, '2018-03-05 14:28:20', '2018-03-05 14:28:20'),
(139, 'Hậu Nguyễn', 'nam', 'haunt42@wru.vn', 'ÁDFGHJ', '01695722171', NULL, '2018-03-05 21:54:28', '2018-03-05 21:54:28'),
(140, 'Hậu Nguyễn', 'nam', 'haunt42@wru.vn', 'ÁDFGHJ', '01695722171', NULL, '2018-03-05 21:54:43', '2018-03-05 21:54:43'),
(141, 'Hậu Nguyễn', 'nam', 'haunt42@wru.vn', 'ÁDFGH', '01695722171', NULL, '2018-03-05 21:57:35', '2018-03-05 21:57:35'),
(142, 'Hậu Nguyễn', 'nam', 'haunt42@wru.vn', 'ÁDFGH', '01695722171', NULL, '2018-03-05 22:00:37', '2018-03-05 22:00:37'),
(143, 'Nguyễn Thị Hậu', 'nam', 'haunt42@wru.vn', 'sdfghj', '01695722171', NULL, '2018-03-05 22:06:55', '2018-03-05 22:06:55'),
(144, 'Hậu Nguyễn', 'nam', 'haunt42@wru.vn', 'ádfgh', '01695722171', NULL, '2018-03-05 22:08:59', '2018-03-05 22:08:59'),
(145, 'Nguyễn Thị Hậu', 'nam', 'haunt42@wru.vn', 'ádfgh', '01695722171', NULL, '2018-03-05 22:22:31', '2018-03-05 22:22:31'),
(146, 'Nguyễn Thị Hậu', 'nữ', 'haunguyen112797@gmail.com', 'dfghjkl', '01695722171', NULL, '2018-03-06 10:47:51', '2018-03-06 10:47:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `cate_id` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `unit_price` int(11) DEFAULT NULL,
  `promotion_price` decimal(10,0) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `cate_id`, `description`, `unit_price`, `promotion_price`, `image`, `unit`, `created_at`, `updated_at`) VALUES
(4, 'Bộ ấm chén tử sa Phúc Lộc Thọ - men nâu - chỉ đỏ - lòng xanh', 1, 'ĐẶC ĐIỂM NỔI BẬT\r\nSản phẩm ấm chén gốm tử sa Phúc Lộc Thọ chỉ đỏ lòng xanhđược làm từ chất liệu gốm đặc trưng với chất lượng tuyệt hảo.\r\nThân ấm được nung ở nhiệt độ cao đến 1300 độ C tạo nên ưu điểm bền chắc, hạn chế trầy xước, bể mẻ do va chạm trong khi sử dụng, vận chuyển. Bình trà với tay cầm vừa vặn, chắc chắn, miệng bình được thiết kế vô cùng chuẩn xác, không bị rỉ nước, ngắt dòng tuyệt đối khi rót giúp thao tác được gọn gàng, không làm vấy bẩn bàn hay khăn trải. Các tách trà, đĩa lót cũng mang hoa văn, màu sắc đồng bộ trang nhã, quý phái tạo nên một bộ sản phẩm vô cùng tuyệt vời.\r\nVẺ ĐẸP TRUYỀN THỐNG\r\n\r\nHoa văn trên ấm và tách được vẽ tay rất tỉ mỉ và tinh xảo, vừa mag vẻ đẹp đơn giản vừa vô cùng tinh tế, thu hút mọi ánh nhìn. Ấm trà được thiết kế dạng bầu tròn truyền thống, quai của ấm cũng được làm bằng chất liệu gốm đồng điệu rất chắc chắn.\r\n\r\nKhi pha trà vào ấm và rót ra tách, ta sẽ thấy được sự kết hợp tuyệt vời giữa màu sắc tự nhiên của men gốm và màu xanh hoặc vàng nguyên thủy của trà tạo nên phong cách trà đạo truyền thống rất đặc trưng của việt nam.\r\n\r\nSản phẩm phù hợp với mọi phong cách nội thất từ hiện đại, sang trọng đến truyền thống, trang nhã, bộ ấm chén gốm tử sa Phúc Lộc Thọ chỉ đỏ lòng xanh này có thể dành làm một món quà tặng những người yêu quý của bạn thay cho những lời chúc tốt đẹp nhất.', 75000, '0', 'amchen2.jpg', '10', '2017-11-13 12:30:15', '2018-03-06 22:59:27'),
(5, 'Bộ ấm chén vuốt bọc đồng số 2 vẽ trúc lâm thất hiền', 1, 'Kích thước bộ sản phẩm: \r\n\r\n1. Bình trà: cao 13cm (Bình trà này có thể đựng 500ml nước)\r\n\r\n2. Chén: \r\n\r\n- Đường kính: 6.5cm\r\n\r\n- Cao; 5cm\r\n\r\n3. Đĩa kê chén: đường kính 9.5cm\r\n\r\n\r\n\r\nTrúc lâm thất hiền – Rừng trúc và 7 ông hiền.\r\n\r\nTrúc lầm thất hiền, bảy nhà thơ, nhà văn Trung Quốc sống thời ký cuối Ngụy đầu Tấn, thế kỷ thứ 3 ở ẩn trong rừng Trúc, đánh đàn uống rượu ngâm thơ, bàn triết học Lão Trang, nói chuyện huyền viễn để tỏ lòng chống đối chế độ đương thời.\r\n\r\nĐẶC ĐIỂM NỔI BẬT\r\n\r\nHoa văn đơn giản vẽ tay thủ công tinh xảo rất phù hợp với việc trưng bày trong phòng khách (trên bàn gỗ, bàn kính) hoặc dùng ở sân vườn, phù hợp với cả những ngôi nhà cổ và sự hòa quện giữa cổ điển và hiện đại trong những căn nhà mới…\r\n\r\nBộ ấm chén men cổ có ưu điểm không bám nước chè. mỗi lần sử dụng, bạn chỉ cần tráng nước nóng mà không cần rửa bề mặt lại trở nên nhẵn bóng, sạch sẽ. kiểu dáng thiết kế cũng độc đáo và lạ mắt, mỗi bộ ấm chén là một kiểu dáng khác nhau.\r\n\r\nSản phẩm bao gồm \r\n\r\n- 1 ấm \r\n\r\n- 6 chén\r\n\r\n- 6 đĩa kê', 1100000, NULL, 'am-chen-su-men-co-boc-dong-bo-am-chen-vuot-boc-dong-so-2-ve-truc-lam-that-hien-22778-1.jpg', '10', '2017-11-13 19:20:28', '2018-02-15 17:43:19'),
(6, 'Bộ ấm chén dáng nhật - đầy đủ phụ kiện - men rạn cổ bọc đồng', 1, 'Bộ ấm chén dáng nhật - đầy đủ phụ kiện - men rạn cổ bọc đồng kích thước phù hợp với mọi gia đình, có thể làm quà.\r\nBộ sản phẩm bao gồm:\r\n1 ấm trà\r\n6 chén trà\r\n7 đĩa kê\r\n1 lọ đựng chè\r\n1 gạt tàn thuốc lá\r\n1 ống đựng tăm', 1600000, '1550000', 'amchen3.jpg', '10', '2017-11-13 19:20:28', '2018-03-06 23:04:56'),
(7, 'Bộ ấm chén dáng Nhật - men rạn cổ bọc đồng', 1, 'Bộ ấm chén men rạn cổ \r\nBao gồm : 1 bình trà, 6 chén trà, 7 đĩa kê', 1000000, '0', 'am-chen-men-ran-co-bo-am-chen-dang-nhat-day-du-phu-kien-men-ran-co-boc-dong-23468-1.jpg', '10', '2017-11-13 19:20:28', '2018-02-15 17:20:31'),
(8, 'Bộ đồ ăn Bát Tràng - Mai vàng may mắn', 2, 'Bộ sản phẩm bao gồm:\r\n10 bát ăn cơm\r\n6 đĩa tròn\r\n2 âu đựng cơm\r\n3 bát tô to\r\n1 bát mắm\r\n1 đĩa muối\r\n\r\nThông tin sản phẩm:\r\nChất liệu: sứ Bát Tràng cao cấp\r\nMàu men trắng trong\r\nHọa tiết: mai vàng\r\n\r\n\r\nBộ sản phẩm được làm từ chất liệu gốm sứ Bát Tràng cao cấp, họa tiết mai vàng nổi bật trên nền sứ trắng trong vô cùng đẹp mắt. \r\n\r\nSản phẩm có thể sử dụng trong lò vi sóng. Màu men trắng trong dễ dàng lau chùi, càng dùng càng sáng bóng.\r\nĐặc biệt, sản phẩm được nung ở nhiệt độ cao đảm bảo an toàn cho sức khỏe của bạn cũng như những người thân trong gia đình.\r\n\r\nBộ đồ ăn mai vàng may mắn với thiết kế tinh tế không chỉ phù hợp với không gian bếp hiện đại mà còn rất hợp nếu bạn dùng làm quà biếu tặng lãnh đạo, người thân, bạn bè, hay trong những dịp đặt biệt: tân gia, năm mới...\r\n\r\nBộ sản phẩm mai vàng như  một lời chúc may mắn trao tặng đến bạn bè, người thân, lãnh đạo để mừng tân gia, năm mới hay những dịp quan trọng...\r\nÝ nghĩa họa tiết HOA MAI\r\n\r\nHình ảnh cây mai nở rộ trong ngày đầu xuân là bài học đạo lý đối với mọi người và mọi nhà. Cây mai dãi nắng dầm mưa trong lòng đất Việt Nam cũng là hình ảnh tiêu biểu cho những phẩm chất tinh thần cao quý của người dân Việt trong quá trình đấu tranh và lao động xây dựng cuộc sống qua nhiều thế hệ. \r\n\r\nCây mai gắn bó với làng quê ruộng vườn xứ sở Việt Nam, gắn bó với con người từ lúc tổ tiên khai đất lập làng để sinh sống. Cây mai chịu đựng gió mưa lụt bão để có thể nở hoa vào dịp tết, đó là hình ảnh tượng trưng cho người dân Việt vượt mọi gian khó để gìn giữ quê hương nòi giống và sống đời có ý nghĩa.\r\n\r\nNhư cây mai vàng rễ cắm sâu trong lòng đất, không bị ngã trước gió bão, con người Việt Nam dù ở đâu cũng gìn giữ đạo lý ân nghĩa và cội nguồn văn hóa tốt đẹp của tổ tiên.\r\n\r\nNhư cây mai vàng đứng trước thời tiết nghiệt ngã, vẫn sống bền bỉ theo năm tháng vươn mình ươm chồi nẩy lộc, người Việt Nam dù bất cứ ở đâu cũng nhẫn nại và can đảm trước mọi hoàn cảnh để xây dựng cuộc đời.\r\n\r\nNhư cây mai vàng trút những chiếc lá già cỗi cuối đông, nhường cho chồi non và hoa vàng nở đầu xuân, người Việt Nam dù bất cứ ở đâu cũng sống hy sinh cho thế hệ con cháu tương lai.\r\n\r\nNhư cây mai vàng gìn giữ nhựa sống sâu kín trong thân tạo sức sống mạnh khỏe để hoa nở đầu xuân, người Việt Nam dù ở đâu cũng gìn giữ đạo lý trong tâm, tu nhân tích đức để sống có ích cho mình và cho mọi người.\r\n\r\nCây mai sống qua bao năm tháng với thời tiết khắc nghiệt vẫn âm thầm chịu đựng dẽo dai, xuân về dâng cho đời bông hoa xinh đẹp. Hình ảnh đó xứng đáng là nét tượng trưng cho phẩm đức  nhẫn nại và sự hy sinh cao cả của tổ tiên trong quá trình lao động xây dựng quê hương và duy trì bản sắc văn hóa dân tộc.', 1650000, NULL, 'bodoan1.jpg', '10', '2017-11-13 19:20:28', '2018-02-18 10:36:28'),
(9, 'Bộ đồ ăn Bát Tràng vẽ hoa xanh', 2, 'Bộ sản phẩm bao gồm:\r\n- 10 bát ăn cơm\r\n- 3 đĩa đĩa đường kính: 16 cm, 18cm, 20cm\r\n\r\n- 2 bát tô đường kính: 18cm, 20cm\r\n- 1 bát mắm, 1 đĩa muối\r\n\r\nThông tin sản phẩm:\r\nChất liệu: sứ Bát Tràng cao cấp\r\nMàu men xanh lam\r\nHọa tiết: Hoa cách điệu\r\n\r\nBộ đồ ăn Bát Tràng được làm từ chất đất cao cấp tạo nên sản phẩm có màu trắng trong đẹp mắt. Họa tiết hoa mềm mại, tinh tế, bắt mắt rất phù hợp với không gian bếp của gia đình bạn\r\n\r\nSản phẩm có thể sử dụng trong lò vi sóng. Màu men trắng trong dễ dàng lau chùi, càng dùng càng sáng bóng.\r\nĐặc biệt, sản phẩm được nung ở nhiệt độ cao đảm bảo an toàn cho sức khỏe của bạn cũng như những người thân trong gia đình.', 950000, '0', 'bodoan2.jpg', '10', '2017-11-13 19:20:28', '2018-02-18 10:38:43'),
(10, 'Bộ đồ ăn gốm Bát Tràng - Quê nhà', 2, 'Thông tin sản phẩm: \r\nXuất xứ: Bát Tràng - Việt Nam\r\nChất liệu: Gốm cao cấp\r\nMàu men: \r\n\r\nBộ đồ ăn \"Quê nhà\" gồm 18 sản phẩm:\r\n- 10 bát con ăn cơm, đường kính 10cm, cao 5.5cm\r\n-  01 Âu đựng cơm quê nhà, đường kính 18cm, cao 14cm\r\n-  01 Đĩa tròn quê nhà số 4 - Quê nhà, đường kính 19.8cm, cao 3cm\r\n-  01 Đĩa tròn quê nhà số 5, đường kính 18cm, cao 2.5cm\r\n-  01 Khay cong quê nhà số 2, dài 21cm, rộng 12.5cm\r\n-  01 Khay lá chuối quê nhà số 3, dài 25.5cm, rộng 12cm\r\n-  01 Khay lá chuối quê nhà số 2, dài 33.5cm, rộng 17cm\r\n-  01 Khay chữ nhật quê nhà số 2, dài 27.5cm, rộng 17cm\r\n-  01 bát nắp quê nhà  cao 13cm, đường kính 6.5cm\r\n\r\nSản phầm gốm sứ Bát Tràng chính gốc, bền màu, dễ dàng chùi rửa, từng chi tiết được làm chắc chắn, tránh được va đập nhẹ. Đặc biệt, sản phẩm có thể dùng được trong lò vi sóng, máy rửa bát, an toàn cho sức khỏe của bạn và người thân.\r\n\r\nKhi bắt đầu sử dụng, khách hàng lưu ý nên rửa sản phẩm bằng nước sạch. Không thay đổi nhiệt độ đột ngột khi sử dụng sản phẩm. Ví dụ: không đưa sản phẩm đang được giữ từ tủ lạnh trực tiếp vào lò vi sóng.\r\n\r\nVới thiết kế hiện đại kết hợp với màu men đặc trưng tạo nên sản phẩm vừa sang trọng vừa cổ điển, thích hợp để dùng trong gia đình, quà biếu quà tặng hay làm bộ đồ ăn ở các nhà hàng.', 1700000, '1600000', 'bodoanx.jpg', '10', '2017-11-13 19:20:28', '2018-03-06 23:09:14'),
(11, 'Bộ đồ ăn Bát Tràng - vẽ hoa hồng - 25 món', 2, 'Chất liệu: sứ Bát Tràng cao cấp\r\n\r\nBộ đồ ăn Bát Tràng được làm từ chất đất cao cấp tạo nên sản phẩm có màu trắng trong đẹp mắt. Họa tiết hoa văn mềm mại, tinh tế, bắt mắt rất phù hợp với không gian bếp của gia đình bạn\r\n\r\nSản phẩm có thể sử dụng trong lò vi sóng. Màu men trắng trong dễ dàng lau chùi, càng dùng càng sáng bóng.\r\nĐặc biệt, sản phẩm được nung ở nhiệt độ cao đảm bảo an toàn cho sức khỏe của bạn cũng như những người thân trong gia đình.', 2450000, '2240000', 'bodoan3.jpg', '20', '2017-11-13 19:20:28', '2018-02-18 10:40:14'),
(12, 'Bộ đồ ăn Bát Tràng 37 món - Hoa đào', 2, '01 Âu đựng cơm đường kính 22cm\r\n\r\n-        10 Bát ăn cơm đường kính 11cm\r\n\r\n-        06 Gác đũa\r\n\r\n-        06 Thìa con\r\n\r\n-        01 Đĩa bầu dục (26x19cm)\r\n\r\n-        01 Ống đựng hạt tiêu\r\n\r\n-        01 Khay đựng tương ớt – tương cà (12x6.5cm)\r\n\r\n \r\n\r\n-        01 Đĩa thuyền sâu (24x17cm)\r\n\r\n-        01 Khay chữ nhật cỡ lớn (27x17cm)\r\n\r\n-        01 Khay chữ nhật cỡ nhor (22x13cm)\r\n\r\n-        03 Đĩa tròn (Đường kính 20cm, 16cm, 14cm)\r\n\r\n-        01 Đĩa mắm (10cm)\r\n\r\n-        01 Bát muối (10cm)\r\n\r\n-        01 Tô vuông (17.5cm)\r\n\r\n-        02 Tô loe (19cm, 16cm)', 1850000, '0', 'bodoan6.jpg', '15', '2017-11-13 19:20:28', '2018-02-18 10:47:57'),
(13, 'Bộ đồ ăn Bát Tràng - vẽ sen - men tràm 17 món', 2, 'Chất liệu: sứ Bát Tràng cao cấp\r\nMàu men tràm cổ\r\nHọa tiết: vẽ hoa sen\r\n\r\nBộ đồ ăn Bát Tràng được làm từ chất đất cao cấp tạo nên sản phẩm có màu trắng trong đẹp mắt. Họa tiết hoa văn mềm mại, tinh tế, bắt mắt rất phù hợp với không gian bếp của gia đình bạn\r\n\r\nSản phẩm có thể sử dụng trong lò vi sóng. Màu men trắng trong dễ dàng lau chùi, càng dùng càng sáng bóng.\r\nĐặc biệt, sản phẩm được nung ở nhiệt độ cao đảm bảo an toàn cho sức khỏe của bạn cũng như những người thân trong gia đình.', 1090000, '0', 'bodoan5.jpg', '10', '2017-11-13 19:20:28', '2018-02-18 10:43:33'),
(14, 'Bộ ấm tử sa đen - Đắp nổi hoa phù dung đỏ', 1, 'Bộ sản phẩm bao gồm:\r\n- 01 Ấm pha trà:\r\n- 01 đĩa kê ấm\r\n- 06 chén\r\n- 06 đĩa kê chén\r\n\r\nBộ ấm chén được làm từ chất liệu gốm đất đỏ - một loại đất đặc trưng của bát tràng.  Trong lòng chén được tráng một lớp men đặc trưng mà không nơi nào có tạo nên vẻ đẹp tinh tế của bộ bình trà, đồng thời cũng giữ cho sản phẩm luôn sạch sẽ sau mỗi lần sử dụng.\r\n\r\nKhi rót trà vào chén, ta sẽ thấy được sự kết hợp rất ăn ý giữa màu men của gốm và màu xanh của trà, chính sự hòa quện này đã tạo nên phong cách trà đạo truyền thống việt nam.\r\n\r\nPhù dung trong tiếng Hán đồng âm với “phú vinh” nghĩa là giàu có, vinh hiển. Trong các hình hoa văn thường thấy vẽ Phù dung và Mẫu đơn với nhau thành “vinh hoa phú quý”, nhằm chỉ nghĩa cát tường.\r\n\r\nHoa Phù Dung sớm nở tối tàn, ném hết ưu tư phiền muộn vào nắng và gió. Bỏ mặc nhân gian sầu thế, vui nở bằng tất cả niềm tin, niềm vui, niềm sống được tạo nên bởi đôi bàn tay tài hoa khóe léo của người nghệ nhân làng gốm. Màu ấm và màu chén đồng bộ riêng biệt vô cùng độc đáo.\r\n\r\nVới thiết kế tinh tế, sản phẩm phù hợp với việc trưng bày trong phòng khách (trên bàn gỗ, bàn kính) hoặc dùng ở sân vườn, phù hợp với cả những ngôi nhà cổ và sự hòa quện giữa cổ điển và hiện đại trong những căn nhà mới…', 590000, '450000', 'am-chen-gom-bo-am-tu-sa-den-dap-noi-hoa-phu-dung-do-23503-1.jpg', '5', '2017-11-13 19:20:28', '2018-02-15 17:14:22'),
(15, 'Đèn xông tinh dầu (vẽ sen , dáng đèn trứng)', 3, '- Đèn xông tinh dầu bằng gốm sứ, chạy điện.\r\n- Vừa trang trí phòng khách, phòng ngủ sang trọng, vừa tạo hương thơm cho gia đình.\r\n- Đảm bảo sức khỏe.\r\n- Chất liệu sứ bát tràng cao cấp.\r\n- Công suất đèn: 10w\r\n\r\nĐèn xông tinh dầu là sản phẩm thông minh, tiện dụng, tích hợp 02 chức năng vừa là đèn ngủ vừa là đèn xông hương trong một. Với các chức năng vừa là chiếc đèn ngủ, vừa tỏa hương thơm, vừa làm ấm căn phòng, đèn xông hương tinh dầu trở thành mặt hang ngày càng được ưa chuộng trên thị trường.\r\n\r\nGốm Sứ Thank  hướng dẫn sử dụng đèn xông tinh dầu\r\n\r\n- Bước 1: Đổ nước vào phần chứa nước của đèn xông tinh dầu. Bạn có thể cho nước nóng (60 độC đến 80 độC) vào ngập khoảng 1/2 đến 2/3 đĩa nước.\r\n\r\n- Bước 2: Cắm điện\r\n\r\nTrước khi cắm điện, bạn nên để các chiết áp ở mức nhỏ nhất để tránh những ảnh hưởng từ nguồn điện tăng vọt sẽ làm hỏng chiếc bóng đèn của bạn.\r\n\r\n- Bước 3: Nhỏ tinh dầu\r\n\r\nBạn chỉ nên cho từ 4-5 giọt tinh dầu (dùng cho diện tích khoảng 15 đến 18m2) vào chiếc đèn để tránh mùi hương quá nặng hoặc gây lãng phí. Bạn không nên nhỏ trực tiếp tinh dầu vào nước lạnh vì như thế sẽ làm giảm tác dụng. Nên nhớ, nước phải đủ độ nóng thì tinh dầu mới phát huy tác dụng hiệu quả nhất\r\n\r\nĐèn đốt tinh dầu của battrangonline.vn với mẫu mã đẹp, phong phú và đa dạng, các loại đèn đốt tinh dầu này cũng có thể được sử dụng làm đèn ngủ, đèn trang trí trong văn phòng, phòng ngủ, hành lang… Đây cũng có thể làm một món quà tặng vô cùng thú vị và ý nghĩa.', 300000, '0', 'den-xong-tinh-dau-den-xong-tinh-dau-ve-sen-dang-den-trung-22761-1.jpg', '10', '2017-11-13 19:20:28', '2018-02-15 17:18:35'),
(16, 'Đèn xông tinh dầu chữ phúc - dáng sóng - vẽ tay - men trắng cao cấp', 3, '- Đèn xông tinh dầu bằng gốm sứ, chạy điện. - Vừa trang trí phòng khách, phòng ngủ sang trọng, vừa tạo hương thơm cho gia đình. - Đảm bảo sức khỏe. - Chất liệu sứ bát tràng cao cấp. - Công suất đèn: 10w Đèn xông tinh dầu là sản phẩm thông minh, tiện dụng, tích hợp 02 chức năng vừa là đèn ngủ vừa là đèn xông hương trong một. Với các chức năng vừa là chiếc đèn ngủ, vừa tỏa hương thơm, vừa làm ấm căn phòng, đèn xông hương tinh dầu trở thành mặt hang ngày càng được ưa chuộng trên thị trường. Gốm Sứ Thank hướng dẫn sử dụng đèn xông tinh dầu - Bước 1: Đổ nước vào phần chứa nước của đèn xông tinh dầu. Bạn có thể cho nước nóng (60 độC đến 80 độC) vào ngập khoảng 1/2 đến 2/3 đĩa nước. - Bước 2: Cắm điện Trước khi cắm điện, bạn nên để các chiết áp ở mức nhỏ nhất để tránh những ảnh hưởng từ nguồn điện tăng vọt sẽ làm hỏng chiếc bóng đèn của bạn. - Bước 3: Nhỏ tinh dầu Bạn chỉ nên cho từ 4-5 giọt tinh dầu (dùng cho diện tích khoảng 15 đến 18m2) vào chiếc đèn để tránh mùi hương quá nặng hoặc gây lãng phí. Bạn không nên nhỏ trực tiếp tinh dầu vào nước lạnh vì như thế sẽ làm giảm tác dụng. Nên nhớ, nước phải đủ độ nóng thì tinh dầu mới phát huy tác dụng hiệu quả nhất Đèn đốt tinh dầu của battrangonline.vn với mẫu mã đẹp, phong phú và đa dạng, các loại đèn đốt tinh dầu này cũng có thể được sử dụng làm đèn ngủ, đèn trang trí trong văn phòng, phòng ngủ, hành lang… Đây cũng có thể làm một món quà tặng vô cùng thú vị và ý nghĩa.', 300000, '280000', 'den-xong-tinh-dau-den-xong-tinh-dau-chu-phuc-dang-song-ve-tay-men-trang-cao-cap-23756-1.jpg', '5', '2017-11-13 19:20:28', '2018-02-15 17:23:45'),
(17, 'Đèn sứ BATO để bàn vẽ bách nhi - 60x38cm', 3, 'Sản phẩm được sản xuất trực tiếp tại Bát Tràng bằng chất liệu sứ thấu quang đặc biệt, đảm bảo cho anh sáng có thể lọt qua.\r\n\r\nHọa tiết bách nhi được vẽ trên bề mặt bên ngoài của gốm, khi ánh sáng đèn điện được bật lên từ bên trong sẽ phát sáng tạo nên vẻ đẹp huyền ảo của sản phẩm.\r\n\r\nÝ nghĩa sản phẩm\r\n\r\nBÁCH NHI (BÁCH PHÚC): Cháu con sung túc đầy nhà, sống trường thọ.\r\n\r\nBách Nhi được thể hiện trên sản phẩm đền sứ thấu quang là 100 đứa trẻ, mỗi đứa trẻ là 1 điều phúc,100 trẻ là 100 điều Phúc hay còn được gọi là Bách Phúc. Cây tùng biểu tượng cho sự trường thọ, dẻo dai như cây Bách cây Tùng. Mái nhà biểu tượng cho sự sung túc, ấm no…\r\n\r\nThời gian triển khai vẽ 7 ngày cho 1 sản phẩm\r\n\r\nSản phẩm có kích thước 60x38cm.', 14000000, '10900000', 'den-trung-bay-cao-cap-den-su-bato-de-ban-ve-bach-nhi-60x38cm-24319-1.jpg', '5', '2017-11-13 19:20:28', '2018-02-15 17:32:49'),
(18, 'Đèn sứ thấu quang vẽ lý ngư vọng nguyệt - cao 58cm', 3, 'Sản phẩm được sản xuất trực tiếp tại Bát Tràng bằng chất liệu sứ thấu quang đặc biệt, đảm bảo cho anh sáng có thể lọt qua.\r\n\r\nHọa tiết lý ngư vọng nguyệt được vẽ nổi trên bề mặt bên ngoài của gốm, khi ánh sáng đèn điện được bật lên từ bên trong sẽ phát sáng tạo nên vẻ đẹp huyền ảo của sản phẩm.\r\n\r\nSản phẩm có kích thước 56x38cm.', 10000000, '8900000', 'den-trung-bay-cao-cap-den-su-thau-quang-ve-ly-ngu-vong-nguyet-cao-58cm-24114-1.jpg', '12', '2017-11-22 04:20:20', '2018-02-15 17:29:09'),
(19, 'Đèn ngủ sứ cao cấp Bát Tràng', 3, 'Đèn ngủ là một vật dụng không thể thiếu trong mỗi phòng ngủ, nó không những mang ánh sáng đến căn phòng của bạn để  căn phòng trở nên ấm áp hơn mà ngoài ra còn là vật trang trí giúp căn phòng của bạn thêm hoàn hảo hơn.\r\n\r\nÁnh sáng là yếu tố quan trọng giúp phòng ngủ trở nên có sức sống , có hồn , ánh sáng từ những chiếc đèn ngủ xinh xắn sẽ đưa bạn đến những giấc ngủ ngon.', 2800000, '0', 'den-trung-bay-cao-cap-den-ngu-su-cao-cap-bat-trang-24453-1.jpg', '6', '2017-11-07 06:17:16', '2018-03-06 23:10:59'),
(20, 'Lọ lộc bình men rạn cổ - bình an may mắn - Cao 175 cm', 4, 'Lọ lộc bình vẽ Tùng Cúc Trúc Mai: gồm 2 lọ lộc bình cao 1m6 và 2 chân đế kê (mỗi chân đế cao từ 13cm đến 15cm)\r\n\r\n\r\n\r\nTùng – Trúc – Cúc – Mai thể hiện sự luân chuyển của bốn mùa xuân – hạ - thu – đông. Sự luân chuyển này vừa đem lại may mắn cho con người, vừa là sự hi vọng, ước mong về sự suôn sẻ và thịnh vượng trong cuộc sống. \r\n\r\n\r\n\r\nĐặc biệt bức tranh phong cảnh 4 mùa được khắc họa nổi trên nền gốm sứ Bát Tràng vô cùng uyển chuyển, đẹp mắt. Màu men rạn giả cổ càng tạo thêm nét riêng có cho sản phẩm.  Hoàn toàn được tạo nên từ phương pháp thủ công truyền thống bởi đôi bàn tay khéo léo của người thợ, bạn sẽ hoàn toàn hài lòng khi lựa chọn đôi lọ lộc bình tứ cảnh này!\r\n\r\nSản phẩm dùng thích hợp để trưng bày hoặc làm quà biếu tặng.\r\n\r\nHàng đẹp loại I, không nứt, không vỡ gió, bền màu theo thời gian.', 8000000, '7500000', 'locbinh1.jpg', '5', '2017-11-01 06:16:16', '2018-02-16 13:34:08'),
(21, 'Lọ Lộc Bình Đắp Nổi - Cảnh Công Cúc Vạn Thọ', 4, 'Sản phẩm được làm trên chất liệu gốm sứ Bát Tràng cao cấp. Cảnh chim công hoa cúc được nghệ nhân đắp nổi hoàn toàn bằng tay, từng đường nét uyển chuyển tinh tế vô cùng mà không phải ngưởi thợ thủ công nào cũng làm được.\r\nSản phẩm có thể dùng để trưng bày hoặc làm quà biếu tặng cấp trên, người thân', 5000000, NULL, 'locbinh2.jpg', '11', '2017-11-02 00:00:24', '2018-02-16 13:26:32'),
(22, 'Lộc bình- Phúc Lộc Thọ - men lam- cao 60cm', 4, 'kích thước:  cao 60, vị trí đường kính lớn nhất 24cm', 1950000, '0', 'locbinh4.jpg', '15', '2017-11-02 00:25:21', '2018-02-16 13:56:57'),
(27, 'Lọ lộc bình Phúc Mãn Đường- men bóng - cao 1.55m', 4, 'Bộ sản phẩm gồm: 2 lọ lộc bình + 2 chân đế\r\nChất liệu: gốm sứ Bát Tràng cao cấp\r\nMàu men: men bóng đặc trưng\r\nHọa tiết: Vẽ Phúc Mãn Đường\r\n\r\nLộc bình có hình dạng rất đặc trưng, thân phình to, cổ thắt lại trên miệng thường loe ra. Trong phong thủy, lộc bình mang ý nghĩa tượng trưng cho sự sung túc về tiền bạc, phát tài phát lộc, sự sinh sôi nảy nở, sự phát triển những điều mới mẻ, may mắn và cát khánh đồng thời nó cất giữ, bảo quản tài sản và của cải cho gia chủ.\r\n\r\n\r\nĐôi lọ lộc bình (lục bình) của Bát Tràng được tạo nên bởi đôi bàn tay tài tình của người thợ  thủ công lành nghề, với những nét vẽ, họa tiết tinh xảo tạo nên chiều sâu ý nghĩa. Như 1 lời chúc phúc cho gia chủ:\r\n\r\nPhúc đầy nhà, năm thêm giàu có\r\n\r\nÐức ngập tràn, ngày một vinh hoa\r\n\r\n\r\n9 con cá chén (cửu ngư) mang ý nghĩa: may mắn, sung túc và trường tồn. Ngoài ra còn có ý nghĩa cầu cho con cháu học hành đỗ đạt sau này\r\nMột bên của sản phẩm là mình hạc sương mai: thể hiện cho chữ phúc trong nhà, vợ chồng thủy chung son sắt, một bên là họa tiết phượng hoàng tượng trưng cho giàu sang phú quý.\r\nHơn nữa, hoa và cây trên đôi lọ tượng trưng cho 4 mùa trong 1 năm mang đến sinh khí cho gia chủ\r\n\r\nĐược làm từ chất đất cao cấp của Bát Tràng, kết hợp men bóng trong tinh túy, bền màu theo thời gian\r\n\r\nLọ lộc bình Bát Tràng có thể dùng để trưng bày trong gia đình hoặc làm quà biếu, quà tặng trong những dịp quan trọng như: tân gia, mừng thăng quan tiến chức... Sản phẩm đẹp hơn nữa khi được trưng bày trong những gian nhà cổ, có hoành phi câu đối', 6000000, '0', 'locbinh3.jpg', '20', '2017-11-09 00:16:00', '2018-02-16 13:53:39'),
(28, 'Tiểu lộc bình vẽ Kỳ Lân Tống Tử cao 60cm', 4, 'Thông tin sản phẩm:\r\nSản phẩm gồm: 2 lọ\r\nXuất xứ: Bát Tràng - Việt Nam\r\nKích thước: 60cm\r\nChất liệu: Gốm sứ Bát Tràng cao cấp\r\nMàu men: men lam cổ đặc trưng của Bát Tràng\r\n\r\nÝ nghĩa họa tiết Kỳ lân tống tử\r\n    Theo phong thủy kỳ lân là nhân thú nó bao hàm cả đức nhân và đức nghĩa, đi đứng, xoay chuyển đều theo quy củ. Kỳ lân là con vật được cho là thú thần tặng con với tích \"kỳ lân tống tử\". Tương truyền rằng, trước khi khổng tử ra đời, có một con kỳ lân đã xuất hiện ở nhà ông, miệng nhả ra sách ngọc, trong sách có ghi chép vận mệnh của vị thánh nhân này, nói rằng khổng tử là con của vương hầu, nhưng sinh không gặp thời. Chính vì sự xuất hiện của kỳ lân mà khổng tử sau khi được sinh ra mọi người đều gọi ông là kỳ lân.\r\nBiểu tượng kỳ lân tống tử , có một (hoặc 2) đứa trẻ cưỡi trên lưng kỳ lân, trong tay cầm một bông sen.. đươc hiểu như sinh liền quý tử. Kỳ lân và sách ngọc cùng kết hợp trong một biểu tượng thì gọi là \"Kỳ lân tường đoan\" (kỳ lân cát tường) hoặc kỳ lân như ý ( đứa trẻ trẻ cầm gậy như ý). Kỳ lân ngoài ý nghĩa Vượng Nhân Đinh còn có thể chiêu tài, tăng phúc, tiêu tai, giải ách, diệt trừ mà quỷ, hóa giải sát khí.\r\n     Nếu gia đình có cuộc sống bất an, hay phát sinh bệnh tật, rủi do, bất trắc, mẫu thuẫn tranh cãi... có thể đặt một đôi lục bình vẽ kỳ lân tống tử tại phương tài vị cát tường trong phòng khách, có thể mang lại nhiều tài vận cho gia đình. Đặc biệt  rất thích hợp với những gia đình đang mong muốn có con cái thì có thể lục bình vẽ kỳ lân tống tử.', 4000000, '0', 'locbinhkylan.jpg', '5', '2018-02-16 14:08:10', '2018-03-06 23:23:24'),
(29, 'Bình thu tài hút lộc - vẽ bát tiên quá hải', 5, 'Bình trang trí - Thu tài hút lộc\r\n\r\nXuất xứ: Bát Tràng - Việt Nam\r\n\r\nSản phẩm vẽ tay hoàn toàn, sự kết hợp độc đáo giữa màu men xanh của Bát Tràng truyền thống với men màu hiện đại tạo cho sản phẩm sự độc đáo riêng có.', 3500000, NULL, 'binhsutrungbay1.jpg', '5', '2018-02-16 16:07:33', '2018-02-16 16:07:33'),
(30, 'Quả trứng phong thủy vẽ đồ cổ - Cao 45cm', 5, 'Quả trứng phong thủy mang ý nghĩa: đem lại tài lộc may mắn bất tận.\r\n\r\nSản phẩm có thể dùng để trang trí trên bàn làm việc của các doanh nhân, nhằm biểu tượng cho sự sinh sôi\r\nHọa tiết hoàn toàn được vẽ tay độc đáo, chất liệu gốm sứ cao cấp tạo cho không gian trưng bày nhiều ý nghĩa.', 3000000, NULL, 'binhsutrungbay2.jpg', '5', '2018-02-16 16:22:16', '2018-02-16 16:22:16'),
(31, 'Bình hút tài lộc mã đáo thành công - men rạn cổ - cao 40cm', 5, 'Bộ sản phẩm bao gồm.\r\n\r\n01 bình có chiều cao 40cm đường kính 40cm.\r\n\r\n01 chân đế gỗ hương\r\n\r\nChất liệu: Sứ Bát Tràng\r\n\r\nHọa tiết đắp nổi\r\n\r\nSản phẩm được đun ở nhiệt độ 1300 độ C đảm bảo chắc chắn, bền đẹp.', 8000000, '7500000', 'binhsutrungbay3.jpg', '5', '2018-02-16 16:26:28', '2018-02-16 16:26:28'),
(32, 'Chóe Bát Tràng vẽ chim trĩ, hoa phù dung', 5, 'Thông tin sản phẩm:\r\n\r\nXuất xứ: Bát Tràng - Việt Nam\r\n\r\nDung tích: mỗi chóe khoảng 10l nước\r\n\r\nSản phẩm được vẽ tay hoàn toàn trên nền chất liệu sứ Bát Tràng cao cấp.', 2900000, '2500000', 'binhsutrungbay4.jpg', '10', '2018-02-16 16:29:08', '2018-02-16 16:29:08'),
(33, 'Đèn dầu thờ - dáng đèn đĩa - men lam cổ - cao 20 cm', 6, 'Theo thông tục của người Châu Á nói chung và người Việt Nam nói riêng, đèn dầu là vật thờ cúng không thể thiếu, tượng trưng cho chữ \"hỏa\" (lửa), tạo không khí ấm áp và tôn vinh sức mạnh. Đèn dầu là nét đẹp tín ngưỡng và mang ý nghĩa phong thủy. Do đó đèn dầu luôn được đặt ở vị trí ưu tiên trên bàn thờ ở các gia đình hoặc đình chùa để \"giữ lửa\" và để lấy lửa thắp hương trong các kì cúng lễ hay giỗ chạp.\r\n\r\nSản phẩm đèn dầu hoàn toàn được vẽ thủ công nhờ đôi bàn tay tài hoa khéo léo của người thợ làng gốm, kết hợp với bọc đồng tạo sức hút riêng cho sản phẩm.', 400000, NULL, 'den-dau-tho-den-dau-tho-dang-den-dia-men-lam-co-cao-20-cm-22955-1.jpg', '2', '2018-02-25 20:04:14', '2018-02-25 20:04:14'),
(34, 'Bộ ấm chén thờ - Men rạn cổ', 6, 'Bộ sản phẩm gồm: \r\n1 ấm\r\n5 chén\r\n1 đĩa kê\r\n\r\nBộ sản phẩm dùng để thờ cúng.\r\n\r\nSản phẩm được làm thủ công hoàn toàn bởi đôi bàn tay khéo léo của người thợ lành nghề làng gốm. Họa tiết đào đắp nổi hoàn toàn bằng tay nên rất tinh tế.', 300000, '250000', 'docung1.jpg', '10', '2018-02-25 20:05:27', '2018-03-06 23:27:15'),
(35, 'Chóe men lam cổ vẽ hoa dây - cao 50cm', 5, 'Thông tin sản phẩm:\r\n\r\nXuất xứ: Bát Tràng - Việt Nam\r\n\r\nKích thước: cao 50cm\r\n\r\nDung tích : 20 lít / chiếc\r\n\r\nChất liệu: sứ cao cấp, men lam cổ\r\n\r\nChóe men lam vẽ hoa dây làm hoàn toàn thủ công bởi những người thợ lành nghề của Bát Tràng tạo nên SP đẹp, hoàn chỉnh. Sản phẩm được vẽ tay 100 phần trăm tạo nét mềm mại, tinh tế. Họa tiết phong cảnh sơn thuỷ hữu tình thoáng, giúp tạo nên tổng thể đẹp\r\n\r\nĐôi chóe có thể dùng để ngâm rượu kết hợp với trưng bày trong phòng khách hoặc có thể làm quà biếu, quà tặng hợp lý cho người thân, bạn bè mừng tân gia hay trong những dịp đặc biệt, quan trọng.', 400000, NULL, 'banner1.jpg', '10', '2018-03-01 09:07:10', '2018-03-01 09:07:10'),
(36, 'Bộ ấm trà kim quy khắc hoa mai - đầy đủ phụ kiệ', 1, 'Hotline: 0868.26.26.26Email: sales@battrangonline.vnKiểm tra đơn hàng\r\nDanh mục sản phẩm\r\n \r\nNhập mã hoặc tên sản phẩm\r\n0\r\nGiỏ hàng\r\n\r\nẤm chén gốm Bộ ấm trà kim quy khắc hoa mai - đầy đủ phụ kiện\r\n Bộ ấm trà kim quy khắc hoa mai - đầy đủ phụ kiện Mã: 24034\r\n \r\n \r\nBộ ấm trà kim quy khắc hoa mai - đầy đủ phụ kiện\r\n\r\n990,000đ\r\n- 10%890.000\r\n\r\n(Giá trên chưa bao gồm VAT và phí vận chuyển)\r\n\r\nMiễn phí vận chuyển nội thành Hà Nội\r\n\r\nMua sản phẩm - Mã 24034\r\n\r\nTHÔNG TIN GIAO HÀNG THÔNG TIN SẢN PHẨM\r\nBộ sản phẩm bao gồm\r\nTên sản phẩm	Số lượng\r\nBộ ấm trà kim quy khắc hoa mai	1\r\nBộ phụ kiện hoa mai 1	1\r\n>>> Tác dụng của trà xanh>>> Các bước pha trà xanh ngon đúng cách\r\nSẢN PHẨM BAO GỒM\r\n\r\n\r\n\r\n-  1 ấm (dung tích 400ml)-  6 chén-  7 đĩa kê-  Hộp trà-  Gạt tàn-  Ống tăm-  Ống đổ nước thừa\r\nBộ sản phẩm được làm trên chất liệu gốm sứ Bát Tràng cao cấp. Màu men đen hết hợp với họa tiết hoa mai trắng tạo nét riêng có độc đáo của dòng sản phẩm. Khi sử dụng bạn sẽ thấy hết ưu điểm của dòng sản phẩm cao cấp này: dễ dàng chùi rửa, không bám nước chè, họa tiết đồng điệu từ ấm, chén đến phụ kiện\r\n\r\nTrong văn hóa truyền thống, biểu tượng trúc mai cho hạnh phúc lứa đôi có thể được coi như một phong tục. Trước đây, nơi tổ chức lễ vu quy hay trong phòng \"hoa trúc\" đều trang trí trúc và mai (trúc là quân tử, mai là giai nhân). Nhiều gia đình chơi tranh, chơi đồ gốm, đồ sứ hoặc trạm khắc trúc mai trên đồ gỗ trong nhà, vừa là để trang trí vừa đề cao hạnh phúc gia đình. Các bậc trí giả và những người sành chơi mỗi khi đón xuân về không thể thiếu Nhất Chi Mai. Những người đam mê cây cảnh hầu như ai cũng thích trồng bộ cây tứ quý bề thế, đạt được những tiêu chí cơ bản nhất. Bắt guồn từ ý tưởng đó mà nghệ nhân làng gốm Bát Tràng đã khắc họa tinh tế tạo nên sản phẩm độc đáo.\r\n\r\nMỗi sản phẩm của gốm sứ Battrangonline.vn trước khi đến tay người tiêu dùng được tuyển chọn qua nhiều công đoạn, đảm bảo hàng chất lượng cao, giá thành hợp lý.\r\n\r\nNgoài ra các bạn còn có thể mua thêm khay với nhiều kiểu dáng và kích cỡ khác nhau.', 890000, NULL, 'banner2.jpg', '10', '2018-03-01 09:10:51', '2018-03-01 09:10:51'),
(37, 'Bộ ấm chén tử sa', 1, 'Ấm chén tử sa. sản xuất tại Bát Tràng.gồm có 1 ấm + 6 chén + 7 đĩa.chúng tôi còn rất nhiều mẫu ấm chén khác đa dạng về chủng loại và màu sắc', 1500000, '990000', 'botusa.jpg', '10', '2018-03-01 09:16:13', '2018-03-01 09:19:04'),
(38, 'BÌNH HOA  HỌA TIẾT SEN VÀNG', 7, 'Kích thước 25cm.\r\nGợi ý sử dụng: dùng cắm hoa trưng bày, trang trí nhà cửa trong các dịp lễ, tết. Làm quà tặng, quà biếu bạn bè, đồng nghiệp, người thân.\r\n\r\nLưu ý: Trành va đập mạnh', 1320000, NULL, 'hoa1.jpg', '10', '2018-03-06 23:51:29', '2018-03-06 23:51:29'),
(39, 'Bình hoa gốm sứ Cảnh Đức - Giang Tây cao cấp men đỏ', 7, 'Bộ sản phẩm bao gồm:	\r\n1 Bình hoa cao cấp1 Chân đế gỗ\r\nĐặc điểm chung:\r\nSKU	NO007HLAA1VEJ4VNAMZ-3164512\r\nMẫu mã	Bình Hoa\r\nKích thước sản phẩm (D x R x C cm)	64*16*33*22\r\nTrọng lượng (KG)	5\r\nSản xuất tại	Taiwan, China\r\nLoại hình bảo hành	No Warranty', 2290000, '2200000', 'hoa2.jpg', '10', '2018-03-06 23:54:03', '2018-03-06 23:54:49'),
(40, 'BÌNH HOA GỐM', 7, 'Bình hoa với chất liệu gốm sứ thuận lợi cho người dùng cho ngày tết  có thể cắm hoa cảnh ....', 5500000, '0', 'hoa3.jpg', '10', '2018-03-07 00:00:26', '2018-03-07 00:00:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `image`, `link`, `description`, `created_at`, `updated_at`) VALUES
(6, 'banner4.jpg', 'http://localhost/GomSu/public/detail/37', NULL, '2018-03-01 00:13:35', '2018-03-01 00:13:35'),
(7, 'banner3.jpg', 'http://localhost/GomSu/public/detail/35', NULL, '2018-03-01 00:13:41', '2018-03-01 00:13:41'),
(8, 'banner2.jpg', 'http://localhost/GomSu/public/detail/36', NULL, '2018-03-01 00:13:45', '2018-03-01 00:13:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin_user` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `admin_user`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Đức Kiên', 'kienndb@bkav.com', '$2y$10$82xDH74fYTjsxbl3BTgE7eqcXXryNRkebIVAzrt1rkgeX1qVOfu2G', '1', 'gt6XIcgSSmB6a6AwHRtdujyfjPiHydD7pMj8ztJscwjzg9gAGcNo7AzAsrkc', '2018-02-01 11:37:31', '2018-02-01 11:37:31'),
(2, 'thank', 'thank@gmail.com', '$2y$10$oOJWxqp/txGf89DHuefUBOmlkoNkEawmLgSOFkkCe/nmewzHewSGK', '0', 'YqncDna49MznbImG7wZxrFwltJFJj01BAvERobo24vU4txv9rvpWOg13Pi0Q', '2018-02-01 11:39:12', '2018-02-01 11:39:12'),
(3, 'Hậu Nguyễn', 'haunt42@wru.vn', '$2y$10$1GGI0eT7iCxQMzaAE10ZjeIB/mU852OiW.PNln0.lqjRsZR8m0C5K', '1', NULL, '2018-02-08 22:28:43', '2018-02-08 22:28:43'),
(4, 'Nguyễn Thị Hậu', 'thint42@wru.vn', '$2y$10$NlqN2Dz3/839QAD9prgFjej6wOkTo4tg9FcSdx2RZd8hMyAlT4nHa', '0', NULL, '2018-02-12 21:31:27', '2018-02-12 21:31:27'),
(5, 'ngoannguyen', 'ngoannt42@wru.vn', '$2y$10$Aivc/L8/PiYGk5tFtY8wMehHUJKbweNS64tQrFZuc.aQD1toqrKLW', '0', 'RYpmpWaoZac9seOhvgYOotspVsf9xTtVljQjRPY5vnkQ8SbSwuVuYukB6QRK', '2018-02-18 10:21:26', '2018-02-18 10:21:26'),
(6, 'thuy', 'thuyptt42@wru.vn', '$2y$10$NEB6EsSl9Gzs7He0aUAcfOcV9O4FA5IxH0xGA7HsAdPR9K8Y.c1UC', '0', NULL, '2018-02-28 16:07:39', '2018-02-28 16:07:39'),
(7, 'anh hau', 'anhdth42@wru.vn', '$2y$10$7NuFvcz6nWAM5oqUAqpI3OoMUIhefSmy4VtjeBVCzsz9XjKOR5zai', '0', NULL, '2018-02-28 22:00:47', '2018-02-28 22:00:47'),
(8, 'nguyễn thị nga', 'ngant42@wru.vn', '$2y$10$cstpk5PKbfJY3SsQF3KWK.DKQ.ZGJXFy.MUfjOOacgU4N01NHtUEy', '0', NULL, '2018-02-28 22:14:56', '2018-02-28 22:14:56');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_customer_idx` (`id_customer`);

--
-- Chỉ mục cho bảng `bill_details`
--
ALTER TABLE `bill_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_idx` (`id_product`),
  ADD KEY `fk_bills_idx` (`id_bill`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idproduct` (`idproduct`),
  ADD KEY `id_users` (`id_users`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_ibfk_1` (`cate_id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT cho bảng `bill_details`
--
ALTER TABLE `bill_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `fk_customer` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `bill_details`
--
ALTER TABLE `bill_details`
  ADD CONSTRAINT `bill_details_ibfk_1` FOREIGN KEY (`id_bill`) REFERENCES `bills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_product` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`idproduct`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cate_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
