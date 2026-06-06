-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2026 at 09:55 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brewedblended_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `ProductId` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `TotalAmount` decimal(8,2) NOT NULL,
  `OrderDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderId`, `UserId`, `ProductId`, `Quantity`, `TotalAmount`, `OrderDate`) VALUES
(1, 3, 2, 1, 160.00, '2024-10-09 11:40:42'),
(2, 3, 4, 2, 150.00, '2024-10-09 11:40:42'),
(3, 3, 8, 1, 185.00, '2024-10-09 11:40:42'),
(4, 4, 6, 1, 40.00, '2024-10-09 13:08:27'),
(5, 4, 1, 2, 240.00, '2024-10-09 13:08:27'),
(6, 4, 4, 1, 75.00, '2024-10-09 13:08:27'),
(7, 5, 1, 3, 360.00, '2024-10-09 13:11:38'),
(8, 5, 4, 2, 150.00, '2024-10-09 13:11:38'),
(9, 6, 4, 3, 225.00, '2024-10-09 13:25:18'),
(10, 6, 6, 6, 240.00, '2024-10-09 13:25:18'),
(11, 7, 3, 10, 1450.00, '2024-10-09 13:29:02'),
(12, 7, 4, 5, 375.00, '2024-10-09 13:29:02'),
(13, 8, 8, 1, 185.00, '2024-10-09 14:00:31'),
(14, 8, 6, 1, 40.00, '2024-10-09 14:00:31'),
(15, 9, 7, 2, 430.00, '2024-10-09 14:09:48'),
(16, 9, 2, 2, 320.00, '2024-10-09 14:09:48'),
(17, 9, 3, 2, 290.00, '2024-10-09 14:09:48'),
(18, 9, 6, 1, 40.00, '2024-10-09 14:09:48'),
(19, 9, 5, 1, 95.00, '2024-10-09 14:09:48'),
(20, 9, 4, 1, 75.00, '2024-10-09 14:09:48'),
(21, 9, 8, 1, 185.00, '2024-10-09 14:09:48'),
(22, 9, 1, 1, 120.00, '2024-10-09 14:09:48'),
(23, 10, 1, 1, 120.00, '2024-10-09 14:14:05'),
(24, 10, 4, 1, 75.00, '2024-10-09 14:14:05'),
(25, 10, 6, 1, 40.00, '2024-10-09 14:14:05'),
(26, 3, 1, 1, 120.00, '2024-10-09 14:23:56'),
(27, 3, 5, 1, 95.00, '2024-10-09 14:23:56'),
(28, 11, 1, 1, 120.00, '2024-10-09 14:28:40'),
(29, 11, 4, 1, 75.00, '2024-10-09 14:28:40'),
(30, 11, 7, 1, 215.00, '2024-10-09 14:28:40'),
(31, 11, 8, 1, 185.00, '2024-10-09 14:28:40'),
(32, 11, 6, 3, 120.00, '2024-10-09 14:28:40'),
(33, 11, 2, 1, 160.00, '2024-10-09 14:28:40'),
(34, 11, 5, 4, 380.00, '2024-10-09 14:28:40'),
(35, 12, 2, 10, 1600.00, '2024-10-09 14:33:13'),
(36, 12, 2, 9, 1440.00, '2024-10-09 14:33:26'),
(37, 12, 2, 9, 1440.00, '2024-10-09 14:33:36'),
(38, 12, 5, 3, 285.00, '2024-10-09 14:33:36'),
(39, 12, 8, 4, 740.00, '2024-10-09 14:33:36'),
(40, 3, 1, 1, 120.00, '2024-10-09 14:40:46'),
(41, 3, 1, 1, 120.00, '2024-10-09 14:44:00'),
(42, 3, 5, 1, 95.00, '2024-10-09 14:48:27'),
(43, 1, 1, 2, 240.00, '2026-06-06 15:50:29'),
(44, 1, 5, 1, 95.00, '2026-06-06 15:50:29'),
(45, 1, 7, 1, 215.00, '2026-06-06 15:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductId` int(11) NOT NULL,
  `ProductName` varchar(127) NOT NULL,
  `Price` decimal(8,2) NOT NULL,
  `InStock` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductId`, `ProductName`, `Price`, `InStock`) VALUES
(1, 'Espresso', 120.00, 1),
(2, 'Caramel Latte', 160.00, 1),
(3, 'Hot Oat Capuccino', 145.00, 1),
(4, 'Belgian Waffle', 75.00, 1),
(5, 'Chocolate Fudge Cake', 95.00, 1),
(6, 'Crumbly Brownies', 40.00, 1),
(7, 'Hot Chocolate', 215.00, 1),
(8, 'Strawberry Milkshake', 185.00, 1),
(9, 'Matcha Green Tea', 205.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserId` int(11) NOT NULL,
  `FirstName` varchar(127) NOT NULL,
  `LastName` varchar(127) NOT NULL,
  `Username` varchar(127) NOT NULL,
  `ContactNo` varchar(11) NOT NULL,
  `Email` varchar(127) NOT NULL,
  `Password` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `FirstName`, `LastName`, `Username`, `ContactNo`, `Email`, `Password`) VALUES
(1, 'admin', 'admin', 'admin', '09876543210', 'admin@gmail.com', '0cbaa887acc09af215aa16eec94c489e6300b71d311e99420df407279281d217'),
(2, 'Brewed and', 'Blended', 'Cafe', '09876543211', 'brewedblended@gmail.com', '80fa3ee078a772e8f1b51ad78459d84284daf2fb2ebfe275bc190ce0ed405326'),
(3, 'Christian James', 'Cahilig', 'cjames', '09495655839', 'cjames@gmail.com', 'dd687eed63e5d9a815998ad084df3884e90c2dfdb1093c2918da157a973387d8'),
(4, 'Joana', 'Bravo', 'jiejie', '09876543210', 'j.dummy@gmail.com', '11d4ddc357e0822968dbfd226b6e1c2aac018d076a54da4f65e1dc8180684ac3'),
(5, 'Fionnah Keiz', 'Coyoca', 'Fionnah', '09939675484', 'fionnahkeiz@gmail.com', 'cdbdfe643a7b06d18b6789c0a5b4f1a38a737f842edebedfe675172f55e5deca'),
(6, 'Karyl', 'Bardago', 'karyl_m', '09111111111', 'karyl@gmail.com', '588209f7dcbe7cba9690f548fb8fd28a2ae63c031ebc20761cd60f3a97be1ae1'),
(7, 'Jasper', 'Baguio', 'jb123', '09123789990', 'jbaguio@gmail.com', 'd7522ba1dd41d862d1ceb1dc9ef981e5940ab22545a4bd0dd5cb7471af70a282'),
(8, 'Hazeljoy', 'Hingpit', 'Hazeljoy', '09276409747', 'hazeljoyhingpit@gmail.com', 'e6d97b0cc705567dabb27c10322283e78c30e3aa55125baebc4296899e1d779a'),
(9, 'Hanazono', 'Archive', 'Hanazono', '1234567890', '12.@!!!fgmail.com', '8001934f1c6adc984db17f2f59aa3aca78b84649cab9eee7cd013944ad26417a'),
(10, 'Zander', 'Duhaylungsod', 'zanderduhaylungsod', '09854287270', 'z.duhaylungsod.547209@umindanao.edu.ph', 'f60e17b9d57095033d3d4412762a8f82eea4ef0df15a4552b96c3f40d6e61cfd'),
(11, 'Daniel', 'Gerarman', 'dmitresc', '09362262861', 'd.gerarman.546010@umindanao.edu.ph', '39e3bdc6d5781503b5feb4b480c429e7d9dbbb34279318ebd0aa8d2f768c18d6'),
(12, 'Dingal', 'Robroi', 'rob', '09287476832', 'robroi@gmail.com', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderId`),
  ADD KEY `UserId` (`UserId`),
  ADD KEY `ProductId` (`ProductId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`UserId`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`ProductId`) REFERENCES `products` (`ProductId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
