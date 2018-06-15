-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 28, 2014 at 09:39 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
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

CREATE TABLE  `book` (
  `id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `publication` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `edition` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_purchase` date NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `status` enum('A','NA') COLLATE utf8_unicode_ci NOT NULL,
  `fine` decimal(10,0) NOT NULL,
  `section` enum('GEN','BB','DB','S','TQ','SCST') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `author`, `title`, `publication`, `edition`, `date_purchase`, `price`, `status`, `fine`, `section`) VALUES
('BK1001', 'ALFRED ULLMAN,AHO,', 'COMPILER CONSTRUCTION', 'EDUCATIONAL PUBLISHERS&DISTRIBUTERS ', '2', '2000-01-01', 400, 'NA', 5, 'GEN'),
('BK1002', 'PETER ATKINS,JULIO de PAULA,', 'ELEMENTS OF PHYSICAL CHEMISTRY', 'OXFORD UNIVERSITY PRESS,2005', '4', '2004-02-04', 689, 'A', 0, 'GEN'),
('BK1003', 'TIMOSHENKO,YOUNG,', 'ENGINEERING MECHANICS', 'McGRAW HILL BOOK COMPANY', '4', '2003-06-01', 145, 'NA', 0, 'GEN'),
('BK1004', 'P.I VARGHESE,', 'ENGINEERING GRAPHICS', 'JET PUBLICATIONS', '2', '1996-12-03', 435, 'A', 0, 'GEN'),
('BK1005', 'ROY.M.THOMAS,', 'FUNDAMENTALS OF CIVIL ENGINEERING', 'EDUCATIONAL PUBLISHERS&DISTRIBUTERS ', '2', '2000-01-01', 98, 'A', 0, 'GEN'),
('BK1006', 'VAN WYLON,', 'ENGINEERING THERMODYNAMICS', 'OXFORD&IDH', '3', '2000-02-02', 120, 'A', 0, 'GEN'),
('BK1007', 'B.L.THERAJA,', 'BASIC ELECTRONICS', 'S CHAND &CO', '3', '2000-03-01', 590, 'A', 0, 'GEN'),
('BK1008', 'B.S.GOTFRIED,', 'PROGRAMMING IN C', 'SCHAUM SERIES,TMH', '4', '2000-04-02', 350, 'NA', 0, 'S'),
('BK1009', 'RAJAGOPALAN,', 'ENVIORNMENTAL STUDIES', 'OXFORD UNIVERSITY PRESS,2005', '3', '2001-03-02', 350, 'A', 0, 'S'),
('BK1010', 'B.S.GREWAL,', 'HIGHER ENGINEERING MATHEMATICS', 'KHANNA PUBLICATIONS', '3', '2002-03-02', 600, 'A', 0, 'S'),
('BK1011', 'SAMUEL C LEE,', 'DIGITAL CIRCUITS AND LOGIC DESIGN', 'PRECENTICE HALL', '2', '2001-03-02', 598, 'NA', 0, 'S'),
('BK1012', 'MALIK D.S,SEN S.K,', 'DISCRETE MATHEMATICAL STRUCTURES', 'THOMSON LEARNING', '4', '2000-03-04', 98, 'A', 0, 'S'),
('BK1013', 'ROBERT.W.SEBESTA,', 'PRINCIPLES OF PROGRAMMING LANGUAGES', 'EDUCATIONAL PUBLISHERS&DISTRIBUTERS ', '4', '2000-02-02', 350, 'A', 0, 'DB'),
('BK1014', 'JAMES KUROSE,', 'COMPUTER NETWORKS', 'OXFORD&IDH', '5', '1999-02-03', 275, 'A', 0, 'DB'),
('BK1015', 'DAVID A .BELL,', 'ELECTRONIC INSTRUMENTATION AND MEASUREMENTS', 'EASTERN ECONOMY EDITION', '2', '1998-03-04', 225, 'A', 0, 'DB'),
('BK1016', 'A.K.SWAWHNEY,', 'ELECTRICAL AND ELECTRONIC MEASUREMENTS', 'DHANIPAT RAI &CO.', '19', '1995-03-02', 495, 'A', 0, 'DB'),
('BK1017', 'NORRIS POPE,', 'CHRONICLE OF A CAMERA', 'OXFORD UNIVERSITY PRESS,2005', 'FIRST EDITION', '2001-03-02', 100, 'NA', 0, 'DB'),
('BK1018', 'A.P.GODSE,U.A. BHAKSHI,', 'ELEMENTS OF ELECTRONICS ENGINEERING', 'TECHNICAL PUBLICATIONS PUNE', '2', '1999-03-04', 225, 'A', 0, 'TQ'),
('BK1019', 'MATTHEW GOVINDSAMY,', 'BASIC CIRCUIT ANALYSIS FOR ELECTRICAL ENGINEERING', 'THE RUSTICA PRESS', '3', '1998-02-04', 450, 'A', 0, 'TQ'),
('BK1020', 'C.L.WADHWA,', 'BASIC ELECTRICAL ENFINEERING', 'NEW AGE INTERNATIONAL PUBLICATIONS', '2', '2004-03-01', 678, 'A', 0, 'TQ'),
('BK1021', '', 'INTRODUCTION TO COMPUTER SCIENCE', 'PEARSON', '2', '1995-03-02', 320, 'A', 0, 'TQ'),
('BK1022', 'DHAMDHER,', 'INTRODUCTION TO COMPUTER SCIENCE', 'PEARSON', '2', '2000-03-02', 200, 'NA', 0, 'TQ'),
('BK1023', 'E.L.JAMES,', 'FIFTY SHADES OF GREY', 'THE WRITERS COFFE SHOP PUBLISHING', '2', '2000-02-01', 135, 'A', 0, 'SCST'),
('BK1024', 'A.K.RAY,', 'ADVANCED MICROPROCESSOR', 'KHANNA PUBLICATIONS', '3', '2000-01-02', 350, 'A', 0, 'BB'),
('BK1025', 'ALFRED ULLMAN,AHO,', 'COMPILER CONSTRUCTION', 'EDUCATIONAL PUBLISHERS&DISTRIBUTERS ', '3', '1999-02-04', 400, 'A', 0, 'SCST'),
('BK1026', 'ROY.M.THOMAS,', 'FUNDAMENTALS OF CIVIL ENGINEERING', 'EDUCATIONAL PUBLISHERS&DISTRIBUTERS ', '2', '1998-02-04', 98, 'A', 0, 'BB'),
('cs101', 'shashi chwla', 'engineering chemistry', 'h and d', '5th', '0000-00-00', 324, 'NA', 0, 'GEN'),
('cs102', 'aho,ulman,', 'compiler construction', 'u and r', '5', '2014-03-05', 320, 'A', 0, 'GEN');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE  `status` (
  `book_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_issue` date NOT NULL,
  `date_return` date NOT NULL,
  `student_id` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`book_id`, `date_issue`, `date_return`, `student_id`) VALUES
('BK1001', '2014-03-18', '2014-03-28', '59/11'),
('BK1003', '2014-03-18', '2014-03-28', '59/11'),
('BK1008', '2014-03-18', '2014-03-28', '59/11'),
('BK1011', '2014-03-18', '2014-03-28', '59/11'),
('BK1017', '2014-03-23', '2014-04-02', '78/11'),
('BK1022', '2014-03-21', '2014-03-31', '59/11');

-- --------------------------------------------------------

--
-- Table structure for table `buyer info`
--

CREATE TABLE  `buyer info` (
  `sid` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `book uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `offer_price` decimal(10,0) NOT NULL,
  `status` enum('ISSUED','WAITING','CANCELLED') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'WAITING',
  PRIMARY KEY (`sid`,`book uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `buyer info`
--

INSERT INTO `buyer info` (`sid`, `book uid`, `offer_price`, `status`) VALUES
('59/11', '5325cfdaecae9', 200, 'ISSUED'),
('59/11', '5325d0457b64e', 10, 'ISSUED'),
('78/11', '5325d0457b64e', 500, 'CANCELLED'),
('78/11', '5325d1e42c4e8', 100, 'ISSUED'),
('78/11', '5325d301915c0', 200, 'ISSUED');

-- --------------------------------------------------------

--
-- Table structure for table `login librarian`
--

CREATE TABLE  `login librarian` (
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mobno` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `sex` enum('m','f') COLLATE utf8_unicode_ci NOT NULL,
  `staff_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`staff_code`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `login librarian`
--

INSERT INTO `login librarian` (`firstname`, `lastname`, `username`, `password`, `email`, `mobno`, `sex`, `staff_code`) VALUES
('Akhil', 'Nadh', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'weneverdies@gmail.com', '9633311164', 'm', 'cs100'),
('renju', 'koshy', 'cec', '76a703d3a89a752c95d378790bf9bdb5', 'iamgood@gmail.com', '9876543200', 'f', 'cs101');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE  `student` (
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `admin_no` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mobno` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `year_admission` year(4) NOT NULL,
  `sex` enum('m','f') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`admin_no`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`username`, `admin_no`, `firstname`, `lastname`, `password`, `email`, `mobno`, `year_admission`, `sex`) VALUES
('115', '115', '', '', '846d42c95a5d3b44aad00390bf8c6a2d', '', '', 2011, 'm'),
('anuannie', '115/11', 'Anu', 'Annie', '41008199c6f6acbf1b9699a385f146f8', 'anuannie@gmail.com', '9876543210', 2011, 'f'),
('dhanya', '120/11', 'Dhanya', 'M', '9b3c47c956ff33fee2f39fe405f7fca4', 'dhanyamyindia@gmail.com', '9847538499', 2011, 'f'),
('19/11', '19/11', '', '', 'a50a5e48e696602c9bf9b6f699f0ef2d', '', '', 2011, 'm'),
('kavya', '323/11', 'kavya', 'valsala', 'c7f81394b1cad9a0d924e0e4a1d2836e', 'ammukelamathu@gmail.com', '8547254599', 2011, 'f'),
('352/11', '352/11', '', '', 'cbd3ceaa2d97b8ea4bc7fd74389bcd2f', '', '0', 2011, 'm'),
('stephen', '51/11', 'Stephen', 'Reji', '7ff36797539130f77445f48da5d4a126', 'stephenreji@gmail.com', '9876543210', 2011, 'm'),
('arunmulloth', '54/11', 'Arun', 'Mulloth', 'a10372605b860035a32286c3fa356e8e', 'arun@gmail.com', '9876543210', 2011, 'm'),
('pcakhil', '59/11', 'Akhil', 'Nadh PC', 'cd034207b3ec3d7253d533e4af5cc8d3', 'pcakhilnadh@gmail.com', '9633311164', 2011, 'm'),
('renju', '68/11', 'renju', 'koshy', 'fb14058d7c5b64cce3425154cc9d1889', 'renjuawaits@yahoo.com', '9539454870', 2011, 'f'),
('chikku', '78/11', 'nithin', 'prasad', 'fb14058d7c5b64cce3425154cc9d1889', 'chikupandanadu21@yahoo.com', '9567320219', 2011, 'm');

-- --------------------------------------------------------

--
-- Table structure for table `preorder`
--

CREATE TABLE  `preorder` (
  `sid` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `bookid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Status` enum('WAITING','ISSUED') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`sid`,`bookid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `preorder`
--

INSERT INTO `preorder` (`sid`, `bookid`, `time`, `Status`) VALUES
('59/11', 'BK1001', '2014-03-17 20:15:32', 'ISSUED'),
('59/11', 'BK1003', '2014-03-17 20:47:42', 'ISSUED'),
('59/11', 'BK1008', '2014-03-17 19:49:44', 'ISSUED'),
('59/11', 'BK1011', '2014-03-17 20:19:45', 'ISSUED'),
('59/11', 'BK1022', '2014-03-21 05:30:33', 'ISSUED'),
('78/11', 'BK1001', '2014-03-21 04:56:51', 'WAITING'),
('78/11', 'BK1008', '2014-03-21 04:57:16', 'WAITING'),
('78/11', 'BK1013', '2014-03-21 04:57:30', 'WAITING'),
('78/11', 'BK1017', '2014-03-23 08:57:47', 'ISSUED');

-- --------------------------------------------------------

--
-- Table structure for table `rate and review`
--

CREATE TABLE  `rate and review` (
  `sid` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `bookid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `rate` float NOT NULL,
  `comment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`sid`,`bookid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rate and review`
--

INSERT INTO `rate and review` (`sid`, `bookid`, `rate`, `comment`) VALUES
('', '', 0, ''),
('59/11', 'BK1001', 2.5, 'gud'),
('59/11', 'BK1003', 3.5, ''),
('59/11', 'BK1008', 5, 'Every one must read this book.'),
('59/11', 'BK1011', 1, 'not good'),
('59/11', 'BK1022', 1.5, '');

-- --------------------------------------------------------

--
-- Table structure for table `seller book info`
--

CREATE TABLE  `seller book info` (
  `sid` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `book_uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `publication` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `edition` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('a','na') COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`sid`,`book_uid`),
  UNIQUE KEY `book uid` (`book_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seller book info`
--

INSERT INTO `seller book info` (`sid`, `book_uid`, `title`, `author`, `price`, `publication`, `edition`, `status`, `comment`) VALUES
('59/11', '5325d1e42c4e8', ' DISCRETE MATHEMATICAL STRUCTURES', 'MALIK D.S,SEN S.K,', 432, 'THOMSON LEARNING', '1', 'na', 'Good'),
('59/11', '5325d25da0d0c', ' ELECTRONIC INSTRUMENTATION AND MEASUREMENTS ', 'DAVID A .BELL,', 350, 'EASTERN ECONOMY EDITION', '3', 'a', 'Study tips ....!'),
('59/11', '5325d301915c0', ' ELEMENTS OF ELECTRONICS', 'A.P.GODSE,U.A. BHAKSHI,', 220, ' ENGINEERING TECHNICAL PUBLICATIONS PUNE', '3', 'na', 'wow'),
('68/11', '5325cfdaecae9', 'Higher Engineering Mathematics', 'B.S  Grewal', 400, 'Khanna Publication', '3', 'na', 'Can be used upto s6'),
('68/11', '5325d0457b64e', 'Programming in C', 'B.S  Gotrified', 140, 'SCHAUM SERIES,TMH', '2', 'na', 'Good (Y)'),
('68/11', '5325d0d2d7287', 'DIGITAL CIRCUITS AND LOGIC DESIGN', 'SAMUEL C LEE', 250, 'PRECENTICE HALL', '2', 'a', 'Can useful to cse and ec'),
('78/11', '5325ccfcbac43', 'Compiler Constuction', 'Alfred ulman,Aho', 300, 'Educational publication and distributers ', '2', 'a', 'Good for s6 cse'),
('78/11', '5325cef16f8d8', 'Elemental of Physical chemistry', 'Julio de paula', 200, 'Oxford university press', '3', 'a', 'it is a photostat'),
('78/11', '5325cf48264f9', 'Engineering Graphics', 'P I varghese', 300, 'Jet publications', '3', 'a', 'Prescribed');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
