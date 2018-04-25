-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2018 at 08:04 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

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
(3, 'noyon', 'noyon', 'noyon892@gmail.com', '', '1234567890', 'Male', '2018-03-18', '19979972342363842', 'Mahajon Bari,Affratpara,Chatmohar,Pabna', 'Dhaka');

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
(1, 'Men'),
(2, 'Women'),
(3, 'Food'),
(4, 'ELectronics');

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
(123456, 30);

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
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productname`, `price`, `quantity`, `categoryId`, `image1`, `image2`, `image3`, `details`, `date`) VALUES
(10, 'Men\'s Printed Panjabi', 1995, 1965, 1, NULL, NULL, NULL, 'New COllection', '0000-00-00 00:00:00'),
(11, 'Women Pant', 3000, 1495, 2, NULL, NULL, NULL, 'New Collection', '2018-03-19 06:16:11'),
(12, 'iPhone', 100000, 988, 4, NULL, NULL, NULL, 'New Collection', '2018-03-19 06:17:03'),
(13, 'Biskut', 20, 2490, 3, NULL, NULL, NULL, 'Nice Biskut', '2018-03-19 06:17:49'),
(14, 'Women Shirt', 2500, 2000, 2, NULL, NULL, NULL, 'Nice\r\n', '2018-03-19 06:18:29');

-- --------------------------------------------------------

--
-- Table structure for table `soldproduct`
--

CREATE TABLE `soldproduct` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `productname` varchar(256) NOT NULL,
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

INSERT INTO `soldproduct` (`id`, `productid`, `productname`, `orderId`, `username`, `quantity`, `price`, `phonenumber`, `address`, `zipcode`, `delivery`, `Orderdate`) VALUES
(1, 10, 'Men\'s Printed Panjabi', 30, 'Md. Hasan Uzzaman', 1, 1995, '1733844422', 'Mahajon Bari,Affratpara,Chatmohar,Pabna', '1229', 'yes', '2018-03-19 12:02:08');

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
(38, 'Md. Hasan Uzzaman', 'n', 'noyon892@gmail.c', '1234567890', '01733844422', 'Mahajon Bari,Affratpara,Chatmohar,Pabna');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123457;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `soldproduct`
--
ALTER TABLE `soldproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123456;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
