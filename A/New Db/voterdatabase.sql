-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 21, 2024 at 03:41 AM
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
-- Database: `voterdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcandidate`
--

DROP TABLE IF EXISTS `addcandidate`;
CREATE TABLE IF NOT EXISTS `addcandidate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cname` text COLLATE utf8mb4_general_ci NOT NULL,
  `symbol` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `cparty` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `photo` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `votes` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addcandidate`
--

INSERT INTO `addcandidate` (`id`, `cname`, `symbol`, `cparty`, `photo`, `votes`) VALUES
(20, 'Narendra Damodar Modi', 'mod.png', 'Bhartiya Janata Party', 'modi.png', 0),
(21, 'Mallikarjun Kharge', 'Hand.png', 'Indian National Congress(INC)', 'MalikArjun.jpg', 0),
(22, 'Uddhav Tackheray', 'udv.png', 'Shiv Sena-(UBT)', 'uddhavThack.jpg', 0),
(23, 'Ajit Pawar', 'NCP.jpg', 'Nationalist Congress Party (NCP)', 'ajjit.jpg', 0),
(24, 'Sharad Pawar', 'pawar.jpg', 'Nationalist Congress Party (NCP)', 'Sharaji.jpg', 0),
(25, 'Nitish Kumar', 'jdu.png', 'Janata Dal (United)', 'nitish.jpg', 0),
(26, 'K. Chandrashekar Rao', 'BhRS.jpg', 'Bhartiya Rashtra Samithi', 'kCR.jpg', 0),
(27, 'M. K. Stalin', 'dmk.png', 'Dravida Munnetra Kazhagam (DMK)', 'Mk.jpg', 0),
(28, 'Pinrarayi Vijayan', 'CPIM-Logo-Vector.png', 'Communist Party Of India( CPI- M)', 'PV.jpg', 0),
(29, 'Arvind Kejriwal', '71Ng4IC65-L.jpg', 'Aam Aadmi Party (AAM)', 'Arvind_kejriwal.jpg', 0),
(30, 'Rahil Rajiv Gandhi', 'Hand.png', 'Indian National Congress(INC)', 'Rahul_Gandhi (1).png', 0),
(31, 'Mamta Banerjee', 'mamta.png', 'All India Trinamool Congress (Congress-AITC)', 'srimati-mamata-banerjee-cm.jpg', 0),
(32, 'Akhilesh Yadav', 'samaj.jpg', 'Samajwadi Party', 'Akhilesh Yadav.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

DROP TABLE IF EXISTS `adminlogin`;
CREATE TABLE IF NOT EXISTS `adminlogin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `name`, `password`) VALUES
(1, 'Admin', 'Admin@1122');

-- --------------------------------------------------------

--
-- Table structure for table `voterregistration`
--

DROP TABLE IF EXISTS `voterregistration`;
CREATE TABLE IF NOT EXISTS `voterregistration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_general_ci NOT NULL,
  `dob` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `gender` text COLLATE utf8mb4_general_ci NOT NULL,
  `photo` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `idtype` text COLLATE utf8mb4_general_ci NOT NULL,
  `cnic` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `issue` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `expire` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `pass` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `cpass` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL,
  `votes` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voterregistration`
--

INSERT INTO `voterregistration` (`id`, `name`, `dob`, `email`, `mobile`, `gender`, `photo`, `idtype`, `cnic`, `issue`, `expire`, `pass`, `cpass`, `status`, `votes`) VALUES
(10, 'ewrewtrete', '4444-07-07', 'sdkjflkj@gmail.com', '9090909090', 'Female', 'WhatsApp Image 2023-01-27 at 12.51.02 AM.jpeg', '', '2', '2222-03-02', '', '2', '2', 0, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
