-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2018 at 04:23 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrentalapplication`
--

-- --------------------------------------------------------

--
-- Table structure for table `admininfo`
--

CREATE TABLE `admininfo` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admininfo`
--

INSERT INTO `admininfo` (`id`, `username`, `password`, `firstName`, `lastname`) VALUES
(36, '2017abhishek', 'aaa', 'Abhishek', 'Chavan'),
(59, '2017abhishek', 'gggg', 'chetan', 'patil'),
(47, 'admin123@gmail.com', 'admin123', 'admin', 'adminstrative');

-- --------------------------------------------------------

--
-- Table structure for table `clientinfo`
--

CREATE TABLE `clientinfo` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clientinfo`
--

INSERT INTO `clientinfo` (`id`, `username`, `password`, `firstName`, `lastname`) VALUES
(43, 'abhi3114', 'abhi@3718', 'Abhishek', 'Chavan'),
(49, 'pratik89', 'abhi', 'pratik', 'joil'),
(46, 'chavanabhi3114@gmail.com', 'abhi@3718', 'Abhishek', 'Chavan'),
(63, 'kamble.swapnil96@gmail.com', 'swapnil96', 'swapnil', 'kamble');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `addr` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `zipcode` varchar(20) NOT NULL,
  `phonenum` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `creditcardtype` varchar(20) NOT NULL,
  `creditcardno` varchar(20) NOT NULL,
  `expdate` varchar(20) NOT NULL,
  `cvcode` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `firstname`, `lastname`, `addr`, `city`, `state`, `zipcode`, `phonenum`, `email`, `creditcardtype`, `creditcardno`, `expdate`, `cvcode`) VALUES
(53, 'Abhishek', 'Chavan', 'PLOT C 4 KHANDH COLO', 'NAVI MUMBAI', 'MAHARASHTRA', '410201', '9920839370', 'chavanabhi3114@gmail.com', 'masterCard', '123456789123456', '10', 556),
(41, 'Abhishek', 'Chavan', 'hira-nadani 21', 'NAVI MUMBAI', 'MAHARASHTRA', '410201', '9920839370', 'chavanabhi3114@gmail.com', 'american', '1234567891234567', '09', 776),
(43, 'Abhishek', 'Chavan', 'PLOT C 4', 'NAVI MUMBAI', 'MAHARASHTRA', '410201', '9920839370', 'chavanabhi3114@gmail.com', 'masterCard', '1234567890123456', '09', 123),
(42, 'Abhishek', 'Chavan', 'PLOT C 4 KHANDH COLO', 'NAVI MUMBAI', 'MAHARASHTRA', '410201', '9920839370', 'chavanabhi3114@gmail.com', 'masterCard', '1234567890123456', '09', 123),
(39, 'abhishek', 'chavan', 'red, fort,9111', 'NAVI MUMBAI', 'MAHARASHTRA', '410201', '9920839370', 'chetanpatil09@gmail.com', 'masterCard', '1209072098717861', '09', 887);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `make` varchar(20) NOT NULL,
  `model` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `transmission` varchar(20) NOT NULL,
  `ratepermile` varchar(20) NOT NULL,
  `rateperday` varchar(20) NOT NULL,
  `taken` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `make`, `model`, `year`, `transmission`, `ratepermile`, `rateperday`, `taken`) VALUES
(1, 'honda', 'city', '2011', 'Manual', '1.02', '1.07', 'available'),
(3, 'random', 'city', '2014', 'Auto', '6', '1', 'available'),
(4, 'suzuki', '800', '2017', 'Auto', '19', '180', 'available'),
(5, 'honda', 'city', '2017', 'Auto', '20', '5000', 'available'),
(8, 'maruti', 'omni', '2017', 'Auto', '8', '400', 'available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admininfo`
--
ALTER TABLE `admininfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientinfo`
--
ALTER TABLE `clientinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admininfo`
--
ALTER TABLE `admininfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `clientinfo`
--
ALTER TABLE `clientinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
