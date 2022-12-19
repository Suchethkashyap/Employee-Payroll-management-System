-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2018 at 11:22 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payrollmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountant`
--

CREATE TABLE `accountant` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accountant`
--

-- INSERT INTO `accountant` (`id`, `name`, `email`, `password`) VALUES
-- (1, 'accountant', 'accountant@xyz.com', 'accountant123');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `address` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

-- INSERT INTO `employee` (`id`, `name`, `email`, `password`, `mobile`, `address`) VALUES
-- (1, 'Jatin', 'jatin@xyz.com', '123', '9954658456', 'abcd')
-- (2, 'Aditya', 'adi@xyz.com', '123', '9482852770', 'xyz xyz xyz'),
-- (3, 'Pavan', 'pavan@xyz.com', '123', '8988754658', 'asdfg'),
-- (4, 'Abhinav', 'abhi@xyz.com', '123', '9008995215', 'qwerty');

-- --------------------------------------------------------

--
-- Table structure for table `funds`
--

CREATE TABLE `funds` (
  `id` int(11) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `funds`
--

-- INSERT INTO `funds` (`id`, `amount`) VALUES
-- (1, 100000000);

-- --------------------------------------------------------

--
-- Table structure for table `hr`
--

CREATE TABLE `hr` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr`
--

-- INSERT INTO `hr` (`id`, `name`, `email`, `password`) VALUES
-- (1, 'admin', 'admin@xyz.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `eid` int(11) NOT NULL,
  `accNo` varchar(25) NOT NULL,
  `basic` double NOT NULL,
  `bonus` double NOT NULL,
  `commutation` double NOT NULL,
  `grpallw` double NOT NULL,
  `hra` double NOT NULL,
  `variablepay` double NOT NULL,
  `cellphn` double NOT NULL,
  `it` double NOT NULL,
  `medclaim` double NOT NULL,
  `pf` double NOT NULL,
  `pt` double NOT NULL,
  `netpay` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

-- INSERT INTO `salary` (`id`, `eid`, `accNo`, `basic`, `bonus`, `commutation`, `grpallw`, `hra`, `variablepay`, `cellphn`, `it`, `medclaim`, `pf`, `pt`, `netpay`) VALUES
-- (2, 2, '555555555', 545544, 2600, 1600, 12617, 8985, 11550, 100, 2500, 3211, 2156, 200, 574729),
-- (3, 3, '656464132', 52246, 2251, 1254, 2154, 542, 541, 120, 2546, 2120, 2130, 1213, 50859);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `accountant` varchar(25) NOT NULL,
  `employee` varchar(25) NOT NULL,
  `paydate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `payamount` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

-- INSERT INTO `transaction` (`id`, `accountant`, `employee`, `paydate`, `payamount`) VALUES
-- (4, 'accountant', '2', '2018-11-19 09:38:07', '47155'),
-- (5, 'accountant', '3', '2018-11-19 09:52:38', '49859'),
-- (6, 'accountant', '3', '2018-11-23 07:06:12', '50859'),
-- (7, 'accountant', '4', '2018-11-23 07:30:38', '168936');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountant`
--
ALTER TABLE `accountant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funds`
--
ALTER TABLE `funds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr`
--
ALTER TABLE `hr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountant`
--
ALTER TABLE `accountant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `funds`
--
ALTER TABLE `funds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hr`
--
ALTER TABLE `hr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
