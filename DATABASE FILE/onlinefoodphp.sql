-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2023 at 05:38 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinefoodphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin@mail.com', '', '2023-02-18 07:34:15'),
(2, 'admin1', 'e10adc3949ba59abbe56e057f20f883e', 'admin1@mail.com', '', '2023-02-18 07:34:15');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(17, 5, 'Rice Bath', 'oured and tasty rice pulao recipe.', '45.00', '63d00c6217177.png'),
(18, 5, 'Idli', 'Surved chutney and sambar', '35.00', '63d00d691b2e8.png'),
(19, 6, 'Gobi Manchuri', 'Get ready to savor every bite of this tasty Gobi Manchurian! This popular Indian-Chinese recipe is filled with so much flavor and deliciousness.', '60.00', '63d00dfd26b49.png'),
(20, 6, 'Noodles', 'Chilli and Hot Noodles? ', '80.00', '63d00e61a08d2.png'),
(21, 7, 'Coffee', 'Delicious Hot Coffee is served here', '15.00', '63d00ecf00795.png'),
(22, 7, 'Burger', 'Perfectly fried corn and cheese patty paired along with jalapeo, onion, slice of cheese & crunchy lettuce dressed with cocktail sauce.', '40.00', '63d0105f13dc4.png'),
(23, 7, 'Sandwich', 'Consisting of vegetables, sliced cheese or meat, placed on or between slices of bread.', '90.00', '641887334ddbb.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(22, 42, 'in process', '', '2023-03-19 16:49:10'),
(23, 43, 'closed', '', '2023-03-20 16:13:06'),
(24, 43, 'rejected', '', '2023-03-20 16:19:36'),
(25, 45, 'in process', '', '2023-03-20 16:23:13'),
(26, 44, 'closed', '', '2023-03-20 16:24:10'),
(27, 46, 'in process', '', '2023-03-20 16:24:36'),
(28, 42, 'closed', '', '2023-03-20 16:31:22'),
(29, 42, 'in process', '', '2023-03-20 16:33:56'),
(30, 47, 'in process', '', '2023-03-20 16:35:34');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(5, 1, 'Snacks Canteen', 'mobilecanteen@gmail.com', '7896543212', 'mobilecanteen.com', '8am', '3pm', 'Mon-Sat', 'Next to Sports Complex', '63d008b5b2763.png', '2023-01-24 16:35:01'),
(6, 1, 'Food Court', 'foodcourt@gmail.com', '9865432121', 'foodcourt@gmail.com', '10am', '6pm', 'Mon-Sat', 'Next to A Block', '63d00982ae502.png', '2023-01-24 16:38:26'),
(7, 3, 'Cafe Cofee Day', 'ccd@gmail.com', '94765677656', 'ccd@gmail.com', '8am', '5pm', 'mon-sat', '  Near Gate 1  ', '64172cc460f03.png', '2023-03-19 15:39:48');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'South Indian Food', '2023-01-24 16:25:59'),
(2, 'Fast Food', '2023-01-24 16:26:27'),
(3, 'Beverages ', '2023-01-24 16:26:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` varchar(222) NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(29, 'user1', 'Darshan', 'A S', 'darshan@gmail.com', '9876543210', 'e10adc3949ba59abbe56e057f20f883e', '5th ISE', 1, '2023-03-19 16:47:46'),
(30, 'user2', 'Gagana', 'M', 'gagana@gmail.com', '9876543221', 'e10adc3949ba59abbe56e057f20f883e', 'ISE \r\n5TH', 1, '2023-03-20 16:07:37');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(42, 29, 'Idli', 1, '35.00', 'in process', '2023-03-20 16:33:56'),
(43, 30, 'Rice Bath', 1, '45.00', 'rejected', '2023-03-20 16:19:36'),
(44, 30, 'Idli', 1, '35.00', 'closed', '2023-03-20 16:24:10'),
(46, 30, 'Gobi Manchuri', 1, '60.00', 'in process', '2023-03-20 16:24:36'),
(47, 29, 'Rice Bath', 1, '45.00', 'in process', '2023-03-20 16:35:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
