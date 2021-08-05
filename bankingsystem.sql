-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3309
-- Generation Time: Jul 20, 2021 at 08:31 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bankingsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `currentbalance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table to store the customers information';

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `currentbalance`) VALUES
(1, 'Pavan Kumar', 'pavankumar@gmail.com', 37700),
(2, 'John', 'johnwick@gmail.com', 45000),
(3, 'Harry', 'Harryporter@gmail.com', 50000),
(4, 'Emma Watson', 'emmawatson@gmail.com', 56000),
(5, 'Jonny', 'jonnydeep@gmail.com', 29000),
(6, 'Leonardo', 'leonardodecaprio@gmail.com', 34000),
(7, 'Nick ', 'nickjonas@gmail.com', 67000),
(8, 'Alan', 'alanwalker@gmail.com', 47000),
(9, 'Marsh', 'marshmello@gmail.com', 59000),
(10, 'sara', 'saramicheal@gmail.com', 27000);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `S.No` int(5) NOT NULL,
  `SenderName` varchar(30) NOT NULL,
  `ReceiverName` varchar(30) NOT NULL,
  `Amount` int(10) NOT NULL,
  `Date&Time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`S.No`, `SenderName`, `ReceiverName`, `Amount`, `Date&Time`) VALUES
(2, 'Pavan Kumar', 'Emma Watson', 2300, '2021-07-20 22:11:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`S.No`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `S.No` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
