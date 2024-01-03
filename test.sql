-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2023 at 05:23 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ims`
--

-- --------------------------------------------------------

--
-- Table structure for table `currentstocks`
--

CREATE TABLE `currentstocks` (
  `productcode` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currentstocks`
--

INSERT INTO `currentstocks` (`productcode`, `quantity`) VALUES
('p2', 30),
('p1', 1),
('p10', 0),
('prod1', 6),
('prod2', -10);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cid` int(11) NOT NULL,
  `customercode` varchar(100) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cid`, `customercode`, `fullname`, `location`, `phone`) VALUES
(2, 'cus3', 'ram', 'ktm', '331');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `productcode` varchar(100) NOT NULL,
  `productname` varchar(50) NOT NULL,
  `costprice` double NOT NULL,
  `sellingprice` double NOT NULL,
  `brand` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `productcode`, `productname`, `costprice`, `sellingprice`, `brand`) VALUES
(73, 'prod3', 'qq', 3, 2, '4d'),
(72, 'prod2', 'pen', 20, 30, 'techno'),
(71, 'prod1', 'wai wai', 400, 450, 'cg'),
(74, 'prod4', 'wai wai', 400, 450, 'cg2'),
(78, 'prod5', 'Mobile', 500, 700, 'cg'),
(79, 'prod6', 'test', 20, 23, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseinfo`
--

CREATE TABLE `purchaseinfo` (
  `purchaseid` int(11) NOT NULL,
  `suppliercode` varchar(200) NOT NULL,
  `productcode` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `totalcost` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchaseinfo`
--

INSERT INTO `purchaseinfo` (`purchaseid`, `suppliercode`, `productcode`, `date`, `quantity`, `totalcost`) VALUES
(19, 's1', 'p2', 'Wed Jan 14 00:15:19 NPT 2015', 40, 1320),
(20, 's1', 'p1', 'Wed Jan 07 16:42:44 NPT 2015', 4, 80000),
(21, 's6', 'p10', 'Tue Jan 06 16:51:44 NPT 2015', 20, 400000),
(22, 'sup4', 'prod1', 'Thu Jan 15 15:25:45 NPT 2015', 4, 1600),
(23, 'sup5', 'prod1', 'Thu Jan 15 00:00:00 NPT 2015', 6, 2400),
(29, 'sup4', 'prod2', 'Fri Jan 16 23:09:17 NPT 2015', 5, 150),
(30, 'sup4', 'prod1', 'Thu Dec 14 21:02:29 PKT 2023', 40, 16000);

-- --------------------------------------------------------

--
-- Table structure for table `salesreport`
--

CREATE TABLE `salesreport` (
  `salesid` int(11) NOT NULL,
  `date` varchar(40) NOT NULL,
  `productcode` varchar(100) NOT NULL,
  `customercode` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `revenue` double NOT NULL,
  `soldby` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesreport`
--

INSERT INTO `salesreport` (`salesid`, `date`, `productcode`, `customercode`, `quantity`, `revenue`, `soldby`) VALUES
(1, 'Fri Jan 16 23:12:40 NPT 2015', 'prod2', 'cus3', 4, 120, 'user4'),
(2, 'Thu Jan 08 21:30:51 NPT 2015', 'prod1', 'cus3', 5, 2250, 'sazanrjb'),
(3, 'Thu Jan 15 21:26:47 NPT 2015', 'prod1', 'cus3', 5, 2250, 'sazanrjb'),
(4, 'Sat Jan 17 10:08:20 NPT 2015', 'prod3', 'cus3', 1, 2, 'user4'),
(6, 'Thu Dec 28 21:01:45 PKT 2023', 'prod1', 'cus3', 34, 15300, 'user4');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `sid` int(11) NOT NULL,
  `suppliercode` varchar(100) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`sid`, `suppliercode`, `fullname`, `location`, `phone`) VALUES
(69, 'sup5', 'test', 'hyd', '4123372'),
(68, 'sup4', 'test2', 'khi', '11623231');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `location`, `phone`, `username`, `password`, `category`) VALUES
(54, 'Syed Areeb', 'Hyderabad', '03142476769', 'admin', 'cc03e747a6afbbcbf8be7668acfebee5', 'ADMINISTRATOR'),
(56, 'user1', 'karaci', '0008888111', 'user5', 'a791842f52a0acfbb3a783378c066b8', 'NORMAL USER'),
(57, 'user2', 'islamabad', '00022223333', 'user6', 'affec3b64cf90492377a8114c86fc093', 'NORMAL USER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `purchaseinfo`
--
ALTER TABLE `purchaseinfo`
  ADD PRIMARY KEY (`purchaseid`);

--
-- Indexes for table `salesreport`
--
ALTER TABLE `salesreport`
  ADD PRIMARY KEY (`salesid`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `purchaseinfo`
--
ALTER TABLE `purchaseinfo`
  MODIFY `purchaseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `salesreport`
--
ALTER TABLE `salesreport`
  MODIFY `salesid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
users