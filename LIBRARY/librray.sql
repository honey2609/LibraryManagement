-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2015 at 01:55 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `book_id` varchar(30) NOT NULL DEFAULT '',
  `book_category` varchar(50) DEFAULT NULL,
  `pages` varchar(20) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `publisher` varchar(120) DEFAULT NULL,
  `book_name` varchar(500) DEFAULT NULL,
  `FLAG` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `book_category`, `pages`, `author`, `price`, `publisher`, `book_name`, `FLAG`) VALUES
('100', 'scifi', 'Dhayandchand', 'DEVI SINGHS', 'C++', '123', '256', 'I'),
('1001', 'Biography', 'AMERICA', 'NIHAN ', 'SUCCESS', '124', '324', NULL),
('123', 'science', 're', 'WERFF', '34', 'SDFF', 'SGD', 'I'),
('12345', 'science', 're', 'WERFF', '34', 'SDFF', 'SGD', NULL),
('123456', 'scifi', 'AMBALA ', 'ROHAN CHUTIYA FUDU', 'HARAYANA ', '123', '321', NULL),
('1235', 'science', 're', 'WERFF', '34', 'SDFF', 'SGD', NULL),
('12356', 'scifi', '43453', 'DASFA', '342', 'AFAF', 'AGASG', 'I'),
('200', 'comedy', '243', 'ANITA', '123', 'KALESH', 'ARKI', NULL),
('202', 'biology', 'ARKI', 'ANITA', 'KALESH', '243', '123', 'I'),
('2021', 'biology', 'ARKI', 'ANITA', 'KALESH', '243', '123', NULL),
('2342', 'scifi', 'asd', 'HONEY', '123', 'DDS', 'ASFS', NULL),
('4345', 'Novel', '1242', 'CHETAN BHAGHAT', '413', 'ARYABHAYYA', '2 STATES', 'I'),
('456', 'Biography', '345', 'BRAHMKUMARI', '252', 'INDIA', 'YOGAINDIA', 'I'),
('4566', 'scifi', '563', 'BRAHMKUMARIDD', '2523', 'INDIA', 'YOGA1', 'I');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `cate` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cate`) VALUES
('scifi'),
('Fiction'),
('Biography'),
('Sciene'),
('science'),
('biology'),
('noble'),
('comedy'),
('Novel'),
('non fiction'),
('non scifi');

-- --------------------------------------------------------

--
-- Table structure for table `issue_book`
--

CREATE TABLE IF NOT EXISTS `issue_book` (
  `book_id` varchar(200) NOT NULL,
  `identity_no` varchar(100) NOT NULL,
  `rollno` varchar(30) DEFAULT NULL,
  `date_issue` varchar(100) NOT NULL,
  `book_name` varchar(500) NOT NULL,
  `name` varchar(500) NOT NULL,
  `sem` varchar(100) NOT NULL,
  `date_return` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `issue_book1`
--

CREATE TABLE IF NOT EXISTS `issue_book1` (
  `book_id` varchar(30) NOT NULL,
  `identity_no` varchar(30) NOT NULL,
  `issue_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `date_return` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_book1`
--

INSERT INTO `issue_book1` (`book_id`, `identity_no`, `issue_date`, `due_date`, `date_return`) VALUES
('100', '12345', '2015-07-12', '2015-07-08', '2015-07-12'),
('1001', '12345', '2015-07-12', '2015-07-22', '2015-07-14'),
('12345', 'PTU1324', '2015-07-12', '2015-07-16', '2015-07-14'),
('200', 'PTU1324', '2015-07-12', '2015-07-15', '2015-07-14'),
('4566', '12UIT22', '2015-07-12', '2015-07-22', '2015-07-12'),
('456', '12UIT22', '2015-07-12', '2015-07-22', '2015-07-15'),
('100', 'PTU1324', '2015-07-12', '2015-07-24', '2015-07-12'),
('1001', 'PTU1324', '2015-07-12', '2015-07-24', '2015-07-14'),
('123', 'PTU1324', '2015-07-12', '2015-07-24', '2015-07-12'),
('456', '12345', '2015-07-12', '2015-07-14', '2015-07-15'),
('4566', '12345', '2015-07-12', '2015-07-14', '2015-07-12'),
('200', '12UIT22', '2015-07-12', '2015-07-16', '2015-07-14'),
('2021', '12UIT22', '2015-07-12', '2015-07-16', '2015-07-14'),
('202', '12UIT22', '2015-07-12', '2015-07-23', '2015-07-22'),
('12345', '12UIT22', '2015-07-12', '2015-07-23', '2015-07-14'),
('100', 'PTU1324', '2015-07-12', '2015-07-24', '2015-07-12'),
('100', 'PTU1324', '2015-07-12', '2015-07-23', '2015-07-12'),
('1001', '12345', '2015-07-12', '2015-07-09', '2015-07-14'),
('2342', '12345', '2015-07-12', '2015-07-16', '2015-07-12'),
('100', '12345', '2015-07-13', '2015-07-23', NULL),
('12356', '12345', '2015-07-13', '2015-07-16', NULL),
('1001', '32221', '2015-07-14', '2015-07-31', '2015-07-14'),
('123', '12UIT22', '2015-07-14', '2015-07-23', NULL),
('2021', '32221', '2015-07-14', '2015-07-14', '2015-07-14'),
('200', '31232', '2015-07-14', '2015-07-14', '2015-07-14'),
('4566', 'PTU1324', '2015-07-14', '2015-07-14', NULL),
('202', 'PTU1324', '2015-07-14', '2015-07-14', NULL),
('456', '31232', '2015-07-14', '2015-07-14', NULL),
('4345', '31232', '2015-07-14', '2015-07-14', NULL),
('1235', '12UIT222', '2015-07-14', '2015-07-14', '2015-07-14'),
('12345', '12UIT222', '2015-07-14', '2015-07-14', '2015-07-14'),
('2021', '32221', '2015-07-14', '2015-07-14', '2015-07-14'),
('2021', '32221', '2015-07-14', '2015-07-14', '2015-07-14'),
('2021', '32221', '2015-07-14', '2015-07-14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE IF NOT EXISTS `student_info` (
  `Name` varchar(500) NOT NULL,
  `rollno` varchar(20) NOT NULL DEFAULT '',
  `branch` varchar(30) DEFAULT NULL,
  `identity_no` varchar(50) NOT NULL,
  `sem` varchar(20) DEFAULT NULL,
  `session` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `contact_no` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`rollno`),
  UNIQUE KEY `identity_no` (`identity_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`Name`, `rollno`, `branch`, `identity_no`, `sem`, `session`, `gender`, `address`, `contact_no`) VALUES
('ROHAN ', '128067', 'IT', '12uit222', '6', '2012-2016', 'male', 'AFs', '42353523535'),
('ROHIt', '128068', 'IT', '31232', '6', '2012-2016', 'male', 'DSFSDFSDSDDs', '42343523523'),
('manish', '14124', 'CSE', 'ptu1324', '5', '2013-2017', 'male', 'Gurdaspur', '8257587234'),
('rihana', '14413', 'CSE', '12345', '3', '2012-2016', 'female', 'chandigarh', '34923778578'),
('DEVI SINGh', '3432', 'IT', '32221', '5', '2342', 'male', 'DXXd', '4444433'),
('prashant', 'ue128059', 'IT', '12UIT22', '1', '2012-2016', 'male', 'HOUSE NO.25A SECTOR 38A CHANDIGARH', '7589489990');

-- --------------------------------------------------------

--
-- Table structure for table `tempbook`
--

CREATE TABLE IF NOT EXISTS `tempbook` (
  `book_id` varchar(30) NOT NULL,
  `book_number` varchar(30) NOT NULL,
  `book_category` varchar(30) NOT NULL,
  `pages` varchar(30) NOT NULL,
  `author` varchar(300) NOT NULL,
  `price` varchar(30) NOT NULL,
  `publisher` varchar(300) NOT NULL,
  `book_name` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tempdate`
--

CREATE TABLE IF NOT EXISTS `tempdate` (
  `date_return` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
