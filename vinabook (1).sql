-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2022 at 10:33 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vinabook`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `ma_admin` int(11) NOT NULL,
  `name_admin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gmail` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `user_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cat_id`, `cat_name`, `status_cat`) VALUES
(1, 'Sách Mới Hiệu', 1),
(2, 'Sách Trong Nước', 0),
(3, 'Sách Nước Ngoài', 0),
(4, 'Sách Thiếu Nhi', 0),
(5, 'Sách Văn Học', 0),
(6, 'Sách Khoa Học', 0),
(7, 'Sách Báo Chí', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `total_price` int(50) NOT NULL,
  `date` date NOT NULL,
  `transport_fee` int(11) NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone_num` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `httt` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `htvc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `total_price`, `date`, `transport_fee`, `status`, `email`, `phone_num`, `address`, `note`, `httt`, `htvc`, `user_id`) VALUES
(1, 1320000, '2022-12-05', 0, 'Giao hàng thành công', 'luan123@gmail.com', '0156498744', 'Vĩnh Phúc', '', 'Thanh toán tại cửa hàng', 'Giao hàng tiết kiệm', 2),
(2, 940000, '2022-12-05', 0, 'Chờ xử lý', 'luan123@gmail.com', '0156498744', 'Vĩnh Phúc', '', 'Thanh toán tại nhà', 'Giao hàng nhanh', 2),
(3, 390000, '2022-12-05', 0, 'Đang giao hàng', 'dinhquang02092000@gmail.com', '0869021162', 'Nam Định', '', 'Thanh toán tại nhà', 'Giao hàng nhanh', 1),
(4, 610000, '2022-12-07', 0, 'Đang giao hàng', 'huyhieu123456@gmail.com', '012345588', 'Nam Định', '', 'Thanh toán tại cửa hàng', 'Giao hàng nhanh', 3),
(5, 1050000, '2022-12-07', 0, 'Đang giao hàng', 'dinhquang02092000@gmail.com', '0869021162', 'Nam Định', '', 'Thanh toán tại cửa hàng', 'Giao hàng nhanh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_orderdetail`
--

CREATE TABLE `tbl_orderdetail` (
  `order_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_orderdetail`
--

INSERT INTO `tbl_orderdetail` (`order_id`, `pro_id`, `quantity`) VALUES
(1, 1, 3),
(1, 5, 3),
(2, 7, 1),
(2, 9, 3),
(3, 8, 1),
(3, 7, 3),
(4, 8, 3),
(4, 7, 1),
(5, 1, 2),
(5, 8, 3),
(5, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `post_slug` text COLLATE utf8_unicode_ci NOT NULL,
  `post_decs` text COLLATE utf8_unicode_ci NOT NULL,
  `post_image` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_name`, `post_slug`, `post_decs`, `post_image`) VALUES
(1, 'Khuyến Mãi nhân ngày trái đất', 'Nhân ngày trái đất', '', 'upload/images/images (2).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `pro_id` int(11) NOT NULL,
  `pro_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `original_price` int(11) NOT NULL,
  `promotional_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `short_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `detail_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `pro_image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cat_id` int(11) NOT NULL,
  `tacgia_id` int(11) NOT NULL,
  `status_pro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`pro_id`, `pro_name`, `original_price`, `promotional_price`, `quantity`, `short_desc`, `detail_desc`, `pro_image`, `cat_id`, `tacgia_id`, `status_pro`) VALUES
(1, 'Hoang Tu Be', 250000, 220000, 193, '', '', 'upload/images/sach1.jpg', 1, 17, 0),
(2, 'Truyện Kiều', 50000, 40000, 269, '', '', 'upload/images/sach2.jpg', 1, 10, 0),
(3, 'Tôi tài giỏi bạn cũng thế', 120000, 100000, 19, '', '', 'upload/images/sach4.jpg', 1, 16, 0),
(4, 'Giải bài tập giải tích 12', 40000, 32000, 96, 'Giải bài tập giải tích 12', '', 'upload/images/sach3.jpg', 1, 8, 0),
(5, 'Từ điển Anh - Việt', 250000, 220000, 47, 'Từ điển Anh - Việt', '', 'upload/images/sach5.jpg', 2, 10, 0),
(6, 'Những tấm lòng cao cả', 160000, 130000, 26, 'Những tấm lòng cao cả', '', 'upload/images/sach6.jpg', 3, 13, 0),
(7, 'Văn Học Thiếu Nhi Việt Nam', 79000, 70000, 78, 'Văn Học Thiếu Nhi Việt Nam', '', 'upload/images/sach7.jpg', 5, 4, 0),
(8, 'Cuốn Theo Chiều Gió', 210000, 180000, 37, 'Cuốn Theo Chiều Gió', '', 'upload/images/sach8.jpg', 3, 9, 0),
(9, 'Những cuộc phưu lưu của Huckleberry Finn', 330000, 290000, 12, 'Những cuộc phưu lưu của Huckleberry Finn', '', 'upload/images/sach9.jpg', 6, 8, 0),
(10, 'Tiếng Gọi Nơi Hoang Dã', 160000, 130000, 29, 'Tiếng Gọi Nơi Hoang Dã', '', 'upload/images/sach10.jpg', 3, 17, 0),
(11, 'Harry Potter ', 270000, 240000, 70, 'Harry Potter ', '', 'upload/images/sach11.jpg', 4, 9, 0),
(12, 'Những Người Khốn Khổ', 140000, 115000, 41, 'Những Người Khốn Khổ', '', 'upload/images/sach12.jpg', 3, 15, 0),
(13, 'The Spy', 790000, 690000, 28, '', '', 'upload/images/sach13.jpg', 6, 10, 0),
(14, 'Cá Nhân Trong Nước An Nam Xưa', 250000, 225000, 50, 'Cá Nhân Trong Nước An Nam Xưa', '', 'upload/images/sach14.jpg', 2, 7, 0),
(15, 'Cafe với người nổi tếng', 65000, 55000, 70, 'Cafe với người nổi tếng', '', 'upload/images/sach15.jpg', 2, 8, 0),
(16, 'Mẹ và Con', 250000, 210000, 75, 'Mẹ và Con', '', 'upload/images/sach16.jpg', 5, 6, 0),
(17, 'Gió lạnh đầu mùa', 55000, 40000, 99, 'Gió lạnh đầu mùa', '', 'upload/images/sach17.jpg', 2, 12, 0),
(18, 'Truyện Ngắn Nguyễn Công Hoan', 280000, 250000, 20, 'Truyện Ngắn Nguyễn Công Hoan', '', 'upload/images/sach18.jpg', 5, 11, 0),
(19, 'Tuyển Tập Nguyễn Công Hoan', 450000, 400000, 29, 'Tuyển Tập Nguyễn Công Hoan', '', 'upload/images/sach19.jpg', 5, 11, 0),
(20, 'Không gia đình', 50000, 40000, 70, '', '', 'upload/images/sach20.jpg', 4, 5, 0),
(21, 'Khoa học trong quả trứng', 160000, 130000, 75, 'Khoa học trong quả trứng', '', 'upload/images/sach21.jpg', 6, 4, 0),
(22, 'Từ vựng Tiếng Trung', 120000, 100000, 80, '', '', 'upload/images/sach22.jpg', 3, 10, 0),
(23, 'Hồ Chí Minh Nhật Kí Trong Tù', 160000, 130000, 50, '', '', 'upload/images/sach23.jpg', 5, 7, 0),
(24, 'Đời dũng cảm của Kim Đồng', 250000, 220000, 70, '', '', 'upload/images/sach24.jpg', 2, 10, 0),
(25, 'Tuổi Thơ Dữ Dội', 50000, 40000, 50, '', '', 'upload/images/sach25.jpg', 4, 2, 0),
(26, 'Lịch sử nước ta', 180000, 150000, 44, '', '', 'upload/images/sach26.jpg', 5, 7, 0),
(31, 'Sach Hay', 50000, 40000, 150, 'a', '<p>a</p>\r\n', 'upload/images/anh1.png', 1, 12, 0),
(32, 'Sách The Thao', 50000, 40000, 29, 'a', '<p>a</p>\r\n', 'upload/images/71a0MPvJ_4x.jpg', 4, 4, 1),
(33, 'Sách 123456', 50000, 40000, 29, '', '<p>a</p>\r\n', 'upload/images/04577a7528838b5-e1533171406321.jpg', 3, 11, 1),
(34, 'mã nguồn  mở', 4000, 4, 4, 'môn học', '', 'upload/images/71a0MPvJ_4x.jpg', 2, 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status`
--

CREATE TABLE `tbl_status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_status`
--

INSERT INTO `tbl_status` (`status_id`, `status_name`) VALUES
(1, 'Chờ xử lí'),
(2, 'Đang giao hang'),
(3, 'Giao hàng thành công'),
(4, 'Hủy hàng');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tacgia`
--

CREATE TABLE `tbl_tacgia` (
  `tacgia_id` int(11) NOT NULL,
  `tacgia_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_tacgia`
--

INSERT INTO `tbl_tacgia` (`tacgia_id`, `tacgia_name`) VALUES
(1, 'Nguyễn Nhật Ánh'),
(2, 'Nguyễn Minh Nhật'),
(3, 'Trang Hạ'),
(4, 'Anh Khang'),
(5, 'Gào'),
(6, 'Thạch Lam'),
(7, 'Hồ Chí Minh'),
(8, 'Đức Lân'),
(9, 'Hector Malot'),
(10, 'Kim Đồng'),
(11, 'Nguyễn Công Hoan'),
(12, 'Thạch Lam'),
(13, 'Mark Twain'),
(14, 'Jack'),
(15, 'Vector Hugo'),
(16, 'J. K. Rowling'),
(17, 'Gideon Raff'),
(18, 'Tề Mạc'),
(19, 'Hoài Thu');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `phone_num` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `rule_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `username`, `pass`, `fullname`, `email`, `gender`, `phone_num`, `address`, `rule_user`) VALUES
(1, 'quang0209', '25d55ad283aa400af464c76d713c07ad', 'Vũ Đình Quang', 'dinhquang02092000@gmail.com', 'Nam', '0869021162', 'Nam Định', 0),
(2, 'luan123', '25d55ad283aa400af464c76d713c07ad', 'Trần Chí Luân', 'luan123@gmail.com', 'Nam', '0156498744', 'Vĩnh Phúc', 0),
(3, 'Hieu123', '25d55ad283aa400af464c76d713c07ad', 'Huy Hiệu', 'huyhieu123456@gmail.com', 'Nam', '012345588', 'Khánh Hòa', 0),
(4, 'Hieu123', '25d55ad283aa400af464c76d713c07ad', 'Vũ Đình Quang', 'dinhquang02092000@gmail.com', 'Nam', '0869021162', 'Hà Nam Ninh', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`ma_admin`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD KEY `fk_cart1` (`pro_id`),
  ADD KEY `fk_cart2` (`user_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_orderuser` (`user_id`);

--
-- Indexes for table `tbl_orderdetail`
--
ALTER TABLE `tbl_orderdetail`
  ADD KEY `fk_order1` (`order_id`),
  ADD KEY `fk_order2` (`pro_id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `fk_pro1` (`cat_id`),
  ADD KEY `fk_pro2` (`tacgia_id`);

--
-- Indexes for table `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `tbl_tacgia`
--
ALTER TABLE `tbl_tacgia`
  ADD PRIMARY KEY (`tacgia_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `ma_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_status`
--
ALTER TABLE `tbl_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_tacgia`
--
ALTER TABLE `tbl_tacgia`
  MODIFY `tacgia_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `fk_cart1` FOREIGN KEY (`pro_id`) REFERENCES `tbl_product` (`pro_id`),
  ADD CONSTRAINT `fk_cart2` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `fk_orderuser` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`);

--
-- Constraints for table `tbl_orderdetail`
--
ALTER TABLE `tbl_orderdetail`
  ADD CONSTRAINT `fk_order1` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`order_id`),
  ADD CONSTRAINT `fk_order2` FOREIGN KEY (`pro_id`) REFERENCES `tbl_product` (`pro_id`);

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `fk_pro1` FOREIGN KEY (`cat_id`) REFERENCES `tbl_category` (`cat_id`),
  ADD CONSTRAINT `fk_pro2` FOREIGN KEY (`tacgia_id`) REFERENCES `tbl_tacgia` (`tacgia_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
