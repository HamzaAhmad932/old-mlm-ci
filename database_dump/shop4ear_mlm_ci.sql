-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 03, 2019 at 09:28 PM
-- Server version: 5.7.25
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop4ear_mlm_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `c_date` varchar(100) NOT NULL,
  `m_date` varchar(100) NOT NULL,
  `c_by` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`, `c_date`, `m_date`, `c_by`, `status`) VALUES
(1, 'Cosmetics', '12:00:08pm', '', 'Admin', '1');

-- --------------------------------------------------------

--
-- Table structure for table `comission_seting`
--

CREATE TABLE `comission_seting` (
  `id` int(11) NOT NULL,
  `level_number` varchar(100) NOT NULL,
  `basic` varchar(100) NOT NULL,
  `standard` varchar(100) NOT NULL,
  `silver` varchar(100) NOT NULL,
  `gold` varchar(100) NOT NULL,
  `diamond` varchar(100) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comission_seting`
--

INSERT INTO `comission_seting` (`id`, `level_number`, `basic`, `standard`, `silver`, `gold`, `diamond`, `total`) VALUES
(1, '10', '15', '10', '10', '10', '10', 55),
(2, '9', '15', '10', '10', '10', '10', 55),
(3, '8', '15', '10', '10', '10', '10', 55),
(4, '7', '10', '10', '10', '10', '10', 50),
(5, '6', '10', '10', '10', '5', '5', 40),
(6, '5', '10', '10', '5', '5', '5', 35),
(7, '4', '10', '5', '5', '5', '0', 25),
(8, '3', '5', '5', '5', '0', '0', 15),
(9, '2', '5', '5', '0', '0', '0', 10),
(10, '1', '5', '0', '0', '0', '0', 5);

-- --------------------------------------------------------

--
-- Table structure for table `levels_settings`
--

CREATE TABLE `levels_settings` (
  `id` int(11) NOT NULL,
  `level_number` varchar(100) NOT NULL,
  `refer_for_level` varchar(100) NOT NULL,
  `package` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `levels_settings`
--

INSERT INTO `levels_settings` (`id`, `level_number`, `refer_for_level`, `package`) VALUES
(1, '1', '2', 'Basic'),
(2, ' 2', '4', 'Standard'),
(3, '3', '8', 'Silver'),
(4, '4', '16', 'Gold'),
(5, '5', '32', 'diamond'),
(6, '6', '64', 'diamond'),
(7, '7', '128', 'diamond'),
(8, '8', '256', 'diamond'),
(9, '9', '512', 'diamond'),
(10, '10', '10000000', 'diamond');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `id` int(11) NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pending_payments`
--

CREATE TABLE `pending_payments` (
  `id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `account_type` varchar(100) NOT NULL,
  `phone_number` int(100) NOT NULL,
  `withdraw_amount` int(100) NOT NULL,
  `selected_bank` varchar(100) NOT NULL,
  `bank_account_number` int(100) NOT NULL,
  `withdraw_bank_amount` int(100) NOT NULL,
  `date_time` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_code` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `basic_vol` varchar(100) NOT NULL,
  `booster_vol` varchar(100) NOT NULL,
  `purchase_cost` varchar(100) NOT NULL,
  `product_des` varchar(300) NOT NULL,
  `product_cat` varchar(100) NOT NULL,
  `related_product` varchar(100) NOT NULL,
  `img_name` varchar(100) NOT NULL,
  `img_path` varchar(100) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `net_amount` varchar(100) NOT NULL,
  `c_date` varchar(100) NOT NULL,
  `m_date` varchar(100) NOT NULL,
  `status` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `basic_vol`, `booster_vol`, `purchase_cost`, `product_des`, `product_cat`, `related_product`, `img_name`, `img_path`, `product_price`, `qty`, `discount`, `net_amount`, `c_date`, `m_date`, `status`) VALUES
(2, '1111', 'test', '100', '200', '500', 'testing', 'tes', 'test', 'Chrysanthemum2.jpg', './images/Chrysanthemum.jpg', '1000', '12', '34', '1000', '11:44:57am', '12:41:20pm', 1),
(3, 'CP-512', 'Cigarette Pant', '100', '400', '400', 'Ladies Cigarette Pant ', 'Ladies Wear', 'Bottom Wear', 'pro-2.png', './images/pro-2.png', '1500', '100', '0', '1500', '03:32:55pm', '02:39:23pm', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_address`
--

CREATE TABLE `shipping_address` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `cnic` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `img_name` varchar(100) NOT NULL,
  `img_path` varchar(100) NOT NULL,
  `c_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `img_name`, `img_path`, `c_date`) VALUES
(5, 'demo2.jpg', './images/demo.jpg', '2018-10-30 02:47:08am'),
(6, 'slider1.jpg', './images/slider1.jpg', '2018-10-30 02:47:26am'),
(9, 'slide-3.png', './images/slide-3.png', '2019-02-19 02:27:51pm'),
(10, 'slid098.jpg', './images/slid098.jpg', '2019-04-03 01:57:57pm');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cart_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `total_cart` int(11) NOT NULL DEFAULT '0',
  `is_shipped` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cart_id`, `userid`, `created_date`, `total_cart`, `is_shipped`) VALUES
(79, 2, '2019-01-24', 1, 0),
(80, 3, '2019-01-24', 1, 0),
(81, 8, '2019-01-25', 1, 0),
(82, 11, '2019-01-25', 1, 0),
(83, 18, '2019-02-19', 1, 0),
(84, 18, '2019-02-19', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart_product`
--

CREATE TABLE `tbl_cart_product` (
  `id` int(11) NOT NULL,
  `product_cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_price` double NOT NULL,
  `pv` text NOT NULL,
  `bv` text NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `color_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cart_product`
--

INSERT INTO `tbl_cart_product` (`id`, `product_cart_id`, `product_id`, `product_price`, `pv`, `bv`, `quantity`, `color_id`, `size_id`, `user_id`, `ip`) VALUES
(79, 79, 1111, 1000, '100', '200', 1, 0, 0, 2, '39.45.169.220'),
(80, 80, 1111, 1000, '100', '200', 1, 0, 0, 3, '39.45.169.220'),
(81, 81, 1111, 1000, '100', '200', 1, 0, 0, 8, '103.255.4.33'),
(82, 82, 1111, 1000, '100', '200', 1, 0, 0, 11, '103.255.4.33'),
(83, 83, 1111, 1000, '100', '200', 1, 0, 0, 18, '119.160.103.167'),
(84, 84, 0, 1500, '100', '400', 1, 0, 0, 18, '119.160.103.167');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `parent_id` int(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `cnic` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `comission` varchar(100) NOT NULL,
  `booster_com` varchar(100) NOT NULL,
  `referal_id` int(100) NOT NULL,
  `cur_level` varchar(22) NOT NULL,
  `type` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `parent_id`, `full_name`, `username`, `mobile`, `cnic`, `city`, `email`, `password`, `comission`, `booster_com`, `referal_id`, `cur_level`, `type`) VALUES
(157, 1, 3, 'admin', '', '03001234567', '331009876543', 'Lahore', 'admin@yahoo.com', 'admin', '', '', 0, '', 1),
(386, 2, 1, 'b', '', '12345688', '', '', 'b@gmail.com', '12', '', '', 1, '', 2),
(387, 3, 1, 'c', '', '12345688', '', '', 'c@gmail.com', '12', '17', '136', 1, '', 2),
(388, 4, 3, 'd', '', '21', '', '', 'd@gmail.com', '12', '', '', 3, '', 2),
(389, 5, 3, 'e', '', '43', '', '', 'e@gmail.com', '12', '', '', 3, '', 2),
(390, 6, 4, 'f', '', '21', '', '', 'f@gmail.com', '12', '', '', 3, '', 2),
(391, 7, 4, 'g', '', '21', '', '', 'g@gmail.com', '12', '', '', 3, '', 2),
(392, 8, 5, 'h', '', '21', '', '', 'h@gmail.com', '12', '', '', 3, '', 2),
(393, 9, 5, 'i', '', '12', '', '', 'i@gmail.com', '12', '', '', 3, '', 2),
(394, 10, 6, 'h', '', '12', '', '', 'h@gmail.com', '12', '', '', 3, '', 2),
(395, 11, 6, 'j', '', '32', '', '', 'j@gmail.com', '12', '', '', 3, '', 2),
(396, 12, 7, 'j', '', '32', '', '', 'j@gmail.com', '12', '', '', 3, '', 2),
(397, 13, 2, 'amjad', '', '0300', '', '', 'amjad@gmail.com', '12', '', '', 2, '', 2),
(398, 14, 7, '123', '', '0300', '', '', 'b@gmail.com', '12', '', '', 3, '', 2),
(399, 15, 123, '234', '', '12', '', '', 'c@gmail.com', '12', '', '', 123, '', 2),
(400, 16, 8, '', '', '', '', '', '', '', '', '', 0, '', 0),
(401, 17, 8, '', '', '', '', '', '', '', '', '', 0, '', 0),
(402, 18, 9, '18', '', '03239664304', '', '', 'test1@gmail.com', '123', '', '', 3, '', 2),
(403, 19, 9, '', '', '', '', '', '', '', '', '', 0, '', 0),
(404, 20, 10, '', '', '', '', '', '', '', '', '', 0, '', 0),
(405, 21, 10, '', '', '', '', '', '', '', '', '', 0, '', 0),
(406, 22, 11, '', '', '', '', '', '', '', '', '', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_level`
--

CREATE TABLE `users_level` (
  `id` int(11) NOT NULL,
  `cur_level` varchar(22) NOT NULL,
  `user_id` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_level`
--

INSERT INTO `users_level` (`id`, `cur_level`, `user_id`) VALUES
(53, 'None', '3'),
(54, 'Basic', '3'),
(55, 'Standard', '3'),
(56, 'Silver', '3'),
(57, 'Gold', '3'),
(58, 'diamond', '3'),
(59, 'None', '5'),
(60, 'None', '6'),
(61, 'None', '4'),
(62, 'None', '13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comission_seting`
--
ALTER TABLE `comission_seting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `levels_settings`
--
ALTER TABLE `levels_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pending_payments`
--
ALTER TABLE `pending_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_address`
--
ALTER TABLE `shipping_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `tbl_cart_product`
--
ALTER TABLE `tbl_cart_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_level`
--
ALTER TABLE `users_level`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comission_seting`
--
ALTER TABLE `comission_seting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `levels_settings`
--
ALTER TABLE `levels_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pending_payments`
--
ALTER TABLE `pending_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shipping_address`
--
ALTER TABLE `shipping_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `tbl_cart_product`
--
ALTER TABLE `tbl_cart_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=407;

--
-- AUTO_INCREMENT for table `users_level`
--
ALTER TABLE `users_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
