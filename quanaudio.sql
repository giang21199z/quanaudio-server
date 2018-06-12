-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 12, 2018 at 05:23 PM
-- Server version: 10.0.31-MariaDB-cll-lve
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanaudio.vn`
--

-- --------------------------------------------------------

--
-- Table structure for table `audio`
--

CREATE TABLE `audio` (
  `idaudio` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `condition` varchar(45) NOT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `description` text NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `image2` varchar(200) DEFAULT NULL,
  `image3` varchar(200) DEFAULT NULL,
  `image4` varchar(200) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL,
  `idtype` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `audio`
--

INSERT INTO `audio` (`idaudio`, `name`, `price`, `condition`, `brand`, `description`, `image`, `image2`, `image3`, `image4`, `updated`, `idtype`) VALUES
(1, 'LOA CA SOUND - F210', '7500000', 'Mới nguyên chiếc', 'Nhập khẩu', 'Mừng khai trương sale off 25%', 'loa-full-ca-sound.jpg', 'loa-full-ca-sound.jpg', 'loa-full-ca-sound.jpg', 'loa-full-ca-sound.jpg', '2018-04-21 13:28:10', 21),
(2, 'LOA CA SOUND - F212', '8000000', 'Mới nguyên chiếc', 'Nhập khẩu', 'Mừng khai trương sale off 25%', 'Loa-Full-ca-sound-KP-6012.jpg', 'Loa-Full-ca-sound-KP-6012.jpg', 'Loa-Full-ca-sound-KP-6012.jpg', 'Loa-Full-ca-sound-KP-6012.jpg', '2018-04-21 13:28:10', 21),
(3, 'LOA CA SOUND - F512', '6600000', 'Mới nguyên chiếc', 'Nhập khẩu', 'Mừng khai trương sale off 25%', 'LOA-FULL-DMX-CH12.jpg', 'LOA-FULL-DMX-CH12.jpg', 'LOA-FULL-DMX-CH12.jpg', 'LOA-FULL-DMX-CH12.jpg', '2018-04-21 13:28:10', 21),
(4, 'LOA CA SOUND - H12', '11500000', 'Mới nguyên chiếc', 'Nhập khẩu', 'Mừng khai trương sale off 25%', 'VANG-SO-CA-SOUND-9900-PLUS.jpg', 'VANG-SO-CA-SOUND-9900-PLUS.jpg', 'VANG-SO-CA-SOUND-9900-PLUS.jpg', 'VANG-SO-CA-SOUND-9900-PLUS.jpg', '2018-04-21 13:28:10', 21),
(5, 'LOA CA SOUND - K610', '3100000', 'Mới nguyên chiếc', 'Nhập khẩu', 'Mừng khai trương sale off 20%', 'VANG-SO-CA-SOUND-8800.jpg', 'VANG-SO-CA-SOUND-8800.jpg', 'VANG-SO-CA-SOUND-8800.jpg', 'VANG-SO-CA-SOUND-8800.jpg', '2018-04-21 13:28:10', 21),
(6, 'LOA CA SOUND - K710', '6200000', 'Mới nguyên chiếc', 'Nhập khẩu', 'Mừng khai trương sale off 20%', 'Micro-Vina-KTV-USS-900.jpg', 'Micro-Vina-KTV-USS-900.jpg', 'Micro-Vina-KTV-USS-900.jpg', 'Micro-Vina-KTV-USS-900.jpg', '2018-04-21 13:28:10', 21),
(7, 'CA KP6012', '6600000', 'Mới', 'Nhập khẩu nguyên chiếc', 'Sale off 25%', 'Micro-Vina-KTV-USS-900.jpg', 'Micro-Vina-KTV-USS-900.jpg', 'Micro-Vina-KTV-USS-900.jpg', 'Micro-Vina-KTV-USS-900.jpg', '2018-06-01 17:00:00', 21),
(9, 'LOA SOUND DMX CH12', '22500000', 'Mới', 'Nhập khẩu nguyên chiếc', 'Mừng sale off 25%', 'Micro-Vina-KTV-USS-900.jpg', 'Micro-Vina-KTV-USS-900.jpg', 'Micro-Vina-KTV-USS-900.jpg', 'Micro-Vina-KTV-USS-900.jpg', '2018-06-26 17:00:00', 21),
(10, 'Main APV 4.6', '7500000', 'Mới', 'Nhập khẩu', '4 kênh - 600w/1 kênh\r\nbảo hành 12 tháng', 'main.png', 'main.png', 'main.png', 'main.png', NULL, 23),
(11, 'Main CA 2700', '8000000', 'Mới', 'Nhập khẩu', '2 kênh - 700w/1 kênh\r\nbảo hành 12 tháng\nSale off 25%', 'main.png', 'main.png', 'main.png', 'main.png', NULL, 23),
(12, 'Main CA 2900', '9500000', 'Mới', 'Nhập khẩu', '2 kênh - 900w/1 kênh\r\nbảo hành 12 tháng\nSale off 25%', 'main.png', 'main.png', 'main.png', 'main.png', NULL, 23),
(13, 'Main CA 4700', '14200000', 'Mới', 'Nhập khẩu', '4 kênh - 700w/1 kênh\r\nbảo hành 12 tháng\nSale off 25%', 'main.png', 'main.png', 'main.png', 'main.png', NULL, 23),
(14, 'Main CA 4900', '15400000', 'Mới', 'Nhập khẩu', '4 kênh - 900w/1 kênh\r\nbảo hành 12 tháng\nSale off 25%', 'main.png', 'main.png', 'main.png', 'main.png', NULL, 23),
(15, 'Main XT 650', '5500000', 'Mới', 'Nhập khẩu', '2 kênh - 650/1 kênh\r\nbảo hành 12 tháng', 'main.png', 'main.png', 'main.png', 'main.png', NULL, 23),
(16, 'MIC QTA QS-980', '3200000', 'Mới', 'Nhập khẩu', 'MICRO KHÔNG DÂY', 'Micro-Vina-KTV-USS-900.jpg', 'Micro-Vina-KTV-USS-900.jpg', 'Micro-Vina-KTV-USS-900.jpg', 'Micro-Vina-KTV-USS-900.jpg', '0000-00-00 00:00:00', 24),
(17, 'MIC Vina 939', '400000', 'Mới', 'Nhập khẩu', 'MICRO Có DÂY', 'Micro-Vina-KTV-USS-900.jpg', 'Micro-Vina-KTV-USS-900.jpg', 'Micro-Vina-KTV-USS-900.jpg', 'Micro-Vina-KTV-USS-900.jpg', NULL, 24),
(18, 'MIC Vina Uss600', '2500000', 'Mới', 'Nhập khẩu', 'MICRO KHÔNG DÂY', 'Micro-Vina-KTV-USS-900.jpg', 'Micro-Vina-KTV-USS-900.jpg', 'Micro-Vina-KTV-USS-900.jpg', 'Micro-Vina-KTV-USS-900.jpg', NULL, 24),
(19, 'MIC Vina Uss900', '4000000', 'Mới', 'Nhập khẩu', 'MICRO KHÔNG DÂY', 'Micro-Vina-KTV-USS-900.jpg', 'Micro-Vina-KTV-USS-900.jpg', 'Micro-Vina-KTV-USS-900.jpg', 'Micro-Vina-KTV-USS-900.jpg', NULL, 24),
(20, 'MIC Vina Uss1000', '4800000', 'Mới', 'Nhập khẩu', 'MICRO KHÔNG DÂY', 'Micro-Vina-KTV-USS-900.jpg', 'Micro-Vina-KTV-USS-900.jpg', 'Micro-Vina-KTV-USS-900.jpg', 'Micro-Vina-KTV-USS-900.jpg', NULL, 24),
(21, 'MIC Vina V10', '6000000', 'Mới', 'Nhập khẩu', 'MICRO KHÔNG DÂY', 'Micro-Vina-KTV-USS-900.jpg', 'Micro-Vina-KTV-USS-900.jpg', 'Micro-Vina-KTV-USS-900.jpg', 'Micro-Vina-KTV-USS-900.jpg', NULL, 24);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `idcart_item` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `idcart_item`, `iduser`, `updated`) VALUES
(16, 25, 29, '2018-05-05 16:17:26'),
(17, 26, 29, '2018-05-05 16:17:26'),
(18, 27, 29, '2018-05-05 16:17:27'),
(19, 29, 31, '2018-05-05 16:22:28'),
(20, 30, 31, '2018-05-05 16:22:28'),
(21, 31, 31, '2018-05-05 16:22:28'),
(22, 32, 32, '2018-05-05 16:25:12'),
(23, 33, 32, '2018-05-05 16:25:12'),
(24, 34, 32, '2018-05-05 16:25:13'),
(25, 35, 33, '2018-05-05 16:26:19'),
(26, 36, 33, '2018-05-05 16:26:19'),
(27, 37, 33, '2018-05-05 16:26:19'),
(28, 38, 34, '2018-05-05 16:26:49'),
(29, 39, 34, '2018-05-05 16:26:49'),
(30, 40, 34, '2018-05-05 16:26:50'),
(31, 41, 37, '2018-05-05 17:01:45'),
(32, 42, 37, '2018-05-05 17:01:45'),
(33, 43, 37, '2018-05-05 17:01:45'),
(34, 44, 38, '2018-05-05 17:02:08'),
(35, 45, 38, '2018-05-05 17:02:08'),
(38, 48, 39, '2018-05-05 17:54:22'),
(39, 49, 39, '2018-05-05 17:54:22'),
(42, 52, 40, '2018-05-05 17:54:35'),
(43, 53, 40, '2018-05-05 17:54:35'),
(44, 54, 41, '2018-05-05 17:54:35'),
(46, 56, 41, '2018-05-05 17:54:36'),
(50, 60, 42, '2018-05-05 17:55:49'),
(51, 61, 42, '2018-05-05 17:55:49'),
(54, 64, 43, '2018-05-05 17:56:20'),
(55, 65, 43, '2018-05-05 17:56:20'),
(58, 68, 44, '2018-05-05 17:57:31'),
(59, 69, 44, '2018-05-05 17:57:31'),
(62, 72, 45, '2018-05-05 17:58:37'),
(63, 73, 45, '2018-05-05 17:58:37'),
(66, 76, 46, '2018-05-05 17:59:13'),
(67, 77, 46, '2018-05-05 17:59:14'),
(70, 80, 47, '2018-05-05 17:59:38'),
(71, 81, 47, '2018-05-05 17:59:38'),
(74, 84, 48, '2018-05-05 18:01:55'),
(75, 85, 48, '2018-05-05 18:01:55'),
(78, 88, 49, '2018-05-05 18:03:51'),
(79, 89, 49, '2018-05-05 18:03:51'),
(82, 92, 50, '2018-05-05 18:04:17'),
(83, 93, 50, '2018-05-05 18:04:18'),
(86, 96, 51, '2018-05-05 18:05:02'),
(87, 97, 51, '2018-05-05 18:05:02'),
(90, 100, 52, '2018-05-05 18:05:16'),
(91, 101, 52, '2018-05-05 18:05:16'),
(94, 104, 53, '2018-05-05 18:05:18'),
(95, 105, 53, '2018-05-05 18:05:18'),
(98, 108, 54, '2018-05-05 18:05:20'),
(99, 109, 54, '2018-05-05 18:05:20'),
(102, 112, 55, '2018-05-05 18:07:13'),
(103, 113, 55, '2018-05-05 18:07:13'),
(106, 116, 56, '2018-05-05 18:08:18'),
(107, 117, 56, '2018-05-05 18:08:18'),
(110, 120, 57, '2018-05-05 18:10:45'),
(111, 121, 57, '2018-05-05 18:10:45'),
(114, 124, 58, '2018-05-05 18:13:52'),
(115, 125, 58, '2018-05-05 18:13:52'),
(118, 128, 59, '2018-05-05 18:14:34'),
(119, 129, 59, '2018-05-05 18:14:34'),
(122, 132, 61, '2018-05-05 18:16:36'),
(123, 133, 61, '2018-05-05 18:16:36'),
(124, 134, 61, '2018-05-05 18:16:37'),
(126, 136, 62, '2018-05-05 18:22:00'),
(127, 137, 62, '2018-05-05 18:22:00'),
(128, 138, 62, '2018-05-05 18:22:00'),
(129, 139, 63, '2018-05-05 18:22:17'),
(130, 140, 64, '2018-05-05 18:34:50'),
(131, 141, 64, '2018-05-05 18:34:50'),
(133, 143, 65, '2018-05-05 18:35:28'),
(134, 144, 65, '2018-05-05 18:35:28'),
(135, 145, 66, '2018-05-05 18:46:20'),
(136, 146, 67, '2018-05-07 23:25:41'),
(137, 147, 68, '2018-05-12 22:20:49');

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

CREATE TABLE `cart_item` (
  `id` int(11) NOT NULL,
  `idaudio` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart_item`
--

INSERT INTO `cart_item` (`id`, `idaudio`, `amount`, `price`) VALUES
(19, 1, 2, 10),
(20, 1, 2, 10),
(21, 1, 2, 10),
(22, 1, 2, 10),
(23, 1, 2, 10),
(24, 1, 2, 10),
(25, 1, 2, 10),
(26, 2, 2, 10),
(27, 3, 2, 10),
(29, 1, 2, 10),
(30, 2, 2, 10),
(31, 3, 2, 10),
(32, 1, 2, 10),
(33, 2, 2, 10),
(34, 3, 2, 10),
(35, 1, 2, 10),
(36, 2, 2, 10),
(37, 3, 2, 10),
(38, 1, 2, 10),
(39, 2, 2, 10),
(40, 3, 2, 10),
(41, 1, 2, 10),
(42, 2, 2, 10),
(43, 3, 2, 10),
(44, 1, 1, 1),
(45, 3, 1, 123),
(48, 1, 1, 1),
(49, 3, 1, 123),
(52, 1, 1, 1),
(53, 3, 1, 123),
(54, 1, 1, 1),
(56, 3, 1, 123),
(60, 1, 1, 1),
(61, 3, 1, 123),
(64, 1, 1, 1),
(65, 3, 1, 123),
(68, 1, 1, 1),
(69, 3, 1, 123),
(72, 1, 1, 1),
(73, 3, 1, 123),
(76, 1, 1, 1),
(77, 3, 1, 123),
(80, 1, 1, 1),
(81, 3, 1, 123),
(84, 1, 1, 1),
(85, 3, 1, 123),
(88, 1, 1, 1),
(89, 3, 1, 123),
(92, 1, 1, 1),
(93, 3, 1, 123),
(96, 1, 1, 1),
(97, 3, 1, 123),
(100, 1, 1, 1),
(101, 3, 1, 123),
(104, 1, 1, 1),
(105, 3, 1, 123),
(108, 1, 1, 1),
(109, 3, 1, 123),
(112, 1, 1, 1),
(113, 3, 1, 123),
(116, 1, 1, 1),
(117, 3, 1, 123),
(120, 1, 1, 1),
(121, 3, 1, 123),
(124, 1, 1, 1),
(125, 3, 1, 123),
(128, 1, 1, 1),
(129, 3, 1, 123),
(132, 1, 1, 1),
(133, 2, 1, 12),
(134, 5, 1, 12345),
(136, 1, 1, 1),
(137, 2, 1, 12),
(138, 4, 1, 1234),
(139, 1, 1, 1),
(140, 5, 2, 24690),
(141, 6, 1, 123456),
(143, 1, 2, 2),
(144, 2, 2, 24),
(145, 1, 7, 7),
(146, 1, 2, 30000000),
(147, 6, 1, 4000000);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `idcategory` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`idcategory`, `name`) VALUES
(1, 'Tin tức bên lề'),
(2, 'Công trình hoàn thành');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `idnews` int(11) NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `description` text,
  `content` text,
  `image` varchar(200) NOT NULL,
  `updated` datetime DEFAULT CURRENT_TIMESTAMP,
  `idcategory` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`idnews`, `title`, `description`, `content`, `image`, `updated`, `idcategory`) VALUES
(1, 'TIẾT LỘ BÍ KÍP SỬ DỤNG ĐỒNG HỒ ĐEO TAY ĐÚNG CÁCH', '<p>Ngoài bảo dưỡng lau dầu định kì, việc sử dụng đúng cách cũng giúp chiếc đồng hồ của bạn chạy ổn định hơn. Đồng thời, hình thức cũng được giữ gìn theo năm tháng.</p>\r\n<p>Sau đây, PTS Watch Shop xin gửi đến các bạn một vài chú ý nhỏ trong việc sử dụng đồng hồ.</p>', '<p style=\"text-align: justify;\">Ngoài bảo dưỡng lau dầu định kì, việc sử dụng đúng cách cũng giúp chiếc đồng hồ của bạn chạy ổn định hơn. Đồng thời, hình thức cũng được giữ gìn theo năm tháng.</p><p style=\"text-align: justify;\">Sau đây, PTS Watch Shop xin gửi đến các bạn một vài chú ý nhỏ trong việc sử dụng đồng hồ.</p><p> </p><h4 style=\"text-align: justify;\"><span style=\"color: #ff0000;\">Chú ý trong hoạt động thường ngày</span></h4><p> </p><p dir=\"ltr\" style=\"text-align: justify;\">Của bền tại người. Đồng hồ dù tốt đến đâu nhưng nếu bạn không chú ý giữ gìn trong quá trình sử dụng sẽ khiến đồng hồ của bạn xuống cấp nhanh chóng. Một số lưu ý trong quá trình sinh hoạt hàng ngày bạn cần nhớ:</p><p dir=\"ltr\" style=\"text-align: justify;\">Tránh sử dụng hoặc để đồng hồ ở những nơi có nhiều từ trường như loa, đài, tivi… Nếu tính chất công việc phải tiếp xúc với máy tính trong một thời gian dài bạn có thể đứng dậy nghỉ định kỳ mỗi lần 10-15 phút. Vừa đảm bảo sức khỏe của bạn cũng đồng thời cho đồng hồ hạn chế bị nhiễm từ.</p><p dir=\"ltr\" style=\"text-align: justify;\">Đối với đồng hồ Automatic, năng lượng của đồng hồ được tích trữ từ chuyển động của cổ tay. Nên đeo đồng hồ từ 8 – 10 tiếng/ngày (với hoạt động bình thường) để bảo đảm nguồn năng lượng đủ cho đồng hồ hoạt động liên tục. Trường hợp đồng hồ có khả năng lên cót tay, bạn nên lên cót bằng tay (nút vặn) 15 – 20 vòng nếu trước đó ngừng đeo ít đeo hay ít hoạt động. Mục đích là cung cấp đủ năng lượng để đồng hồ hoạt động chính xác.</p><p dir=\"ltr\" style=\"text-align: justify;\">Tránh các hoạt động mạnh có thể làm va đập đồng hồ. Khi chơi thể thao không nên đeo đồng hồ ngoại trừ các loại đồng hồ chuyên dụng.</p><p dir=\"ltr\" style=\"text-align: justify;\">Không để đồng hồ tiếp xúc trực tiếp với hóa chất, mỹ phẩm, nước hoa, chất tẩy rửa … Những hóa chất ấy có thể làm biến dạng dây, vỏ, vòng đệm chống nước của đồng hồ.</p><p dir=\"ltr\" style=\"text-align: justify;\">Không để đồng hồ ở nơi có nhiệt độ trên 60 độ C và dưới 0 độ C; tránh thay đổi nhiệt độ đột ngột để đảm bảo đồng hồ hoạt động được chính xác.</p><p> </p><h4 style=\"text-align: justify;\"><span style=\"color: #ff0000;\">Chú ý khi tiếp xúc với nước</span></h4><p dir=\"ltr\" style=\"text-align: justify;\">Sử dụng đồng hồ trong việc bơi lội hay chỉ đơn giản khi rửa tay, tắm rửa bạn cũng cần phải lưu ý một số vấn đề sau.</p><p dir=\"ltr\" style=\"text-align: justify;\">Mỗi mức độ chịu nước tương ứng với những tình huống được phép sử dụng đồng hồ khác nhau. Khi sử dụng đặc biệt phải chú ý đến thông số này.</p><p dir=\"ltr\" style=\"text-align: justify;\">Với những chiếc đồng hồ có nhiều chức năng và nút bấm, tuyệt đối không bấm nút khi ở dưới nước.</p><p dir=\"ltr\" style=\"text-align: justify;\">Kiểm tra tình trạng núm vặn thường xuyên, vị trí đúng là ở nấc trong cùng. Trong quá trình sử dụng, núm rất dễ mắc vào chỉ áo hay các tác động bên ngoài và bị kéo ra khiến nước hoặc bụi bẩn lọt vào ngoài ý muốn.</p><p dir=\"ltr\" style=\"text-align: justify;\">Độ kín nước của đồng hồ không phải là vĩnh viễn. Nó có thể bị ảnh hưởng bởi sự lão hóa của các vòng đệm chống nước hoặc bị va đập. Nên để sử dụng đồng hồ đúng cách, chúng tôi lưu ý các bạn nên kiểm tra độ kín nước của đồng hồ 1 lần/năm tại các trung tâm bảo hành uy tín. Thay pin, lau dầu cũng ảnh hưởng tới độ kín nước. Vì vậy, nên chọn các cửa hàng, trung tâm uy tín, có chuyên môn cao để thực hiện chính xác nhất.</p><p dir=\"ltr\" style=\"text-align: justify;\">Đặc biệt, đối với đồng hồ lặn, ngay sau khi bơi dưới nước, luôn rửa đồng hồ bằng nước ẩm và dùng khăn vải mềm lau khô. Chú ý, tuyệt đối không được dùng nước nóng bốc hơi ngay tại vòi.</p><p> </p><h4 style=\"text-align: justify;\"><span style=\"color: #ff0000;\">Một số chú ý khác cần nhớ</span></h4><p> </p><p dir=\"ltr\" style=\"text-align: justify;\">Ngoài những lưu ý thông thường nêu trên, một số kinh nghiệm bảo quản nhỏ cũng giúp đồng hồ của bạn giữ được vẻ bền đẹp như mới.</p><p dir=\"ltr\" style=\"text-align: justify;\">Vệ sinh đồng hồ thường xuyên bằng cách lau rửa đồng hồ hàng tuần bằng nước ấm với xà phòng có tính kiềm nhẹ để làm sạch bụi bẩn và muối đọng do mồ hôi tiết ra.</p><p dir=\"ltr\" style=\"text-align: justify;\">Thực hiện bảo dưỡng đồng hồ cơ và thay pin cho đồng hồ Quartz định kỳ sẽ giúp bộ máy hoạt động trơn tru. Thông thường với đồng hồ Quartz nên thay pin 2-3 năm một lần. Với những chiếc đồng hồ Automatic, tùy thuộc vào khuyến cáo của từng hãng. 2-3 năm đối với máy Nhật và 3-5 năm đối với máy Thụy Sỹ. Cá biệt có những bộ máy tinh xảo 8 năm mới cần phải bảo dưỡng.</p><p dir=\"ltr\" style=\"text-align: justify;\">Trên đây là những kiến thức không thể bỏ qua trong cách sử dụng đồng hồ. Các bạn có thể theo dõi các bài viết của PTS Watch Shop trên trang web của chúng tôi để có thêm nhiều kiến thức bổ ích.</p>', 'news1.jpg', '2018-05-07 22:57:03', 1),
(2, 'MẸO TÍNH KÍCH THƯỚC MẶT ĐỒNG HỒ THEO CHU VI CỔ TAY', '<p>Bạn muốn mua một chiếc đồng hồ đẹp nhưng lo sợ mặt đồng hồ quá to hoặc quá bé so với cổ tay? Dưới đây là cách tính kích thước mặt đồng hồ theo chu vi cổ tay</p>', '<h4 class=\"knc-sapo\" style=\"text-align: justify;\">Bạn muốn mua một chiếc đồng hồ đẹp nhưng lo sợ mặt đồng hồ quá to hoặc quá bé so với cổ tay? Dưới đây là cách tính kích thước mặt đồng hồ theo chu vi cổ tay</h4><div id=\"ContentDetail\" class=\"knc-content\"><p style=\"text-align: justify;\">Đồng hồ cũng như quần áo, giày dép. Muốn đeo đẹp phải phù hợp với màu da, số đo vóc dáng. Vì vậy, trước khi mua hãy chú ý đến việc chọn size mặt đồng hồ.</p><p> </p><h5 style=\"text-align: justify;\"><span style=\"color: #ff0000;\"><strong>Mặt đồng hồ có những kích thước phổ biến nào?</strong></span></h5><p> </p><p style=\"text-align: justify;\">Đồng hồ cho nữ giới:</p><p style=\"text-align: justify;\">- Cỡ nhỏ (Women\'s Mini): 23 - 25mm</p><p style=\"text-align: justify;\">- Cỡ phổ biến (Women\'s Regular): 26 - 29mm</p><p style=\"text-align: justify;\">- Cỡ lớn (Mid size): 34-36mm</p><p> </p><p style=\"text-align: justify;\">Đồng hồ cho nam giới:</p><p style=\"text-align: justify;\">- Cỡ thường (Men\'s): 37 - 39 mm</p><p style=\"text-align: justify;\">- Cỡ thể thao (Men\'s Sport): 40 - 42 mm</p><p style=\"text-align: justify;\">- Cỡ lớn (Men XL): 45 mm</p><p style=\"text-align: justify;\">Đồng hồ dành cho nam có size khoảng từ 34 - 50 mm. Đồng hồ dành cho nữ có size khoảng 23 - 38 mm. Tuy nhiên, thực tế, rất nhiều cô gái thích đeo đồng hồ Oversize nhằm thể hiện sự cá tính và nhiều nam giới (đặc biệt ở châu Á) có cổ tay khá bé. Trong những trường hợp này, chọn Midsize (34 - 36mm) là cách tốt nhất.</p><p style=\"text-align: justify;\">Nếu bạn mua đồng hồ để tặng và không biết chính xác cỡ cổ tay của người đeo, có thể chọn trong mức an toàn với nam là 39 - 42 mm và với nữ là 29 - 34 mm.</p><p style=\"text-align: justify;\">Khi mua, kích thước mặt đồng hồ rất quan trọng. Tuy nhiên, do thiết kế của đồng hồ (đồ dạy, kiểu tai) nên cần chú ý thêm các tham số bên dưới. Rất nhiều loại đồng hồ có mặt to, dày nhưng phần tai (lug) và dây đeo lại khá thon, ôm.Vì vậy, nên đo cả tai đồng hồ.</p><p> </p><h5 style=\"text-align: justify;\"><span style=\"color: #ff0000;\"><strong>Đo độ dài dây đồng hồ bằng chu vi cổ tay</strong></span></h5><p style=\"text-align: justify;\">- Đồng hồ nữ thường có dây dài từ 171 đến 203 mm.</p><p style=\"text-align: justify;\">- Đồng hồ nam thường có dây dài từ 196 đến 241 mm.</p><p style=\"text-align: justify;\">Các loại dây da thường được đục sẵn các lỗ vừa khít với cổ tay người đeo. Với dây kim loại thường là chuỗi mắt xích nối vào nhau. Vì vậy, khi bạn mang ra cửa hàng để cắt bớt dây nên nhớ giữ lại các mắt xích phòng khi size cổ tay thay đổi hoặc dây bị đứt, sẽ có sẵn mắt xích để thay thế.</p><p style=\"text-align: justify;\">Tỉ lệ cân đối tham khảo giữa mặt và chu vi cổ tay là 4.0-5.0.</p><p style=\"text-align: justify;\">- Cách tính tỉ lệ: Lấy chiều dài dây đồng hồ (hay chính là chu vi của cổ tay bạn) chia cho đường kính mặt đồng hồ.</p><p style=\"text-align: justify;\">+ Chu vi cổ tay / 4.5 = cỡ đồng hồ lớn nhất</p><p style=\"text-align: justify;\">+ Chu vi cổ tay / 4 = cỡ đồng hồ vừa</p><p style=\"text-align: justify;\">+ Chu vi cổ tay / 5 cỡ đồng hồ bé nhất</p><p style=\"text-align: justify;\">Bạn có thể đo chu vi của cổ tay bạn bằng cách lấy 1 đoạn dây, rồi quần quanh cổ tay thành1 vòng tròn, đánh dấu vị trí 2 đầu dây gặp nhau và cuối cùng là đo chiều dài của đoạn dây đã đó, sẽ được chu vi của cổ tay.</p></div>', 'news1.jpg', '2018-05-07 22:59:18', 1),
(3, 'Công trình hoàn thành', 'Công trình hoàn thành', 'Công trình hoàn thành', 'news1.jpg', '2018-05-12 20:47:57', 2);

-- --------------------------------------------------------

--
-- Table structure for table `phonenumbers`
--

CREATE TABLE `phonenumbers` (
  `id` int(11) NOT NULL,
  `number` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phonenumbers`
--

INSERT INTO `phonenumbers` (`id`, `number`) VALUES
(1, ''),
(2, '');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `idslide` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `content` text,
  `image` varchar(200) DEFAULT NULL,
  `advertisement` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`idslide`, `title`, `description`, `content`, `image`, `advertisement`) VALUES
(1, 'quanaudio.vn.vn', 'Chuẩn không cần chỉnh.', 'Chúng ta không thể chống lại những thằng ngu vì chúng quá đông và nguy hiểm.', 'assets/images/slide/slide-1.jpg', 'assets/images/home/pricing.png'),
(2, 'quanaudio.vn.vn', 'Xấu nhưng biết phấn đấu.', 'úc trước anh/em đẹp trai/xinh lắm bây giờ thì đỡ nhiều rồi.', 'assets/images/slide/slide-2.jpg', 'assets/images/home/pricing.png'),
(3, 'quanaudio.vn.vn', 'Tình yêu là vĩnh cửu.', 'Đừng tự ti vì mình nghèo mà vẫn giỏi mà hãy tự hỏi tại sao mình giỏi mà mình vẫn nghèo. Nhục không phải là nghèo khó , nhưng nghèo khó thì thật là nhục.', 'assets/images/slide/slide-3.jpg', 'assets/images/home/pricing.png');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `idtype` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `idparent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`idtype`, `name`, `idparent`) VALUES
(21, 'Loa', 0),
(22, 'Karaoke', 0),
(23, 'Main', 0),
(24, 'Micro', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `fullname` varchar(120) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `address` varchar(200) NOT NULL,
  `message` varchar(2000) NOT NULL,
  `updated` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`iduser`, `fullname`, `phone`, `email`, `address`, `message`, `updated`) VALUES
(22, 'NGUYEN DINH GIANG', '01649607996', 'giangnd.ptit2@gmail.com', 'Haf noi', 'buy', '2018-05-05 16:08:54'),
(23, 'NGUYEN DINH GIANG', '01649607996', 'giangnd.ptit2@gmail.com', 'Haf noi', 'buy', '2018-05-05 16:09:49'),
(24, 'NGUYEN DINH GIANG', '01649607996', 'giangnd.ptit2@gmail.com', 'Haf noi', 'buy', '2018-05-05 16:11:02'),
(25, 'NGUYEN DINH GIANG', '01649607996', 'giangnd.ptit2@gmail.com', 'Haf noi', 'buy', '2018-05-05 16:11:52'),
(26, 'NGUYEN DINH GIANG', '01649607996', 'giangnd.ptit2@gmail.com', 'Haf noi', 'buy', '2018-05-05 16:12:04'),
(27, 'NGUYEN DINH GIANG', '01649607996', 'giangnd.ptit2@gmail.com', 'Haf noi', 'buy', '2018-05-05 16:12:47'),
(28, 'NGUYEN DINH GIANG', '01649607996', 'giangnd.ptit2@gmail.com', 'Haf noi', 'buy', '2018-05-05 16:13:04'),
(29, 'NGUYEN DINH GIANG', '01649607996', 'giangnd.ptit2@gmail.com', 'Haf noi', 'buy', '2018-05-05 16:17:26'),
(30, 'NGUYEN DINH GIANG', '01649607996', 'giangnd.ptit2@gmail.com', 'Haf noi', 'buy', '2018-05-05 16:21:59'),
(31, 'NGUYEN DINH GIANG', '01649607996', 'giangnd.ptit2@gmail.com', 'Haf noi', 'buy', '2018-05-05 16:22:27'),
(32, 'NGUYEN DINH GIANG', '01649607996', 'giangnd.ptit2@gmail.com', 'Haf noi', 'buy', '2018-05-05 16:25:12'),
(33, 'NGUYEN DINH GIANG', '01649607996', 'giangnd.ptit2@gmail.com', 'Haf noi', 'buy', '2018-05-05 16:26:18'),
(34, 'NGUYEN DINH GIANG', '01649607996', 'giangnd.ptit2@gmail.com', 'Haf noi', 'buy', '2018-05-05 16:26:49'),
(35, 'Nguyễn Đình Giang', '01649607996', 'giang21199z@gmail.com', 'Hà nội', 'Xin chào các bạn', '2018-05-05 16:48:22'),
(36, 'sdfg', 'sdfg', 'sdfg', 'sdfgsdfg', 'sdg', '2018-05-05 16:49:18'),
(37, 'NGUYEN DINH GIANG', '01649607996', 'giangnd.ptit2@gmail.com', 'Haf noi', 'buy', '2018-05-05 17:01:45'),
(38, 'gsdfg', 'sdfgsdfsdfg', 'gsdfgsdfgsd', 'sdfgsdfgfgsdfg', 'sdfgsdfg', '2018-05-05 17:02:08'),
(39, 'sdfg', 'sdfg', 'sdfg', 'sdfgsdfg', 'sdfg', '2018-05-05 17:54:22'),
(40, 'sdfg', 'sdfg', 'sdfg', 'sdfgsdfg', 'sdfg', '2018-05-05 17:54:35'),
(41, 'sdfg', 'sdfg', 'sdfg', 'sdfgsdfg', 'sdfg', '2018-05-05 17:54:35'),
(42, 'gsdf', 'sdfg', 'sdfg', 'sdfg', 'sdfgsdfg', '2018-05-05 17:55:49'),
(43, 'gsd', 'gsd', 'fgsd', 'sdfg', 'sdfg', '2018-05-05 17:56:20'),
(44, 'gsdf', 'gsd', 'fgs', 'dfg', 'dfgsdfg', '2018-05-05 17:57:31'),
(45, 'gsdf', 'gsdfg', 'sd', 'fgsdfg', 'fdasg', '2018-05-05 17:58:37'),
(46, 'gsdf', 'gsdfg', 'sd', 'fgsdfg', 'sdfg', '2018-05-05 17:59:13'),
(47, 'sdf', 'gs', 'dfgsdfg', 'sdfg', 'sdfg', '2018-05-05 17:59:38'),
(48, 'gsdf', 'gsdfg', 'sdfg', 'sdfgsdf', 'gsdfgg', '2018-05-05 18:01:55'),
(49, 'gsd', 'fsdf', 'gsd', 'fgsdf', 'gsdfg', '2018-05-05 18:03:51'),
(50, 'gsdf', 'gsd', 'sdfg', 'sdfg', 'sdfgsdfg', '2018-05-05 18:04:17'),
(51, 'gfds', 'gsdf', 'gsdfg', 'sdfg', 'sdfgsdfg', '2018-05-05 18:05:02'),
(52, 'gfds', 'gsdf', 'gsdfg', 'sdfg', 'sdfgsdfg', '2018-05-05 18:05:16'),
(53, 'gfds', 'gsdf', 'gsdfg', 'sdfg', 'sdfgsdfg', '2018-05-05 18:05:18'),
(54, 'gfds', 'gsdf', 'gsdfg', 'sdfg', 'sdfgsdfg', '2018-05-05 18:05:20'),
(55, 'gfdsg', 'sdfg', 'sdf', 'gsdfg', 'sdfg', '2018-05-05 18:07:13'),
(56, 'gsdfg', 'sdfg', 'sd', 'sdfgsdfg', 'sdfgsdfg', '2018-05-05 18:08:18'),
(57, 'sdfgs', 'dfg', 'sdfgs', 'dfgsdfg', 'sdfgdfg', '2018-05-05 18:10:45'),
(58, 'sgdfgsdfg', 'sdfg', 'sdfg', 'sdfgsdfg', 'sdfgsdfg', '2018-05-05 18:13:52'),
(59, 'gsdfg', 'sdf', 'gsd', 'fgsdfg', 'sdfgsd', '2018-05-05 18:14:34'),
(60, 'gsdf', 'gsdf', 'g', 'sdfg', 'sdfg', '2018-05-05 18:15:55'),
(61, 'gsdf', 'gsd', 'fgsdfg', 'sdfg', 'sdfg', '2018-05-05 18:16:36'),
(62, 'sfdg', 'sdf', 'sdf', 'gsdfg', 'sdfgs', '2018-05-05 18:22:00'),
(63, 'gsd', 'fgs', 'dfg', 'sdfg', 'sdfgsdfg', '2018-05-05 18:22:16'),
(64, 'gfds', 'sdfg', 'sdfg', 'sdfgsdfg', 'sdfgsdfg', '2018-05-05 18:34:50'),
(65, 'gsdfg', 'sdfg', 'sdfg', 'sdfgsd', 'fgsdfg', '2018-05-05 18:35:28'),
(66, 'g', 'gsdfg', 'sdfg', 'fgsdf', 'gsdfgsdfg', '2018-05-05 18:46:20'),
(67, 'giangnd', '01321313', 'gádlkj', 'jlsdfga', 'ádfasdf', '2018-05-07 23:25:41'),
(68, 'gdfsfg', 'sdfgsdfg', 'sdfgsd', 'fgsdfgsdf', 'gsdfgsdfg', '2018-05-12 22:20:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audio`
--
ALTER TABLE `audio`
  ADD PRIMARY KEY (`idaudio`,`idtype`),
  ADD KEY `fk_audio_type_idx` (`idtype`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idcart_item` (`idcart_item`),
  ADD KEY `iduser` (`iduser`),
  ADD KEY `iduser_2` (`iduser`),
  ADD KEY `idcart_item_2` (`idcart_item`);

--
-- Indexes for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idaudio` (`idaudio`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`idcategory`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`idnews`,`idcategory`),
  ADD KEY `fk_news_category1_idx` (`idcategory`);

--
-- Indexes for table `phonenumbers`
--
ALTER TABLE `phonenumbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`idslide`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`idtype`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audio`
--
ALTER TABLE `audio`
  MODIFY `idaudio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `idcategory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `idnews` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `phonenumbers`
--
ALTER TABLE `phonenumbers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `idslide` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `idtype` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `audio`
--
ALTER TABLE `audio`
  ADD CONSTRAINT `fk_audio_type` FOREIGN KEY (`idtype`) REFERENCES `type` (`idtype`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`idcart_item`) REFERENCES `cart_item` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`iduser`) REFERENCES `user` (`iduser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `cart_item_ibfk_1` FOREIGN KEY (`idaudio`) REFERENCES `audio` (`idaudio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `fk_news_category1` FOREIGN KEY (`idcategory`) REFERENCES `category` (`idcategory`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
