-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2018 at 11:05 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `17pw33`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `RID` int(11) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `RID` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`RID`, `name`, `price`) VALUES
(1, 'Pizza', 100),
(1, 'Burger', 90),
(1, 'Chicken Parcel', 35),
(1, 'White Pasta', 129),
(2, 'Chicken Popcorn', 99);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OID` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `RID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OID`, `UserName`, `RID`) VALUES
(13041, 'msivaranjan@hotmail.com', 1),
(30223, 'msivaranjan@hotmail.com', 1),
(37924, 'msivaranjan@hotmail.com', 1),
(80573, 'msivaranjan@hotmail.com', 1),
(94217, 'msivaranjan@hotmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `OID` int(11) NOT NULL,
  `RID` int(11) DEFAULT NULL,
  `foodname` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`OID`, `RID`, `foodname`, `quantity`, `price`) VALUES
(37924, 1, 'Pizza', 1, 100),
(37924, 1, 'Burger', 1, 90),
(13041, 1, 'Pizza', 1, 100),
(13041, 1, 'Burger', 1, 90),
(94217, 1, 'Pizza', 1, 100),
(94217, 1, 'Burger', 1, 90),
(94217, 1, 'Chicken Parcel', 1, 35),
(94217, 1, 'White Pasta', 1, 129),
(80573, 1, 'Pizza', 1, 100),
(80573, 1, 'Burger', 1, 90),
(80573, 1, 'Pizza', 1, 100),
(80573, 1, 'Burger', 1, 90),
(30223, 1, 'Pizza', 1, 100),
(30223, 1, 'Burger', 1, 90),
(30223, 1, 'Chicken Parcel', 1, 35),
(30223, 1, 'White Pasta', 1, 129);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `RID` int(11) NOT NULL,
  `Res_Name` varchar(100) DEFAULT NULL,
  `locality` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`RID`, `Res_Name`, `locality`, `city`) VALUES
(1, 'Domino\'s Pizza', 'Peelamedu', 'Coimbatore'),
(2, 'KFC', 'Peelamedu', 'Coimbatore'),
(3, 'SMS Hotels', 'Peelamedu', 'Coimbatore'),
(4, 'Cream Centre', 'Race Course', 'Coimbatore'),
(5, 'Hotel Kandha', 'Ondipudur', 'Coimbatore');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `USERNAME` varchar(100) NOT NULL,
  `First_Name` varchar(100) DEFAULT NULL,
  `Last_Name` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `locality` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`USERNAME`, `First_Name`, `Last_Name`, `Password`, `address`, `locality`, `city`) VALUES
('msivaranjan7mailcom', 'Siva', 'Ranjan', '1234567890', 'B95(2 PHASE), PARSN PALM LEGEND, ONDIPUDUR', 'Ondipudur', 'Coimbatore'),
('msivaranjan@hotmail.com', 'Siva', 'Ranjan', '1234567890', 'B+95, Phase-2, Parsn Palm Legend, Trichy Road, Ondipudur', 'Ondipudur', 'Coimbatore');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD KEY `RID` (`RID`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD KEY `RID` (`RID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OID`),
  ADD KEY `UserName` (`UserName`),
  ADD KEY `RID` (`RID`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD KEY `RID` (`RID`),
  ADD KEY `OID` (`OID`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`RID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`USERNAME`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`RID`) REFERENCES `menu` (`RID`);

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`RID`) REFERENCES `restaurants` (`RID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`UserName`) REFERENCES `users` (`USERNAME`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`RID`) REFERENCES `restaurants` (`RID`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`RID`) REFERENCES `restaurants` (`RID`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`OID`) REFERENCES `orders` (`OID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
