-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2024 at 01:46 PM
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
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `Book_ID` int(11) NOT NULL,
  `Book_Name` varchar(100) DEFAULT NULL,
  `Publisher` varchar(100) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `Edition` int(11) DEFAULT NULL,
  `Number_of_Pages` int(11) DEFAULT NULL,
  `Sales` int(11) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`Book_ID`, `Book_Name`, `Publisher`, `ISBN`, `Edition`, `Number_of_Pages`, `Sales`, `City`, `Price`) VALUES
(1, 'The River and the Source', 'East African Educational Publishers', '9789966465515', 1, 432, 1500, 'Nairobi', 1599.00),
(2, 'My Life in Crime', 'Heinemann', '9780435902197', 1, 240, 1800, 'Mombasa', 1250.00),
(3, 'Petals of Blood', 'East African Educational Publishers', '9789966465355', 2, 368, 1200, 'Kisumu', 1800.00),
(4, 'Dust', 'Kwani Trust', '9789966724604', 1, 480, 950, 'Nakuru', 2000.00),
(5, 'Nairobi Heat', 'Cassava Republic Press', '9781911115044', 1, 256, 1100, 'Nairobi', 1375.00),
(6, 'Grain of Wheat', 'East African Educational Publishers', '9789966465539', 2, 240, 1750, 'Eldoret', 1650.00),
(7, 'Going Down River Road', 'East African Educational Publishers', '9789966465546', 3, 220, 980, 'Nairobi', 1400.00),
(8, 'Unbowed', 'Knopf', '9780307275202', 1, 368, 2000, 'Nairobi', 2500.00),
(9, 'Weep Not, Child', 'Heinemann', '9780435908304', 1, 160, 950, 'Nakuru', 1050.00),
(10, 'Devil on the Cross', 'Heinemann', '9780435908441', 1, 276, 800, 'Mombasa', 1199.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `Password`, `Email`) VALUES
(1, 'PA107/G/14443/21', '$2y$10$AH8HE3U3g084xZQf30tEnueHlV0Nln7ltoH8cB6AfcZyN79M8qCUa', 'mendilinge16@masyopnet.com'),
(2, 'jacob', '$2y$10$zIInUncKR1IRhyTR.AMSKuBZMnrujNcDaMnPrU8h6TWazMwR/FIRa', 'jacobmuema@gmail.com'),
(9, 'foden', '$2y$10$qYcidqgIoGYlcQR9cH1DsealUPUGM3cNNAfxC5raew4M4jdw3fOcu', 'foden@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`Book_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `Book_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
