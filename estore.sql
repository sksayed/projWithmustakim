-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2019 at 03:12 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `estore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `gender` varchar(128) NOT NULL,
  `dob` date NOT NULL,
  `nid` varchar(256) NOT NULL,
  `presentaddress` varchar(256) NOT NULL,
  `parmanentaddress` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `email`, `phone`, `password`, `gender`, `dob`, `nid`, `presentaddress`, `parmanentaddress`) VALUES
(1, 'Noyon', 'shanto', 'shanto@gmail.com', '', '1234567890', 'male', '1996-05-24', '19979972342363842', 'H-23,R-4,Nikunja-2,Khilkhet,Dhaka', 'Dhaka'),
(2, 'arnob', 'arnob', 'ar@gmIL.COM', '', '1234567890', 'male', '9843-12-12', '3245465756543', 'wgbnb,hstr', 'geawaiuobvgair,gaer'),
(3, 'noyon', 'noyon', 'noyon892@gmail.com', '', '1234567890', 'Male', '2018-03-18', '19979972342363842', 'Mahajon Bari,Affratpara,Chatmohar,Pabna', 'Dhaka'),
(4, 'sayed rahman', 'sayed', 'sayedrahman015@gmail.com', '01670420393', 'sayed1122', 'male', '2019-04-02', '1325467498', 'bashundhara', 'bashundhara');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categoryname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryname`) VALUES
(1, 'Mens'),
(2, 'Women'),
(3, 'Food'),
(4, 'ELectronics'),
(7, 'Medicines');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderId` int(11) NOT NULL,
  `customerId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderId`, `customerId`) VALUES
(123466, 36),
(123467, 36),
(123472, 36),
(123473, 36),
(123474, 36),
(123475, 36),
(123476, 36),
(123477, 36),
(123478, 39),
(123479, 39);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `productname` varchar(256) NOT NULL,
  `price` int(8) NOT NULL,
  `quantity` int(8) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `image1` varchar(256) DEFAULT NULL,
  `image2` varchar(256) DEFAULT NULL,
  `image3` varchar(256) DEFAULT NULL,
  `details` varchar(8192) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productname`, `price`, `quantity`, `categoryId`, `image1`, `image2`, `image3`, `details`, `date`, `rank`) VALUES
(10, 'Men\'s Printed Panjabi', 1259, 1845, 1, NULL, NULL, NULL, 'New COllection', '0000-00-00 00:00:00', 5),
(11, 'Women Pant', 3000, 1304, 2, NULL, NULL, NULL, 'New Collection', '2018-03-19 06:16:11', 8),
(12, 'iPhone', 100000, 893, 4, NULL, NULL, NULL, 'New Collection', '2018-03-19 06:17:03', 2),
(13, 'Biskut', 20, 2394, 3, NULL, NULL, NULL, 'Nice Biskut', '2018-03-19 06:17:49', 5),
(14, 'Women Shirt', 2500, 1904, 2, NULL, NULL, NULL, 'Nice\r\n', '2018-03-19 06:18:29', 17),
(15, 'Mobile', 2000, 4, 1, NULL, NULL, NULL, 'asdfghjk', '2018-04-23 05:54:40', 8),
(19, 'wallet', 96000, 500, 1, NULL, NULL, NULL, 'ok', '2019-04-28 22:13:20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `soldproduct`
--

CREATE TABLE `soldproduct` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `productname` varchar(256) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `phonenumber` varchar(128) NOT NULL,
  `address` varchar(128) NOT NULL,
  `zipcode` varchar(128) NOT NULL,
  `delivery` varchar(128) NOT NULL DEFAULT 'no',
  `Orderdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soldproduct`
--

INSERT INTO `soldproduct` (`id`, `productid`, `productname`, `categoryId`, `orderId`, `username`, `quantity`, `price`, `phonenumber`, `address`, `zipcode`, `delivery`, `Orderdate`) VALUES
(123456, 10, 'Men\'s Printed Panjabi', 1, 123466, 'noyon', 1, 1995, '01733844422', 'Dhaka', '1229', 'yes', '2018-04-23 15:56:55'),
(123457, 14, 'Women Shirt', 2, 123466, 'noyon', 1, 2500, '01733844422', 'Dhaka', '1229', 'no', '2018-04-23 15:56:55'),
(123458, 10, 'Men\'s Printed Panjabi', 1, 123467, 'noyon', 1, 1995, '01733844422', 'Dhaka', '1229', 'no', '2018-04-23 15:57:27'),
(123459, 14, 'Women Shirt', 2, 123467, 'noyon', 1, 2500, '01733844422', 'Dhaka', '1229', 'no', '2018-04-23 15:57:27'),
(123460, 12, 'iPhone', 4, 123468, 'noyon', 1, 100000, '01733844422', 'Dhaka', '1229', 'no', '2018-04-23 16:02:16'),
(123465, 10, 'Men\'s Printed Panjabi', 1, 123473, 'noyon', 1, 1995, '01733844422', 'Dhaka', '1229', 'no', '2018-04-25 21:04:02'),
(123466, 15, 'Mobile', 1, 123473, 'noyon', 1, 2000, '01733844422', 'Dhaka', '1229', 'yes', '2018-04-25 21:04:03'),
(123467, 11, 'Women Pant', 2, 123475, 'noyon', 95, 285000, '01733844422', 'Dhaka', '1229', 'no', '2018-04-25 21:31:49'),
(123468, 10, 'Men\'s Printed Panjabi', 1, 123476, 'noyon', 70, 139650, '01733844422', 'Dhaka', '1229', 'no', '2018-04-25 21:33:18'),
(123469, 15, 'Mobile', 1, 123477, 'noyon', 1, 2000, '01733844422', 'Dhaka', '1229', 'yes', '2018-04-25 22:14:39'),
(123470, 14, 'Women Shirt', 2, 123478, 'mustakim', 1, 2500, '015577889963', 'House:xxx,Road:123 ,Dhaka,Bangladesh', '1229', 'no', '2019-04-28 23:23:38'),
(123471, 11, 'Women Pant', 2, 123479, 'mustakim', 1, 3000, '015577889963', 'House:xxx,Road:123 ,Dhaka,Bangladesh', '1229', 'no', '2019-04-28 23:42:59'),
(123472, 13, 'Biskut', 3, 123479, 'mustakim', 1, 20, '015577889963', 'House:xxx,Road:123 ,Dhaka,Bangladesh', '1229', 'no', '2019-04-28 23:42:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `address` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `phone`, `address`) VALUES
(36, 'noyon', 'noyon', 'noyon892@gmail.com', '1234567890', '01733844422', 'Dhaka'),
(37, 'noyon', 'noyon892', 'noyon892@gmail.cm', '1234567890', '01733844422', 'Mahajon Bari,Affratpara,Chatmohar,Pabna'),
(39, 'mustakim', 'mustakim', 'mustakim@gmail.com', '12345', '015577889963', 'House:xxx,Road:123 ctg,Bangladesh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soldproduct`
--
ALTER TABLE `soldproduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123480;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `soldproduct`
--
ALTER TABLE `soldproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123473;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
