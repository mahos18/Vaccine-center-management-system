-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 20, 2024 at 11:26 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `miniproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', '123'),
('1', '1'),
('1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
CREATE TABLE IF NOT EXISTS `attendance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `vaccine_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `member_name` (`member_name`(250))
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `username`, `status`, `member_name`, `vaccine_name`) VALUES
(9, 'soham123', 'DONE', 'soham4', 'Covaccine'),
(10, 'soham123', 'DONE', 'shubham', 'Covishield'),
(11, 'soham123', 'DONE', 'shubham', 'Covishield'),
(12, '11', 'DONE', '12', 'Covishield'),
(13, '11', 'DONE', 'soham4', 'Covishield'),
(14, '11', 'DONE', 'soham3(Self)', 'Covishield'),
(15, 'soham123', 'DONE', 'soham', 'Covishield'),
(16, 'pat', 'DONE', 'dd', 'Covaccine'),
(17, 'pat', 'DONE', 'pat', 'Covishield');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE IF NOT EXISTS `profiles` (
  `member_id` int NOT NULL AUTO_INCREMENT,
  `main_username` varchar(50) DEFAULT NULL,
  `member_name` varchar(100) DEFAULT NULL,
  `member_age` int DEFAULT NULL,
  `relationship` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`member_id`),
  KEY `main_username` (`main_username`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`member_id`, `main_username`, `member_name`, `member_age`, `relationship`) VALUES
(23, '123', 'Shubham', 24, 'self'),
(22, 'tanish', 'tanmay', 16, 'brother'),
(21, 'tanish', 'Tanish chile', 19, 'self'),
(18, 'soham2005', 'soja', 19, 'self'),
(30, 'soham123', 'shubham', 17, 'brother'),
(24, '11', 'soham3(Self)', 24, 'self'),
(28, '11', '12', 13, '123'),
(29, 'soham123', 'soham', 18, 'self'),
(31, '11', 'soham4', 18, 'brother'),
(32, 'pat', 'pat', 14, 'self'),
(33, 'pat', 'dd', 123, 'bhai'),
(34, '1', 'soham', 11, 'brother');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

DROP TABLE IF EXISTS `signup`;
CREATE TABLE IF NOT EXISTS `signup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobileno` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) NOT NULL,
  `aadhaarno` varchar(20) NOT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `name`, `email`, `mobileno`, `address`, `pincode`, `dob`, `username`, `password`, `aadhaarno`, `age`) VALUES
(4, 'soham ', 'soham123@gamil.com', '9884232243', 'ghatkopar', '400084', '2024-08-01', 'soham123', '2005', '714678352312', 18),
(12, 'prathemesh', 'abc', '1111111111', 'boisar	', '111111', '2005-10-05', 'pat', '2005', '765432167543', 19),
(11, 'soham', 'soham@gmail.com', '7777777777', 'ghaatkopar', '777777', '2005-08-01', 'soham ', '2005', '112321232133', 19),
(13, 'soham n', 'soham@gmail.com', '9999999999', 'thane', '300000', '2005-10-01', 'soham2', '2005', '123123123123', 19),
(14, 'soham n', 'soham123@gmail.com', '9898989898', 'thane ggshagagass', '878787', '2005-05-01', 'soham3', '2005', '777888888888', 19),
(15, 'om', 'om@gmal.com', '9999999999', 'ghatkopar	', '999999', '2005-10-01', 'user1', '123', '123123123123', 19),
(16, 'sss', 'sssss', '1111111111', '11', '111111', '2024-10-02', '1', '1', '11111111111', 0),
(17, 'soham1', 'abc@gmail.com', '1111111111', 'ghatkopqar', '111111', '1997-10-02', 'soham1', '123', '111111111111', 27),
(18, 'Soham Niwate', 'soham@niwate.com', '9876656763', 'thane b/12 maharashtra	', '224451', '2005-08-07', 'sohamn', '123', '123212343211', 19),
(19, 'Prathamesh patil', 'pat@gmail.com', '9876566775', '11/ thane maharashtra', '543334', '2005-08-16', 'pat2', '123', '123565443222', 19),
(21, 'Soham Lohote', 'abc@gmail.com', '1234543222', 'asfagawgAWaw', '234322', '2024-10-01', 'soham4', '123', '111111111111', 0),
(22, 'soja', 'soham@gmail.com', '5555555555', 'ghatkopar	', '555555', '2005-06-01', 'soham2005', '123', '435343534343', 19),
(23, 'soham', 'sohamlohote@gmail.com', '2222222222', 'ghatkopar	', '222222', '2024-10-01', 'soham', '123', '898765776567', 0),
(24, 'Tanish chile', 'tanish@gmail.com', '8861283682', 'ghatkopar mumbai', '400084', '2005-08-28', 'tanish', '123', '872836236723', 19),
(25, 'Shubham', 'soham@gamil.com', '2222222222', 'sssssss', '222222', '2000-10-03', '123', '123', '111111111111', 24),
(26, 'soham3', 's@gamil.com', '1111111111', 'ghatkopar', '111111', '2000-10-02', '11', '123', '111111111111', 24);

-- --------------------------------------------------------

--
-- Table structure for table `vaccinerecords`
--

DROP TABLE IF EXISTS `vaccinerecords`;
CREATE TABLE IF NOT EXISTS `vaccinerecords` (
  `apoointment_id` int NOT NULL AUTO_INCREMENT,
  `member_id` int DEFAULT NULL,
  `m_name` varchar(100) NOT NULL,
  `vaccine_name` varchar(100) NOT NULL,
  `appointment_date` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(100) NOT NULL,
  PRIMARY KEY (`apoointment_id`),
  KEY `fk_username` (`username`),
  KEY `member_id` (`member_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `vaccinerecords`
--

INSERT INTO `vaccinerecords` (`apoointment_id`, `member_id`, `m_name`, `vaccine_name`, `appointment_date`, `username`) VALUES
(34, 31, 'soham4', 'Covishield', '24-10-2024', '11');

-- --------------------------------------------------------

--
-- Table structure for table `vaccines`
--

DROP TABLE IF EXISTS `vaccines`;
CREATE TABLE IF NOT EXISTS `vaccines` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vaccine_name` varchar(100) NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `vaccines`
--

INSERT INTO `vaccines` (`id`, `vaccine_name`, `quantity`) VALUES
(1, 'Covishield', 25),
(2, 'Covaccine', 8),
(3, 'Polio', 10),
(4, 'HEP B', 10),
(5, 'BCG', 10);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
