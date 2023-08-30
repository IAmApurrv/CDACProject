-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2019 at 08:18 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wedbooking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `pass` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `pass`) VALUES
(1, 'admin1', 'admin1@gmail.com', '12345'),
(2, 'admin2', 'admin2@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `hallid` varchar(500) NOT NULL,
  `userid` varchar(500) NOT NULL,
  `fromdate` varchar(500) NOT NULL,
  `todate` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `hallid`, `userid`, `fromdate`, `todate`) VALUES
(2, '1', '1', '2024-03-18', '2024-03-19');

-- --------------------------------------------------------



--
-- Table structure for table `hallimages`
--

CREATE TABLE `hallimages` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `hallid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hallimages`
--

INSERT INTO `hallimages` (`id`, `name`, `hallid`) VALUES
(1, 'java.util.Hashtable$Enumerator@f0846d', '1'),
(2, 'image', '1'),
(3, 'screen5.png', '1'),
(4, 'screen4.png', '1'),
(5, 'screen4.png', '1'),
(6, 'screen4.png', '1'),
(7, 'screen4.png', '1'),
(8, 'screen4.png', '1'),
(9, 'screen7.png', '2'),
(10, 'screen4.png', '2'),
(11, 'screen5.png', '2');

-- --------------------------------------------------------

--
-- Table structure for table `halls`
--

CREATE TABLE `halls` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `costperday` varchar(500) NOT NULL,
  `phone` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `halls`
--

INSERT INTO `halls` (`id`, `name`, `address`, `costperday`, `phone`, `email`) VALUES
(1, 'Sai Function Hall', 'Omerga', '10000', '9359645896', 'saihall@gmail.com'),
(2, 'Rajyog Banquet Hall', 'Shivajinagar, Pune', '50000', '8956475238', 'rajyogbanquet@gmail.com'),
(3, 'Panchkrushn Lawns', 'Nashik', '20000', '9685612976', 'panchkrusnnashik@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `hallservices`
--

CREATE TABLE `hallservices` (
  `id` int(11) NOT NULL,
  `serviceid` varchar(200) NOT NULL,
  `hallid` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hallservices`
--

INSERT INTO `hallservices` (`id`, `serviceid`, `hallid`) VALUES
(1, '1', '3'),
(2, '2', '3');

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`) VALUES
(1, 'washing'),
(2, 'staff');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(1000) NOT NULL,
  `email` varchar(300) NOT NULL,
  `pass` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `pass`) VALUES
(1, 'user1', 'user1@gmail.com', '12345'),
(2, 'user2', 'user2@gmail.com', '12345');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
