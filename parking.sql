-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2018 at 08:43 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parking`
--

-- --------------------------------------------------------

--
-- Table structure for table `dist`
--

CREATE TABLE `dist` (
  `pid` int(20) NOT NULL,
  `distance` int(20) NOT NULL,
  `count` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dist`
--

INSERT INTO `dist` (`pid`, `distance`, `count`) VALUES
(2, 1, 0),
(3, 1, 0),
(2, 1, 0),
(3, 1, 0),
(2, 1, 0),
(3, 1, 0),
(2, 1, 0),
(3, 1, 0),
(2, 1, 0),
(3, 1, 0),
(2, 1, 0),
(3, 1, 0),
(2, 1, 0),
(3, 1, 0),
(2, 1, 0),
(3, 1, 0),
(2, 1, 0),
(3, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `manager_login`
--

CREATE TABLE `manager_login` (
  `emailid` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `manager_park_lot`
--

CREATE TABLE `manager_park_lot` (
  `pid` int(10) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `office_no` varchar(50) NOT NULL,
  `timing` varchar(50) NOT NULL,
  `occupancy_car` int(10) NOT NULL,
  `occupancy_bike` int(10) NOT NULL,
  `latitude` float(10,6) DEFAULT NULL,
  `longitude` float(10,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager_park_lot`
--

INSERT INTO `manager_park_lot` (`pid`, `emailid`, `name`, `address`, `office_no`, `timing`, `occupancy_car`, `occupancy_bike`, `latitude`, `longitude`) VALUES
(1, 'akki@', 'akash', 'ambernath', '2525899', '', 40, 20, 19.203560, 73.174728),
(2, 'sha@', 'shadrak', 'ambernath', '464464646', '5-6', 25, 56, 19.353559, 73.193726),
(3, 'jay@', 'jay', 'ambernath', '56565656', '5-6', 25, 56, 19.333559, 73.193726),
(4, 'jabba@', 'jabba', 'jab', '5', '5', 25, 25, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `manager_signup`
--

CREATE TABLE `manager_signup` (
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `sex` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager_signup`
--

INSERT INTO `manager_signup` (`firstName`, `lastName`, `contact`, `emailid`, `password`, `sex`) VALUES
('akash', 'hadw', '49898989', 'akki@', 'male', 'male'),
('jabba', 'apaa', '56565656', 'jabba@', 'jaa', 'male'),
('jayesh', 'kuk', '756878767', 'jay@', '235', 'male'),
('sha', 'fldd', '45465446', 'sha@', 'sasa', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `markers`
--

CREATE TABLE `markers` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `address` varchar(80) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `markers`
--

INSERT INTO `markers` (`id`, `name`, `address`, `lat`, `lng`, `type`) VALUES
(1, 'Love.Fish', '580 Darling Street, Rozelle, NSW', -33.861034, 151.171936, 'restaurant'),
(2, 'Young Henrys', '76 Wilford Street, Newtown, NSW', -33.898113, 151.174469, 'bar'),
(3, 'Hunter Gatherer', 'Greenwood Plaza, 36 Blue St, North Sydney NSW', -33.840282, 151.207474, 'bar'),
(4, 'The Potting Shed', '7A, 2 Huntley Street, Alexandria, NSW', -33.910751, 151.194168, 'bar'),
(5, 'Nomad', '16 Foster Street, Surry Hills, NSW', -33.879917, 151.210449, 'bar'),
(6, 'Three Blue Ducks', '43 Macpherson Street, Bronte, NSW', -33.906357, 151.263763, 'restaurant'),
(7, 'Single Origin Roasters', '60-64 Reservoir Street, Surry Hills, NSW', -33.881123, 151.209656, 'restaurant'),
(8, 'Red Lantern', '60 Riley Street, Darlinghurst, NSW', -33.874737, 151.215530, 'restaurant');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `sex` varchar(100) NOT NULL,
  `latitude` float(10,6) DEFAULT NULL,
  `longitude` float(10,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`firstName`, `lastName`, `contact`, `emailid`, `password`, `sex`, `latitude`, `longitude`) VALUES
('pro', 'sat', '456', 'prI@', 'a87ff679a2f3e71d9181', 'Male', NULL, NULL),
('shadrak', 's', '456446464', 'sha@', '12', '', NULL, NULL),
('jayesh', 'kuk', '76645600', 'jay@', '123', 'male', 19.330233, 73.167107);

-- --------------------------------------------------------

--
-- Table structure for table `slot_park_rel`
--

CREATE TABLE `slot_park_rel` (
  `pid` int(11) NOT NULL,
  `slot` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `tim` time NOT NULL,
  `book_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slot_park_rel`
--

INSERT INTO `slot_park_rel` (`pid`, `slot`, `status`, `date`, `tim`, `book_status`) VALUES
(3, 'A', 'open', '0000-00-00', '00:00:00', 'unreserve'),
(2, 'A', 'filled', '0000-00-00', '00:00:00', ''),
(3, 'B', 'open', '0000-00-00', '00:00:00', 'unreserve'),
(2, 'B', 'open', '0000-00-00', '00:00:00', 'unreserve');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `manager_park_lot`
--
ALTER TABLE `manager_park_lot`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `emailid` (`emailid`);

--
-- Indexes for table `manager_signup`
--
ALTER TABLE `manager_signup`
  ADD PRIMARY KEY (`emailid`);

--
-- Indexes for table `markers`
--
ALTER TABLE `markers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`contact`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `markers`
--
ALTER TABLE `markers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `manager_park_lot`
--
ALTER TABLE `manager_park_lot`
  ADD CONSTRAINT `manager_park_lot_ibfk_1` FOREIGN KEY (`emailid`) REFERENCES `manager_signup` (`emailid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
