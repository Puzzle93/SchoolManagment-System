-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2018 at 05:29 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `absent_present`
--

CREATE TABLE `absent_present` (
  `id` int(11) NOT NULL,
  `Class_Teacher` text NOT NULL,
  `Class` text NOT NULL,
  `Section` text NOT NULL,
  `year` text NOT NULL,
  `month` text NOT NULL,
  `Day` text NOT NULL,
  `total_absent` text NOT NULL,
  `names_of_std` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absent_present`
--

INSERT INTO `absent_present` (`id`, `Class_Teacher`, `Class`, `Section`, `year`, `month`, `Day`, `total_absent`, `names_of_std`) VALUES
(2, 'Kdewanik@gmail.com', '10th Grade', 'B', '2075', 'Kartik', '27', '2', 'New_std,Dewanik,');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `orderid` int(11) NOT NULL,
  `imageevent` text NOT NULL,
  `imagedesc` text NOT NULL,
  `uploader` text NOT NULL,
  `imagename` text NOT NULL,
  `imageid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`orderid`, `imageevent`, `imagedesc`, `uploader`, `imagename`, `imageid`) VALUES
(1, 'Some Test Event', 'random', 'principal', 'image.5bea895de0fcf2.04297841.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `COMMENTid` int(11) NOT NULL,
  `insert_date` datetime NOT NULL,
  `user` varchar(256) NOT NULL,
  `notice` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`COMMENTid`, `insert_date`, `user`, `notice`) VALUES
(30, '2018-11-10 09:05:04', 'principal', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi nec porta sem, nec placerat velit. Aenean scelerisque turpis et rhoncus laoreet. Aliquam id enim venenatis, eleifend urna ac, convallis est. Suspendisse ac pharetra massa, sit amet efficitur arcu. Integer luctus elit faucibus dui hendrerit, ut viverra ipsum tempor. Ut velit sapien, suscipit vitae velit vel, tincidunt rutrum quam. Phasellus tempus, augue vitae pretium hendrerit, urna turpis congue ante, et facilisis neque massa ac nunc. Sed pellentesque placerat tincidunt. Aenean a augue sit amet elit elementum aliquet. Nulla laoreet imperdiet orci, non condimentum nunc tristique non. Morbi et erat viverra, feugiat nulla et, elementum dolor. Curabitur rutrum nulla at enim varius sagittis. Duis vulputate tempor nisl, non fringilla diam interdum sollicitudin.');

-- --------------------------------------------------------

--
-- Table structure for table `std.parent`
--

CREATE TABLE `std.parent` (
  `sn` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `phone.number` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `email` text NOT NULL,
  `class` text NOT NULL,
  `cteacher` text NOT NULL,
  `section` text NOT NULL,
  `validity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `std.parent`
--

INSERT INTO `std.parent` (`sn`, `firstname`, `lastname`, `phone.number`, `username`, `password`, `email`, `class`, `cteacher`, `section`, `validity`) VALUES
(2, 'New_std', 'std', 2147483647, 'std123', '$2y$10$PBc5oTdoT1uZwEJX6/5nSuy/po./hm6OH.9dGI9NVPb5SlIRAYNy2', 'Kdewanik@gmail', '10th Grade', 'Kdewanik@gmail.com', 'B', 1),
(8, 'Dewanik', 'Koirala', 2147483647, 'dewanik', '$2y$10$PBc5oTdoT1uZwEJX6/5nSuy/po./hm6OH.9dGI9NVPb5SlIRAYNy2', 'Kdewanik@gmail.com', '10th Grade', 'Kdewanik@gmail.com', 'B', 1);

-- --------------------------------------------------------

--
-- Table structure for table `teachers.detail`
--

CREATE TABLE `teachers.detail` (
  `ID` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `phone.number` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `assigned.class` text NOT NULL,
  `email` varchar(256) NOT NULL,
  `assigned.section` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers.detail`
--

INSERT INTO `teachers.detail` (`ID`, `firstname`, `lastname`, `phone.number`, `username`, `password`, `assigned.class`, `email`, `assigned.section`) VALUES
(5, 'principal', 'sir', 2147483647, 'principal12', '$2y$10$48uRnmEH211ngDL8.qI2luefEG.7GNMZsDpCr9daWyZFhseM9A9tW', '0', 'pr@gmail.com', ''),
(7, 'Teacher', 'Test', 2147483647, 'test123', '$2y$10$uXXhvrH560AF8Adn0/tUoeuY/1H3KKp2tJJv1FSaVHPOM9Ri..VUK', '10th Grade', 'Kdewanik@gmail.com', 'B'),
(8, 'One', 'More', 2147483647, 'test345', '$2y$10$AHYXl..dvfzLblFGpXCIE.bfnH3/JQoMEBcQHLJWIruUkhEGXmd9q', '10th Grade', 'll@gmail.com', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `videolect`
--

CREATE TABLE `videolect` (
  `videoid` int(11) NOT NULL,
  `videofullname` text NOT NULL,
  `description` text NOT NULL,
  `uploadedby` text NOT NULL,
  `recommended` text NOT NULL,
  `videotitle` text NOT NULL,
  `ordervideo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videolect`
--

INSERT INTO `videolect` (`videoid`, `videofullname`, `description`, `uploadedby`, `recommended`, `videotitle`, `ordervideo`) VALUES
(2, 'lesson.5beba3254eb0e6.59674158.mp4', 'test video for lecture', 'principal', '10th Grade', 'random', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absent_present`
--
ALTER TABLE `absent_present`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`COMMENTid`);

--
-- Indexes for table `std.parent`
--
ALTER TABLE `std.parent`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `teachers.detail`
--
ALTER TABLE `teachers.detail`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `videolect`
--
ALTER TABLE `videolect`
  ADD PRIMARY KEY (`videoid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absent_present`
--
ALTER TABLE `absent_present`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `COMMENTid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `std.parent`
--
ALTER TABLE `std.parent`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `teachers.detail`
--
ALTER TABLE `teachers.detail`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `videolect`
--
ALTER TABLE `videolect`
  MODIFY `videoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
