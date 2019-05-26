-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 26, 2019 at 05:17 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `software-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `rtb_option_payment_method`
--

CREATE TABLE `rtb_option_payment_method` (
  `id` int(11) NOT NULL,
  `optionID` int(11) NOT NULL,
  `payment_methodID` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rtb_option_payment_method`
--

INSERT INTO `rtb_option_payment_method` (`id`, `optionID`, `payment_methodID`, `create_date`, `update_date`, `isdeleted`) VALUES
(1, 1, 2, '2019-05-15 20:18:44', '2019-05-15 20:18:44', 0),
(2, 2, 2, '2019-05-15 20:18:44', '2019-05-15 20:18:44', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rtb_option_usertype`
--

CREATE TABLE `rtb_option_usertype` (
  `id` int(11) NOT NULL,
  `optionID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `show_in_checked` int(11) NOT NULL DEFAULT '1',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rtb_option_usertype`
--

INSERT INTO `rtb_option_usertype` (`id`, `optionID`, `usertypeID`, `show_in_checked`, `create_date`, `update_date`, `isdeleted`) VALUES
(1, 1, 1, 0, '2019-05-15 20:19:09', '2019-05-15 20:19:09', 0),
(2, 2, 1, 0, '2019-05-15 20:19:09', '2019-05-15 20:19:09', 0),
(3, 3, 1, 1, '2019-05-15 20:19:09', '2019-05-15 20:19:09', 0),
(4, 1, 2, 0, '2019-05-18 22:34:52', '2019-05-18 22:35:13', 0),
(5, 2, 2, 0, '2019-05-18 22:35:24', '2019-05-18 22:35:30', 0),
(6, 3, 2, 1, '2019-05-18 22:35:42', '2019-05-18 22:35:42', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rtb_page_component_usertype`
--

CREATE TABLE `rtb_page_component_usertype` (
  `id` int(11) NOT NULL,
  `page_componentID` int(11) NOT NULL DEFAULT '0',
  `usertypeID` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rtb_page_component_usertype`
--

INSERT INTO `rtb_page_component_usertype` (`id`, `page_componentID`, `usertypeID`, `create_date`, `update_date`, `isdeleted`) VALUES
(1, 6, 5, '2019-05-15 20:19:36', '2019-05-24 04:58:13', 0),
(2, 7, 5, '2019-05-15 20:19:36', '2019-05-24 04:58:14', 0),
(3, 6, 6, '2019-05-24 04:58:39', '2019-05-24 04:58:39', 0),
(4, 7, 6, '2019-05-24 04:58:45', '2019-05-24 04:58:45', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rtb_project_img`
--

CREATE TABLE `rtb_project_img` (
  `id` int(11) NOT NULL,
  `projectID` int(11) NOT NULL,
  `imgID` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rtb_req_donation_project`
--

CREATE TABLE `rtb_req_donation_project` (
  `id` int(11) NOT NULL,
  `req_donationID` int(11) NOT NULL,
  `projectID` int(11) NOT NULL,
  `taken_amount` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rtb_req_donation_project`
--

INSERT INTO `rtb_req_donation_project` (`id`, `req_donationID`, `projectID`, `taken_amount`, `created_date`, `update_date`, `isdeleted`) VALUES
(21, 2, 3, 867, '2019-05-26 01:11:09', '2019-05-26 01:11:09', 0),
(22, 4, 3, 79311, '2019-05-26 01:11:09', '2019-05-26 01:11:09', 0),
(23, 17, 3, 1002458, '2019-05-26 01:11:09', '2019-05-26 01:11:09', 0),
(24, 82, 3, 226171, '2019-05-26 01:11:09', '2019-05-26 01:11:09', 0),
(25, 10, 3, 2129046, '2019-05-26 01:11:09', '2019-05-26 01:11:09', 0),
(26, 74, 3, 2, '2019-05-26 01:11:09', '2019-05-26 01:11:09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rtb_usertype_page`
--

CREATE TABLE `rtb_usertype_page` (
  `id` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `pageID` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rtb_usertype_page`
--

INSERT INTO `rtb_usertype_page` (`id`, `usertypeID`, `pageID`, `order`, `create_date`, `update_date`, `isdeleted`) VALUES
(1, 5, 1, 1, '2019-05-15 20:20:33', '0000-00-00 00:00:00', 0),
(2, 5, 6, 2, '2019-05-15 20:20:33', '0000-00-00 00:00:00', 0),
(3, 5, 2, 3, '2019-05-15 20:20:33', '0000-00-00 00:00:00', 0),
(4, 5, 7, 4, '2019-05-15 20:20:33', '0000-00-00 00:00:00', 0),
(5, 5, 10, 5, '2019-05-15 20:20:33', '0000-00-00 00:00:00', 0),
(6, 5, 14, 6, '2019-05-15 20:20:33', '0000-00-00 00:00:00', 0),
(7, 5, 13, 7, '2019-05-15 20:20:33', '0000-00-00 00:00:00', 0),
(8, 6, 1, 1, '2019-05-24 04:59:27', '2019-05-24 04:59:27', 0),
(9, 6, 10, 3, '2019-05-24 05:00:35', '2019-05-24 05:00:35', 0),
(10, 6, 7, 2, '2019-05-24 05:00:28', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rtb_usertype_theme`
--

CREATE TABLE `rtb_usertype_theme` (
  `id` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `themeID` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rtb_usertype_theme`
--

INSERT INTO `rtb_usertype_theme` (`id`, `usertypeID`, `themeID`, `create_date`, `update_date`, `isdeleted`) VALUES
(1, 5, 1, '2019-05-23 23:00:43', '2019-05-23 23:00:43', 0),
(2, 6, 3, '2019-05-23 23:02:13', '2019-05-23 23:02:13', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rtb_user_project`
--

CREATE TABLE `rtb_user_project` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `projectID` int(11) NOT NULL,
  `roleID` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rtb_user_project`
--

INSERT INTO `rtb_user_project` (`id`, `userID`, `projectID`, `roleID`, `create_date`, `update_date`, `isdeleted`) VALUES
(47, 24, 3, 3, '2019-05-26 01:11:09', '2019-05-26 01:11:09', 0),
(48, 45, 3, 3, '2019-05-26 01:11:09', '2019-05-26 01:11:09', 0),
(49, 38, 3, 3, '2019-05-26 01:11:09', '2019-05-26 01:11:09', 0),
(50, 65, 3, 3, '2019-05-26 01:11:09', '2019-05-26 01:11:09', 0),
(51, 33, 3, 3, '2019-05-26 01:11:09', '2019-05-26 01:11:09', 0),
(52, 89, 3, 3, '2019-05-26 01:11:09', '2019-05-26 01:11:09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_address`
--

CREATE TABLE `tb_address` (
  `id` int(11) NOT NULL,
  `address_name` varchar(300) NOT NULL,
  `parentID` int(11) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_address`
--

INSERT INTO `tb_address` (`id`, `address_name`, `parentID`, `create_date`, `update_date`, `isdeleted`) VALUES
(1, 'Egypt', 0, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(2, 'Alexandria', 1, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(3, 'Aswan', 1, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(4, 'Asyut', 1, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(5, 'Beni Suef', 1, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(6, 'Beheira', 1, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(7, 'Cairo', 1, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(8, 'Damietta', 1, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(9, 'Dakahlia', 1, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(10, 'El Wadi El Gedid', 1, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(11, 'Faiyum', 1, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(12, 'Gharbia', 1, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(13, 'Giza', 1, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(14, 'Ismailia', 1, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(15, 'Kafr El Sheikh', 1, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(16, 'Luxor', 1, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(17, 'Monufia', 1, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(18, 'Minya', 1, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(19, 'Matruh', 1, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(20, 'North Sinai', 1, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(21, 'Port Said', 1, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(22, 'Qena', 1, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(23, 'Qalyubia', 1, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(24, 'Red Sea', 1, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(25, 'Suez', 1, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(26, 'Sharqia', 1, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(27, 'South Sinai', 1, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(28, 'Sohag', 1, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(29, 'Tanta', 12, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(30, 'El Mahalla', 12, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(31, 'Kafr al-Zayat', 12, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(32, 'Zifta', 12, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(33, 'Basyoun', 12, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(34, 'Port Said', 21, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(35, 'Giza', 13, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(36, 'Samannoud', 12, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(37, 'Alexandria', 2, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(38, 'Ismailia', 14, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(39, 'At-Tall al-Kabir', 14, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(40, 'Suez', 25, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(41, 'Kom Ombo', 3, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(42, 'Aswan', 3, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(43, 'Edfu', 3, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(44, 'El Kharga', 10, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(45, 'El-Kanater al-Kyria', 23, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(46, 'Banha', 23, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(47, 'Shibin al-Qanater', 23, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(48, 'Shubra el-Khema', 23, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(49, 'Khusus', 23, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(50, 'Qalyub', 23, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(51, 'Khanka', 23, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(52, 'El Ubour', 23, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(53, 'Tukh', 23, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(54, 'Kafr el-Dawwar', 6, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(55, 'Rashed', 6, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(56, 'Abul Matamir', 6, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(57, 'Damanhur', 6, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(58, 'Edko', 6, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(59, 'Hosh Issa', 6, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(60, 'Abu Hummus', 6, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(61, 'El-Delengat', 6, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(62, 'Etay el-Barud', 6, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(63, 'Cairo', 7, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(64, '\r\nMarsa Matruh\r\n', 19, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(65, 'Al-Hammam', 19, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(66, 'Damietta', 8, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(67, 'El-Matareya', 9, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(68, 'Bilqas', 9, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(69, 'Senbellawein', 9, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(70, 'Talkha', 9, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(71, 'Dikirnis', 9, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(72, 'El-Gamalia', 9, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(73, 'Sherbin', 9, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(74, 'El Mansoura', 9, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(75, 'Mit Ghamr', 9, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(76, 'Manzala', 9, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(77, 'Minyet al-Nasr', 9, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(78, 'Luxor', 16, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(79, 'Qus', 22, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(80, 'Dishna', 22, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(81, 'Farshut', 22, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(82, 'Qena', 22, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(83, 'Aja', 9, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(84, 'Al-Kurdy', 9, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(85, 'Bani Ubayd', 9, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(86, 'Ma?allah Damanah', 9, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(87, 'Mit Salsil', 9, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(88, 'Nabaruh', 9, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(89, 'Tama al-Amdid', 9, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(90, 'As-Santah', 12, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(91, 'Burj al-Arab', 2, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(92, 'Qutur', 12, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(93, '6th of October', 13, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(94, 'Sheikh Zayed', 13, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(95, 'El Hawamdeya', 13, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(96, 'Al Badrashin', 13, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(97, 'El-Saf', 13, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(98, 'Atfih', 13, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(99, 'Al Ayat', 13, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(100, 'Abu an Numros', 13, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(101, 'Bawiti', 13, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(102, 'Awsim', 13, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(103, 'Kafr Shukr', 23, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(104, 'Kirdasah', 13, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(105, 'Madinat Burj al-Arab al-Jadidah ', 2, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(106, 'Qaha', 23, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(107, 'Siwa', 19, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(108, 'As-Sallum', 19, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(109, 'Badr', 6, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(110, 'Shubrakhit', 6, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0),
(111, 'Nasr City', 7, '2019-05-15 20:22:31', '2019-05-15 20:22:31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_daily_donation`
--

CREATE TABLE `tb_daily_donation` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `projectCategoryID` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_daily_donation`
--

INSERT INTO `tb_daily_donation` (`id`, `amount`, `date`, `projectCategoryID`, `created_date`, `update_date`, `isdeleted`) VALUES
(31, 0, '2019-05-24', 1, '2019-05-24 14:51:10', '2019-05-24 14:51:10', 0),
(32, 0, '2019-05-24', 2, '2019-05-24 14:51:11', '2019-05-24 14:51:11', 0),
(33, 0, '2019-05-24', 3, '2019-05-24 14:51:12', '2019-05-24 14:51:12', 0),
(34, 0, '2019-05-25', 1, '2019-05-25 02:35:25', '2019-05-25 02:35:25', 0),
(35, 0, '2019-05-25', 2, '2019-05-25 02:35:26', '2019-05-25 02:35:26', 0),
(36, 0, '2019-05-25', 3, '2019-05-25 02:35:26', '2019-05-25 02:35:26', 0),
(37, 3438550, '2019-05-26', 1, '2019-05-26 01:09:19', '2019-05-26 01:10:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_data_log`
--

CREATE TABLE `tb_data_log` (
  `id` int(11) NOT NULL,
  `data` varchar(255) NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `action_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `timestamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_data_log`
--

INSERT INTO `tb_data_log` (`id`, `data`, `action`, `action_time`, `timestamp`) VALUES
(315, '', 'A row has been deleted in tb_project', '2019-05-24 05:08:58', '0000-00-00 00:00:00'),
(316, '', 'A row has been deleted in tb_project', '2019-05-24 05:09:00', '0000-00-00 00:00:00'),
(317, '', 'A row has been deleted in tb_project', '2019-05-24 05:09:01', '0000-00-00 00:00:00'),
(318, '', 'A row has been deleted in tb_project', '2019-05-24 05:09:03', '0000-00-00 00:00:00'),
(319, '', 'A row has been deleted in tb_project', '2019-05-24 05:09:05', '0000-00-00 00:00:00'),
(320, '', 'A row has been deleted in tb_project', '2019-05-24 05:09:07', '0000-00-00 00:00:00'),
(321, '', 'A row has been deleted in tb_project', '2019-05-24 05:09:08', '0000-00-00 00:00:00'),
(322, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(323, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(324, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(325, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(326, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(327, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(328, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(329, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(330, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(331, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(332, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(333, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(334, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(335, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(336, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(337, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(338, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(339, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(340, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(341, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(342, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(343, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(344, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(345, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(346, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(347, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(348, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(349, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(350, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(351, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(352, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(353, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(354, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(355, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(356, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(357, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(358, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(359, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(360, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(361, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(362, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(363, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(364, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(365, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(366, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(367, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(368, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(369, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(370, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(371, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(372, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(373, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(374, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(375, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(376, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(377, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(378, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(379, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(380, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(381, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(382, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(383, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(384, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(385, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(386, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(387, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(388, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(389, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(390, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(391, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(392, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(393, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(394, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(395, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(396, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(397, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(398, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(399, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(400, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(401, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(402, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(403, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(404, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(405, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(406, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(407, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(408, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(409, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(410, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(411, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(412, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(413, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(414, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(415, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(416, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(417, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(418, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(419, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(420, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(421, '', 'Data was inserted in tb_users', '2019-05-24 05:32:56', '0000-00-00 00:00:00'),
(422, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(423, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(424, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(425, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(426, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(427, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(428, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(429, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(430, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(431, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(432, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(433, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(434, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(435, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(436, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(437, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(438, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(439, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(440, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(441, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(442, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(443, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(444, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(445, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(446, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(447, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(448, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(449, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(450, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(451, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(452, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(453, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(454, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(455, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(456, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(457, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(458, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(459, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(460, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(461, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(462, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(463, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(464, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(465, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(466, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(467, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(468, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(469, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(470, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(471, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(472, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(473, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(474, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(475, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(476, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(477, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(478, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(479, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(480, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(481, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(482, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(483, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(484, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(485, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(486, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(487, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(488, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(489, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(490, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(491, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(492, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(493, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(494, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(495, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(496, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(497, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(498, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(499, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(500, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(501, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(502, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(503, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(504, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(505, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(506, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(507, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(508, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(509, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(510, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(511, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(512, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(513, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(514, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(515, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(516, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(517, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(518, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(519, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(520, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(521, '', 'New project has been inserted in tb_project', '2019-05-24 05:51:35', '0000-00-00 00:00:00'),
(522, '', 'New project has been inserted in tb_project', '2019-05-25 02:43:07', '0000-00-00 00:00:00'),
(523, '', 'Tb_project has been updated', '2019-05-25 02:45:19', '0000-00-00 00:00:00'),
(524, '', 'Tb_project has been updated', '2019-05-25 02:45:29', '0000-00-00 00:00:00'),
(525, '', 'Tb_project has been updated', '2019-05-25 02:45:36', '0000-00-00 00:00:00'),
(526, '', 'Tb_project has been updated', '2019-05-25 02:45:39', '0000-00-00 00:00:00'),
(527, '', 'Tb_project has been updated', '2019-05-25 02:45:51', '0000-00-00 00:00:00'),
(528, '', 'Tb_project has been updated', '2019-05-25 02:45:55', '0000-00-00 00:00:00'),
(529, '', 'Tb_project has been updated', '2019-05-25 02:46:03', '0000-00-00 00:00:00'),
(530, '', 'Tb_project has been updated', '2019-05-25 02:46:05', '0000-00-00 00:00:00'),
(531, '', 'Tb_project has been updated', '2019-05-25 02:46:15', '0000-00-00 00:00:00'),
(532, '', 'Tb_project has been updated', '2019-05-25 02:46:18', '0000-00-00 00:00:00'),
(533, '', 'Tb_project has been updated', '2019-05-25 02:46:25', '0000-00-00 00:00:00'),
(534, '', 'Tb_project has been updated', '2019-05-25 02:46:28', '0000-00-00 00:00:00'),
(535, '', 'Tb_project has been updated', '2019-05-25 02:46:32', '0000-00-00 00:00:00'),
(536, '', 'Tb_project has been updated', '2019-05-25 02:46:37', '0000-00-00 00:00:00'),
(537, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(538, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(539, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(540, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(541, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(542, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(543, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(544, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(545, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(546, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(547, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(548, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(549, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(550, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(551, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(552, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(553, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(554, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(555, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(556, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(557, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(558, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(559, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(560, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(561, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(562, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(563, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(564, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(565, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(566, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(567, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(568, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(569, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(570, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(571, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(572, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(573, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(574, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(575, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(576, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(577, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(578, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(579, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(580, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(581, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(582, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(583, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(584, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(585, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(586, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(587, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(588, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(589, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(590, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(591, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(592, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(593, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(594, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(595, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(596, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(597, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(598, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(599, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(600, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(601, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(602, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(603, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(604, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(605, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(606, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(607, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(608, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(609, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(610, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(611, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(612, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(613, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(614, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(615, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(616, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(617, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(618, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(619, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(620, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(621, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(622, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(623, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(624, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(625, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(626, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(627, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(628, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(629, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(630, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(631, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(632, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(633, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(634, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(635, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(636, '', 'delete', '2019-05-25 02:47:22', '0000-00-00 00:00:00'),
(637, '', 'delete', '2019-05-25 02:47:43', '0000-00-00 00:00:00'),
(638, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(639, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(640, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(641, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(642, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(643, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(644, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(645, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(646, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(647, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(648, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(649, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(650, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(651, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(652, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(653, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(654, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(655, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(656, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(657, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(658, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(659, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(660, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(661, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(662, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(663, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(664, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(665, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(666, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(667, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(668, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(669, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(670, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(671, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(672, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(673, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(674, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(675, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(676, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(677, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(678, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(679, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(680, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(681, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(682, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(683, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(684, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(685, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(686, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(687, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(688, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(689, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(690, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(691, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(692, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(693, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(694, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(695, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(696, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(697, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(698, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(699, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(700, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(701, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(702, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(703, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(704, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(705, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(706, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(707, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(708, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(709, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(710, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(711, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(712, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(713, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(714, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(715, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(716, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(717, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(718, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(719, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(720, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(721, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(722, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(723, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(724, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(725, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(726, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(727, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(728, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(729, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(730, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(731, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(732, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(733, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(734, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(735, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(736, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(737, '', 'New project has been inserted in tb_project', '2019-05-26 00:59:54', '0000-00-00 00:00:00'),
(738, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(739, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(740, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(741, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(742, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(743, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(744, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(745, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(746, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(747, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(748, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(749, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(750, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(751, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(752, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(753, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(754, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(755, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(756, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(757, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(758, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(759, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(760, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(761, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(762, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(763, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(764, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(765, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(766, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(767, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(768, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(769, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(770, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(771, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(772, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(773, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(774, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(775, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(776, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(777, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(778, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(779, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(780, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(781, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(782, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(783, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(784, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(785, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(786, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(787, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(788, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(789, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(790, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(791, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(792, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(793, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(794, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(795, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(796, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(797, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(798, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(799, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(800, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(801, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(802, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(803, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(804, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(805, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(806, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(807, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(808, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(809, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(810, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(811, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(812, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(813, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(814, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(815, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(816, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(817, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(818, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(819, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(820, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(821, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(822, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(823, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(824, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(825, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(826, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(827, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(828, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(829, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(830, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(831, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(832, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(833, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(834, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(835, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(836, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(837, '', 'Data was inserted in tb_request_donation', '2019-05-26 01:06:36', '0000-00-00 00:00:00'),
(838, '', 'tb_request_donations has been updated', '2019-05-26 01:09:50', '0000-00-00 00:00:00'),
(839, '', 'tb_request_donations has been updated', '2019-05-26 01:09:51', '0000-00-00 00:00:00'),
(840, '', 'tb_request_donations has been updated', '2019-05-26 01:09:52', '0000-00-00 00:00:00'),
(841, '', 'tb_request_donations has been updated', '2019-05-26 01:09:53', '0000-00-00 00:00:00'),
(842, '', 'tb_request_donations has been updated', '2019-05-26 01:09:58', '0000-00-00 00:00:00'),
(843, '', 'tb_request_donations has been updated', '2019-05-26 01:09:59', '0000-00-00 00:00:00'),
(844, '', 'tb_request_donations has been updated', '2019-05-26 01:10:00', '0000-00-00 00:00:00'),
(845, '', 'tb_request_donations has been updated', '2019-05-26 01:11:09', '0000-00-00 00:00:00'),
(846, '', 'tb_request_donations has been updated', '2019-05-26 01:11:09', '0000-00-00 00:00:00'),
(847, '', 'tb_request_donations has been updated', '2019-05-26 01:11:09', '0000-00-00 00:00:00'),
(848, '', 'tb_request_donations has been updated', '2019-05-26 01:11:09', '0000-00-00 00:00:00'),
(849, '', 'tb_request_donations has been updated', '2019-05-26 01:11:09', '0000-00-00 00:00:00'),
(850, '', 'tb_request_donations has been updated', '2019-05-26 01:11:09', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_donation_reason`
--

CREATE TABLE `tb_donation_reason` (
  `id` int(11) NOT NULL,
  `reason` varchar(300) NOT NULL,
  `sendtoID` int(11) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_donation_reason`
--

INSERT INTO `tb_donation_reason` (`id`, `reason`, `sendtoID`, `create_date`, `update_date`, `isdeleted`) VALUES
(1, 'Charity', 0, '2019-05-15 20:23:18', '2019-05-15 20:23:18', 0),
(2, 'Gift', 1, '2019-05-15 20:23:18', '2019-05-15 20:23:18', 0),
(3, 'zakah', 0, '2019-05-24 05:04:15', '2019-05-24 05:04:15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_errors`
--

CREATE TABLE `tb_errors` (
  `id` int(11) NOT NULL,
  `error_code` int(11) NOT NULL,
  `user_error` varchar(250) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_errors`
--

INSERT INTO `tb_errors` (`id`, `error_code`, `user_error`, `create_date`, `update_date`, `isdeleted`) VALUES
(1, 435, 'phone number cant be a negative number', '2019-05-19 07:41:23', '2019-05-23 04:11:30', 0),
(2, 231, 'Some Fields are Empty', '2019-05-19 09:04:11', '2019-05-19 09:04:11', 0),
(3, 110, 'phone number must consist of 11 numbers', '2019-05-19 09:04:29', '2019-05-23 04:10:51', 0),
(4, 667, 'Invalid email address', '2019-05-19 09:04:48', '2019-05-23 04:12:56', 0),
(5, 342, 'email is already being used', '2019-05-19 09:05:45', '2019-05-23 04:13:36', 0),
(6, 908, 'Confirm Password Field is empty', '2019-05-19 09:06:01', '2019-05-19 09:06:01', 0),
(7, 991, 'User Not Found', '2019-05-19 09:06:15', '2019-05-19 09:06:15', 0),
(8, 478, 'Invalid Password', '2019-05-19 09:06:34', '2019-05-19 09:06:34', 0),
(9, 555, 'No records to be displayed', '2019-05-19 09:07:17', '2019-05-19 09:07:17', 0),
(12, 118, 'You need to choose a team leader', '2019-05-19 09:07:51', '2019-05-19 09:07:51', 0),
(13, 119, 'you need to choose a team member and team member', '2019-05-19 09:08:10', '2019-05-23 04:36:28', 0),
(14, 889, 'password is incorrect', '2019-05-19 09:08:26', '2019-05-23 04:23:00', 0),
(15, 656, 'donation could not be done', '2019-05-19 09:08:48', '2019-05-19 09:08:48', 0),
(16, 558, 'Invalid Image Extention', '2019-05-23 04:02:13', '2019-05-23 04:02:13', 0),
(18, 899, 'image path movement error', '2019-05-23 04:08:59', '2019-05-23 04:08:59', 0),
(19, 876, 'phone number field must be a number', '2019-05-23 04:11:57', '2019-05-23 04:11:57', 0),
(20, 123, 'Password must contain at least one upper case', '2019-05-23 04:14:43', '2019-05-23 04:14:43', 0),
(21, 234, 'Password must contain at least one lower case', '2019-05-23 04:15:20', '2019-05-23 04:15:20', 0),
(22, 345, 'Password must contain at least one number', '2019-05-23 04:16:01', '2019-05-23 04:16:01', 0),
(23, 456, 'Password must contain at least one special character', '2019-05-23 04:16:01', '2019-05-23 04:16:01', 0),
(24, 567, 'Password must contain at least one special character', '2019-05-23 04:16:32', '2019-05-23 04:16:32', 0),
(25, 678, 'Password field is empty', '2019-05-23 04:17:48', '2019-05-23 04:17:48', 0),
(26, 888, 'unaccepted date entry', '2019-05-23 04:19:03', '2019-05-23 04:19:03', 0),
(27, 999, 'You need to enter user password to confirm the change', '2019-05-23 04:24:06', '2019-05-23 04:24:06', 0),
(28, 897, 'you must enter subject and message to be send', '2019-05-23 04:27:44', '2019-05-23 04:27:44', 0),
(29, 786, 'you did not choose any candidate to send notification to', '2019-05-23 04:28:18', '2019-05-23 04:28:18', 0),
(30, 670, 'numeric fields cant be negative', '2019-05-23 04:33:53', '2019-05-23 04:33:53', 0),
(31, 117, 'You need to choose a team member', '2019-05-23 04:37:32', '2019-05-23 04:37:32', 0),
(32, 116, 'you must enter the project data', '2019-05-23 04:39:00', '2019-05-23 04:39:00', 0),
(33, 556, 'email not exist please try again', '2019-05-23 04:47:10', '2019-05-23 04:47:10', 0),
(34, 665, 'system error happened (could not make a temprory password)', '2019-05-23 04:48:22', '2019-05-23 04:48:22', 0),
(35, 455, 'the passwords entered are not matching', '2019-05-23 04:52:08', '2019-05-23 04:52:08', 0),
(36, 223, 'Temporary password is already used', '2019-05-23 04:52:24', '2019-05-23 04:52:24', 0),
(37, 334, 'no email was entered', '2019-05-23 05:48:37', '2019-05-23 05:48:37', 0),
(38, 990, 'You must choose donations to get into the choosen project', '2019-05-23 05:50:31', '2019-05-23 05:50:31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_forget_password_data`
--

CREATE TABLE `tb_forget_password_data` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tempPassword` varchar(30) NOT NULL,
  `used` tinyint(4) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_forget_password_data`
--

INSERT INTO `tb_forget_password_data` (`id`, `email`, `tempPassword`, `used`, `created_date`, `updated_date`, `isdeleted`) VALUES
(1, 'habiba.hhegazy1998@gmail.com', '29e7d70bc6ca', 1, '2019-05-23 22:58:23', '2019-05-23 22:59:21', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_gender`
--

CREATE TABLE `tb_gender` (
  `id` int(11) NOT NULL,
  `gender_name` varchar(300) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_gender`
--

INSERT INTO `tb_gender` (`id`, `gender_name`, `create_date`, `update_date`, `isdeleted`) VALUES
(1, 'Female', '2019-05-15 20:24:49', '2019-05-15 20:24:49', 0),
(2, 'Male', '2019-05-15 20:24:49', '2019-05-15 20:24:49', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_html`
--

CREATE TABLE `tb_html` (
  `id` int(11) NOT NULL,
  `html` text NOT NULL,
  `pageID` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_html`
--

INSERT INTO `tb_html` (`id`, `html`, `pageID`, `create_date`, `update_date`, `isdeleted`) VALUES
(1, '    <div class=\"card-header py-3\">\r\n        <h6 class=\"m-0 font-weight-bold text-primary\"> Insert User </h6>\r\n    </div>\r\n\r\n    <div class=\'card-body\'>\r\n        <div class=\"row\">        \r\n            <div id=\'dropbox_block1\' style=\"display: inline; margin-left: 20px; margin-bottom: 15px\"> </div>\r\n            <div id=\'dropbox_block2\' style=\"display: inline; margin-left: 50px; margin-bottom: 15px\"> </div>\r\n        </div>\r\n        \r\n        <div id=\'insert_block\'></div>\r\n    </div>\r\n\r\n    <script id=\'dynamicScript\'>\r\n\r\n    var parentID;\r\n    var choosen_usertype;\r\n    var len;\r\n\r\n    $.ajax({\r\n        url: \'../controller/user/list_usertypes.php\',\r\n        data: { parentID: 0 },\r\n        type: \'POST\',\r\n        dataType: \"JSON\",\r\n        success: function(data) {\r\n            console.log(data);\r\n\r\n            var dropdown = \"<div class=\'dropdown\'>\";\r\n            dropdown += \"<button style=\' display: inline-block;width: 120px;\' class=\'btn btn-primary dropdown-toggle\' type=\'button\' data-toggle=\'dropdown\'> Choose <span class=\'caret\'></span></button>\";\r\n            dropdown += \"<ul class=\'dropdown-menu\'>\";\r\n\r\n            for (var key in data) {\r\n                dropdown += \'<li><a style=\"width: 100%;\" class=\"dropdown1\" id=\"link-\' + key + \'\">\' + data[key] + \'</a></li>\';\r\n            }\r\n\r\n            $(dropdown).appendTo(\"#dropbox_block1\");\r\n\r\n        },\r\n        error: function(data){\r\n            console.log(data);\r\n        }\r\n    });\r\n\r\n    $(document).on(\'click\',\'.dropdown1\',function(e){\r\n\r\n        e.preventDefault();\r\n        e.stopImmediatePropagation();\r\n\r\n        var id = $(this).attr(\'id\');\r\n        parentID = id.substr(id.indexOf(\'-\')+1, id.indexOf(\'-\'));\r\n\r\n        $.ajax({\r\n            url: \'../controller/user/list_usertypes.php\',\r\n            data: { parentID: parentID },\r\n            type: \'POST\',\r\n            dataType: \'JSON\',\r\n            success: function(data){\r\n\r\n                if(data != null){\r\n\r\n                    $(\"#dropbox_block2\").hide();\r\n                    $(\"#dropbox_block2\").empty();\r\n\r\n                    var dropdown = \"<div class=\'dropdown\'>\";\r\n                    dropdown += \"<button style=\' display: inline-block;width: 120px;\' class=\'btn btn-primary dropdown-toggle\' type=\'button\' data-toggle=\'dropdown\'> Choose <span class=\'caret\'></span></button>\";\r\n                    dropdown += \"<ul class=\'dropdown-menu\'>\";\r\n\r\n                    for (var key in data) {\r\n                        dropdown += \'<li><a style=\"width: 100%;\" class=\"dropdown2\" id=\"link-\' + key + \'\">\' + data[key] + \'</a></li>\';\r\n                    }\r\n\r\n                    $(dropdown).appendTo(\"#dropbox_block2\");\r\n\r\n\r\n                    $(\'#dropbox_block2\').show();\r\n                }\r\n            },\r\n            error: function(data){\r\n                console.log(data);\r\n            }\r\n        });\r\n        return false;\r\n    });\r\n\r\n    $(document).on(\'click\',\'.dropdown2\',function(e){\r\n        \r\n        e.preventDefault();\r\n        e.stopImmediatePropagation();\r\n\r\n        var id = $(this).attr(\'id\');\r\n        choosen_usertype = id.substr(id.indexOf(\'-\')+1, id.indexOf(\'-\'));\r\n\r\n        $(\'#insert_block\').hide();\r\n        $(\'#insert_block\').empty();\r\n        \r\n        var insertdiv = document.getElementById(\"insert_block\");\r\n\r\n        $.ajax({\r\n            url: \'classes/user_insert_form.php\',\r\n            data: {parentID: parentID},\r\n            type: \'POST\',\r\n            dataType: \"JSON\",\r\n            success: function(data) {\r\n                len = data[0];\r\n                insertdiv.innerHTML+= data[1];\r\n                $(\'#insert_block\').show();\r\n            },\r\n            error: function(data){\r\n                console.log(data);\r\n            }\r\n        });\r\n    });\r\n\r\n    $(document).on(\'click\',\'#insertMember\',function(e){\r\n        $(\"#insertForm\").on(\'submit\', (function(e) {\r\n\r\n            e.preventDefault();\r\n            e.stopImmediatePropagation();\r\n\r\n            var data = new FormData(this);\r\n\r\n            var x = 1;\r\n            var z = 0;\r\n            while(z < len){\r\n                var id = \"in-\"+x;\r\n                var value = document.getElementById(id).value;\r\n                data.append(\'arr[]\', value);\r\n                z++;\r\n                x++;\r\n            }\r\n\r\n            data.append(\'arr[]\', document.getElementById(\"userEmail\").value);\r\n            data.append(\'arr[]\', document.getElementById(\"userPass\").value);\r\n            data.append(\'arr[]\', document.getElementById(\"phone_number\").value);\r\n\r\n            data.append(\'usertypeID\', choosen_usertype);\r\n\r\n            $.ajax({\r\n                url: \"../controller/user/add_user.php\",\r\n                type: \"POST\",\r\n                data: data,\r\n                contentType: false,\r\n                cache: false,\r\n                processData: false,\r\n                dataType: \'JSON\',\r\n                success: function(data) {\r\n\r\n                    if(data[\'error\']){\r\n                        Swal({type: \'error\', title: data[\'error\'],\r\n                            toast: true, position: \'top-right\',\r\n                            showConfirmButton: false, timer: 3000 });\r\n                    }else{\r\n                        Swal({type: \'success\', title: data[\'success\'],\r\n                            toast: true, position: \'top-right\',\r\n                            showConfirmButton: false, timer: 3000 });\r\n                        document.getElementById(\"insertForm\").reset();\r\n                    }\r\n\r\n                },\r\n                error: function(data){\r\n                    console.log(data);\r\n                }\r\n            });\r\n            return false;\r\n        }));\r\n    });\r\n\r\n    $(document).on(\'change\', \'select.address1\', function(e) {\r\n\r\n        e.preventDefault();\r\n        e.stopImmediatePropagation();\r\n\r\n        var address2id = $(this).children(\"option:selected\").val();\r\n\r\n        $.ajax({\r\n            url: \'../controller/user/get_address.php\',\r\n            data: {\r\n                addressID: address2id\r\n            },\r\n            type: \'POST\',\r\n            dataType: \"JSON\",\r\n            success: function(data) {\r\n                $(\".address2\").html(data);\r\n            },\r\n            error: function(data) {\r\n                console.log(data);\r\n            }\r\n        });\r\n    });\r\n\r\n    $(document).on(\'change\', \'select.address2\', function(e) {\r\n\r\n        e.preventDefault();\r\n        e.stopImmediatePropagation();\r\n\r\n        var address3id = $(this).children(\"option:selected\").val();\r\n\r\n        $.ajax({\r\n            url: \'../controller/user/get_address.php\',\r\n            data: {\r\n                addressID: address3id\r\n            },\r\n            type: \'POST\',\r\n            dataType: \"JSON\",\r\n            success: function(data) {\r\n                $(\".address3\").html(data);\r\n\r\n            },\r\n            error: function(data) {\r\n                console.log(data);\r\n            }\r\n        });\r\n    });\r\n\r\n    </script>\r\n\r\n\r\n</div>\r\n\r\n\r\n', 3, '2019-05-15 20:26:21', '2019-05-23 05:14:21', 0),
(2, '    <style type=\"text/css\">\r\n        body {\r\n            color: #566787;\r\n            background: #f5f5f5;\r\n            font-family: \'Roboto\', sans-serif;\r\n        }\r\n        .table-wrapper {\r\n            background: #fff;\r\n            padding: 20px;\r\n            margin: 30px 0;\r\n            box-shadow: 0 1px 1px rgba(0,0,0,.05);\r\n        }\r\n        .table-title {\r\n            padding-bottom: 10px;\r\n            margin: 0 0 10px;\r\n        }\r\n        .table-title h2 {\r\n            margin: 8px 0 0;\r\n            font-size: 22px;\r\n        }\r\n        table.table tr th, table.table tr td {\r\n            border-color: #e9e9e9;\r\n        }\r\n        table.table-striped tbody tr:nth-of-type(odd) {\r\n            background-color: #fcfcfc;\r\n        }\r\n        table.table-striped.table-hover tbody tr:hover {\r\n            background: #f5f5f5;\r\n        }\r\n        table.table th i {\r\n            font-size: 13px;\r\n            margin: 0 5px;\r\n            cursor: pointer;\r\n        }\r\n        table.table td:last-child {\r\n            width: 130px;\r\n        }\r\n        table.table td a {\r\n            display: inline-block;\r\n            margin: 0 5px;\r\n        }\r\n        table.table td a.view {\r\n            color: #03A9F4;\r\n        }\r\n        table.table td a.edit {\r\n            color: #FFC107;\r\n        }\r\n        table.table td a.delete {\r\n            color: #E34724;\r\n        }\r\n        table.table td i {\r\n            font-size: 19px;\r\n        }\r\n    </style>\r\n\r\n    <div class=\"card-header py-3\">\r\n        <h6 class=\"m-0 font-weight-bold text-primary\"> Foundation Members </h6>\r\n    </div>\r\n    \r\n    <div class=\'card-body\'>\r\n        <div class=\"row\">        \r\n            <div id=\'dropbox_block3\' style=\"display: inline; margin-left: 20px; margin-bottom: 15px\"> </div>\r\n            <div id=\'dropbox_block4\' style=\"display: inline; margin-left: 50px; margin-bottom: 15px\"> </div>\r\n        </div>\r\n\r\n        <script type=\"text/javascript\">\r\n            $(document).ready(function(){\r\n                $(\'[data-toggle=\"tooltip\"]\').tooltip();\r\n            });\r\n        </script>\r\n        \r\n        <div id=\'list_block\'></div>\r\n        <div id=\'update_block\'></div>\r\n\r\n    </div>\r\n\r\n    <script>\r\n\r\n        var parentID;\r\n        var choosen_usertype;\r\n        var usernum;\r\n        var users = new Array();\r\n\r\n        $.ajax({\r\n            url: \'../controller/user/list_usertypes.php\',\r\n            data: { parentID: 0 },\r\n            type: \'POST\',\r\n            dataType: \"JSON\",\r\n            success: function(data) {\r\n                console.log(data);\r\n\r\n                var dropdown = \"<div class=\'dropdown\'>\";\r\n                dropdown += \"<button style=\' display: inline-block;width: 120px;\' class=\'btn btn-primary dropdown-toggle\' type=\'button\' data-toggle=\'dropdown\'> Choose <span class=\'caret\'></span></button>\";\r\n                dropdown += \"<ul class=\'dropdown-menu\'>\";\r\n\r\n                for (var key in data) {\r\n                    dropdown += \'<li><a style=\"width: 100%;\" class=\"dropdown3\" id=\"link-\' + key + \'\">\' + data[key] + \'</a></li>\'\r\n                }\r\n\r\n                $(dropdown).appendTo(\"#dropbox_block3\");\r\n\r\n            },\r\n            error: function(data){\r\n                console.log(data);\r\n            }\r\n        });\r\n\r\n        $(document).on(\'click\',\'.dropdown3\',function(e){\r\n\r\n            e.preventDefault();\r\n            e.stopImmediatePropagation();\r\n\r\n            var id = $(this).attr(\'id\');\r\n            parentID = id.substr(id.indexOf(\'-\')+1, id.indexOf(\'-\'));\r\n\r\n            $.ajax({\r\n                url: \'../controller/user/list_usertypes.php\',\r\n                data: { parentID: parentID },\r\n                type: \'POST\',\r\n                dataType: \'JSON\',\r\n                success: function(data){\r\n\r\n                    if(data != null){\r\n\r\n                        $(\"#dropbox_block4\").hide();\r\n                        $(\"#dropbox_block4\").empty();\r\n\r\n                        $(\'#list_block\').hide();\r\n                        $(\'#update_block\').hide();\r\n\r\n                        var dropdown = \"<div class=\'dropdown\'>\";\r\n                        dropdown += \"<button style=\' display: inline-block;width: 120px;\' class=\'btn btn-primary dropdown-toggle\' type=\'button\' data-toggle=\'dropdown\'> Choose <span class=\'caret\'></span></button>\";\r\n                        dropdown += \"<ul class=\'dropdown-menu\'>\";\r\n\r\n                        for (var key in data) {\r\n                            dropdown += \'<li><a style=\"width: 100%;\" class=\"dropdown4\" id=\"link-\' + key + \'\">\' + data[key] + \'</a></li>\';\r\n                        }\r\n\r\n                        $(dropdown).appendTo(\"#dropbox_block4\");\r\n\r\n\r\n                        $(\'#dropbox_block4\').show();\r\n                    }\r\n                },\r\n                error: function(data){\r\n                    console.log(data);\r\n                }\r\n            });\r\n            return false;\r\n        });\r\n\r\n        $(document).on(\'click\',\'.dropdown4\',function(e){\r\n            \r\n            e.preventDefault();\r\n            e.stopImmediatePropagation();\r\n\r\n            var id = $(this).attr(\'id\');\r\n            choosen_usertype = id.substr(id.indexOf(\'-\')+1, id.indexOf(\'-\'));\r\n\r\n            $(\'#list_block\').hide();\r\n            $(\'#list_block\').empty();\r\n            \r\n            $(\'#update_block\').hide();\r\n            $(\"#update_block\").empty();\r\n            \r\n            var listdiv = document.getElementById(\"list_block\");\r\n\r\n            $.ajax({\r\n                url: \'classes/user_list_form.php\',\r\n                data: {parentID: parentID, usertypeID: choosen_usertype},\r\n                type: \'POST\',\r\n                dataType: \"JSON\",\r\n                success: function(data) {\r\n                    users = data[0];\r\n                    listdiv.innerHTML += data[1];\r\n                    $(\'#list_block\').show();\r\n                    $(\'table.table\').dataTable();\r\n                },\r\n                error: function(data){\r\n                    console.log(data.responseText);\r\n                }\r\n            });\r\n        });\r\n\r\n        $(document).on(\'click\',\'.deletebtn\',function(e){\r\n\r\n            e.preventDefault();\r\n            e.stopImmediatePropagation();\r\n\r\n            var id = $(this).attr(\'id\');\r\n            var user_obj_index = id.substr(id.indexOf(\'-\')+1, id.indexOf(\'-\'));\r\n            var usernum = users[user_obj_index].user_values[0];\r\n\r\n            $.ajax({\r\n                url: \'../controller/user/delete_user.php\',\r\n                data: {userID: usernum},\r\n                type: \'POST\',\r\n                success: function(data) {\r\n                    console.log(\'success\');\r\n                    $(\'#row-\'+user_obj_index).remove();\r\n                },\r\n                error: function(data){\r\n                    console.log(data);\r\n                }\r\n            });\r\n            return false;\r\n\r\n        });\r\n\r\n        $(document).on(\'click\',\'.updateFormbtn\',function(e){\r\n\r\n            e.preventDefault();\r\n            e.stopImmediatePropagation();\r\n\r\n            var id = $(this).attr(\'id\');\r\n            var user_obj_index = id.substr(id.indexOf(\'-\')+1, id.indexOf(\'-\'));\r\n            usernum = users[user_obj_index].user_values[0];\r\n\r\n            var updatediv = document.getElementById(\"update_block\");\r\n\r\n            $(\"#update_block\").empty();\r\n\r\n            $.ajax({\r\n                url: \'classes/user_update_form.php\',\r\n                data: {userID: usernum, parentID: parentID},\r\n                type: \'POST\',\r\n                dataType: \"HTML\",\r\n                success: function(data) {\r\n\r\n                    if(data != \'\'){\r\n\r\n                        updatediv.innerHTML+= data;\r\n                        $(\"#list_block\").hide();\r\n                        $(\'#update_block\').show(); \r\n                            \r\n                    }else{\r\n                        alert(\'Update Form is not valid\');\r\n                    }\r\n\r\n                },\r\n                error: function(data){\r\n                    console.log(data.responseText);\r\n                }\r\n            });\r\n            return false;\r\n\r\n        });\r\n\r\n        $(document).on(\'click\',\'#updateUser\',function(e){\r\n\r\n            e.preventDefault();\r\n            e.stopImmediatePropagation();\r\n\r\n            var data = new FormData(this);\r\n\r\n            var x = 1;\r\n            var z = 0;\r\n            while(z < len){\r\n                var id = \"up-\"+x;\r\n                var value = document.getElementById(id).value;\r\n                data.append(\'arr[]\', value);\r\n                z++;\r\n                x++;\r\n            }\r\n\r\n            data.append(\'arr[]\', document.getElementById(\"up-userEmail\").value);\r\n            data.append(\'arr[]\', document.getElementById(\"up-userPass\").value);\r\n            data.append(\'arr[]\', document.getElementById(\"up-newUserPass\").value);\r\n            data.append(\'arr[]\', document.getElementById(\"up-phoneNum\").value);\r\n\r\n\r\n            data.append(\'usertypeID\', choosen_usertype);\r\n            data.append(\'userID\', usernum);\r\n\r\n            $.ajax({\r\n                url: \"../controller/user/update_user.php\",\r\n                type: \"POST\",\r\n                data: data,\r\n                dataType: \'JSON\',\r\n                success: function(data) {\r\n\r\n                    if(data[\'error\']){\r\n                        Swal({type: \'error\', title: data[\'error\'],\r\n                            toast: true, position: \'top-right\',\r\n                            showConfirmButton: false, timer: 3000 });\r\n                    }else{\r\n                        Swal({type: \'success\', title: data[\'success\'],\r\n                            toast: true, position: \'top-right\',\r\n                            showConfirmButton: false, timer: 3000 });\r\n                    }\r\n                },\r\n                error: function(data){\r\n                    console.log(data);\r\n                }\r\n            });\r\n\r\n            return false;\r\n        });\r\n\r\n\r\n\r\n\r\n\r\n\r\n    </script>\r\n', 4, '2019-05-15 20:26:21', '2019-05-23 17:15:27', 0),
(3, '    <style type=\"text/css\">\r\n        body {\r\n            color: #566787;\r\n            background: #f5f5f5;\r\n            font-family: \'Roboto\', sans-serif;\r\n        }\r\n        .table-wrapper {\r\n            background: #fff;\r\n            padding: 20px;\r\n            margin: 30px 0;\r\n            box-shadow: 0 1px 1px rgba(0,0,0,.05);\r\n        }\r\n        .table-title {\r\n            padding-bottom: 10px;\r\n            margin: 0 0 10px;\r\n        }\r\n        .table-title h2 {\r\n            margin: 8px 0 0;\r\n            font-size: 22px;\r\n        }\r\n        table.table tr th, table.table tr td {\r\n            border-color: #e9e9e9;\r\n        }\r\n        table.table-striped tbody tr:nth-of-type(odd) {\r\n            background-color: #fcfcfc;\r\n        }\r\n        table.table-striped.table-hover tbody tr:hover {\r\n            background: #f5f5f5;\r\n        }\r\n        table.table th i {\r\n            font-size: 13px;\r\n            margin: 0 5px;\r\n            cursor: pointer;\r\n        }\r\n        table.table td:last-child {\r\n            width: 130px;\r\n        }\r\n        table.table td a {\r\n            display: inline-block;\r\n            margin: 0 5px;\r\n        }\r\n        table.table td a.view {\r\n            color: #03A9F4;\r\n        }\r\n        table.table td a.edit {\r\n            color: #FFC107;\r\n        }\r\n        table.table td a.delete {\r\n            color: #E34724;\r\n        }\r\n        table.table td i {\r\n            font-size: 19px;\r\n        }\r\n    </style>\r\n\r\n    <div class=\"card-header py-3\">\r\n        <h6 class=\"m-0 font-weight-bold text-primary\"> Manual Mailing </h6>\r\n    </div>\r\n\r\n    <div class=\'card-body\'>\r\n        <div class=\"row dropboxes\">        \r\n            <div id=\'dropbox_block5\' style=\"display: inline; margin-left: 20px; margin-bottom: 15px\"> </div>\r\n            <div id=\'dropbox_block6\' style=\"display: inline; margin-left: 50px; margin-bottom: 15px\"> </div>\r\n        </div>\r\n    </div>\r\n\r\n    <div id=\'email_list_block\'></div>\r\n    \r\n    <div id=\'email_send_block\'>\r\n        <a href=\"#\" style=\"margin-bottom: 10px;margin-left: 5px;\" class=\"btn btn-primary btn-icon-split\" id=\'back_to_email_list\'>\r\n            <span class=\"icon text-white-50\">\r\n                <i class=\"fas fa-arrow-left\"></i>\r\n            </span>\r\n            <span class=\"text\">Back</span>\r\n        </a>\r\n        <br>\r\n        <form method=\"post\" id=\"reused_form\">\r\n            <label for=\"subject\">Subject</label>\r\n            <input id=\"subject\" type=\"text\" name=\"subject\" maxlength=\"50\" required>\r\n            <br>\r\n            <label for=\"message\">Message:</label>\r\n            <textarea id=\"message\" name=\"Message\" rows=\"10\" maxlength=\"800\" style=\"width:100%\" required></textarea>\r\n            <br>\r\n            <br>\r\n            <a href=\"#\" class=\"btn btn-facebook btn-block\" id=\"SendEmailBtn\"> Send</a>\r\n        </form>\r\n    </div>\r\n\r\n    <script>\r\n\r\n        var parentID;\r\n        var choosen_usertype;\r\n        var emails = [];\r\n        var pnumbers = [];\r\n        var cboxArray = [];\r\n\r\n        $(\'#email_list_block\').hide();\r\n        $(\'#email_send_block\').hide();\r\n\r\n        $.ajax({\r\n            url: \'../controller/user/list_usertypes.php\',\r\n            data: { parentID: 0 },\r\n            type: \'POST\',\r\n            dataType: \"JSON\",\r\n            success: function(data) {\r\n                console.log(data);\r\n\r\n                var dropdown = \"<div class=\'dropdown\'>\";\r\n                dropdown += \"<button style=\' display: inline-block;width: 120px;\' class=\'btn btn-primary dropdown-toggle\' type=\'button\' data-toggle=\'dropdown\'> Choose <span class=\'caret\'></span></button>\";\r\n                dropdown += \"<ul class=\'dropdown-menu\'>\";\r\n\r\n                for (var key in data) {\r\n                    dropdown += \'<li><a style=\"width: 100%;\" class=\"dropdown5\" id=\"link-\' + key + \'\">\' + data[key] + \'</a></li>\';\r\n                }\r\n                $(dropdown).appendTo(\"#dropbox_block5\");\r\n\r\n\r\n            },\r\n            error: function(data){\r\n                console.log(data);\r\n            }\r\n        });\r\n\r\n        $(document).on(\'click\',\'.dropdown5\',function(e){\r\n\r\n            e.preventDefault();\r\n            e.stopImmediatePropagation();\r\n\r\n            var id = $(this).attr(\'id\');\r\n            parentID = id.substr(id.indexOf(\'-\')+1, id.indexOf(\'-\'));\r\n\r\n            $.ajax({\r\n                url: \'../controller/user/list_usertypes.php\',\r\n                data: { parentID: parentID },\r\n                type: \'POST\',\r\n                dataType: \'JSON\',\r\n                success: function(data){\r\n\r\n                    if(data != null){\r\n\r\n                        $(\"#dropbox_block6\").hide();\r\n                        $(\"#dropbox_block6\").empty();\r\n\r\n                        $(\'#email_list_block\').hide();\r\n\r\n\r\n                        var dropdown = \"<div class=\'dropdown\'>\";\r\n                        dropdown += \"<button style=\' display: inline-block;width: 120px;\' class=\'btn btn-primary dropdown-toggle\' type=\'button\' data-toggle=\'dropdown\'> Choose <span class=\'caret\'></span></button>\";\r\n                        dropdown += \"<ul class=\'dropdown-menu\'>\";\r\n\r\n                        for (var key in data) {\r\n                            dropdown += \'<li><a style=\"width: 100%;\" class=\"dropdown6\" id=\"link-\' + key + \'\">\' + data[key] + \'</a></li>\';\r\n                        }\r\n\r\n                        $(dropdown).appendTo(\"#dropbox_block6\");\r\n\r\n\r\n                        $(\'#dropbox_block6\').show();\r\n                    }\r\n                },\r\n                error: function(data){\r\n                    console.log(data);\r\n                }\r\n            });\r\n            return false;\r\n        });\r\n\r\n        $(document).on(\'click\',\'.dropdown6\',function(e){\r\n            \r\n            e.preventDefault();\r\n            e.stopImmediatePropagation();\r\n\r\n            var id = $(this).attr(\'id\');\r\n            choosen_usertype = id.substr(id.indexOf(\'-\')+1, id.indexOf(\'-\'));\r\n\r\n            $(\'#email_list_block\').hide();\r\n            $(\'#email_list_block\').empty();\r\n            \r\n            var email_list_div = document.getElementById(\"email_list_block\");\r\n\r\n            $.ajax({\r\n                url: \'classes/user_email_form.php\',\r\n                data: {parentID: parentID, usertypeID: choosen_usertype},\r\n                type: \'POST\',\r\n                dataType: \"JSON\",\r\n                success: function(data) {\r\n                        emails = data[0];\r\n                        pnumbers = data[1];\r\n                        email_list_div.innerHTML += data[2];\r\n                        email_list_div.innerHTML += \'<br>\'+\r\n                            \'<a href=\"#\" class=\"btn btn-primary btn-icon-split\" id=\"tosendform\" style=\"display: inline; float: right;margin-right: 20px;\">\'+\r\n                            \'<span class=\"icon text-white-50\">\'+\r\n                            \'<i class=\"fas fa-arrow-right\"></i>\'+\r\n                            \' </span>\'+\r\n                            \'<span class=\"text\">write email</span>\'+\r\n                            \'</a>\';\r\n\r\n                        $(\'#email_list_block\').show();\r\n                        $(\'table.table\').dataTable();\r\n\r\n                },\r\n                error: function(data){\r\n                    console.log(data.responseText);\r\n                }\r\n            });\r\n        });\r\n\r\n        $(document).on(\'click\',\'#tosendform\',function(e){ // SAVE THE SELECTED EMAILS IN AN ARRAY\r\n\r\n            e.preventDefault();\r\n            e.stopImmediatePropagation();\r\n\r\n            $(\".dropboxes\").hide();\r\n            $(\"#email_list_block\").hide();\r\n            $(\"#email_send_block\").show();\r\n\r\n                return false;      \r\n        });\r\n\r\n        $(document).on(\'click\',\'#back_to_email_list\',function(e){\r\n\r\n            e.preventDefault();\r\n            e.stopImmediatePropagation();\r\n\r\n            $(\".dropboxes\").show();\r\n            $(\"#email_list_block\").show();\r\n            $(\"#email_send_block\").hide();\r\n\r\n                return false;      \r\n        });\r\n\r\n        $(document).on(\'click\',\'#SendEmailBtn\',function(e){\r\n            \r\n            e.preventDefault();\r\n            e.stopImmediatePropagation();\r\n\r\n            var subject = $(\'#subject\').val();\r\n            var message = $(\'#message\').val();\r\n\r\n            var notify_emails = [];\r\n            var notify_numbers = [];\r\n\r\n            var index = 0;\r\n            for (var key in emails) {\r\n\r\n                if(index < cboxArray.length){\r\n\r\n                    notify_emails[index] = emails[cboxArray[index]];\r\n                    notify_numbers[index] = pnumbers[cboxArray[index]];\r\n                    index ++;\r\n                }\r\n            }\r\n\r\n            $.ajax({\r\n                url: \'../controller/notification/manual.php\',\r\n                data: {emails: notify_emails, numbers: notify_numbers, subject: subject, message: message},\r\n                type: \'POST\',\r\n                dataType: \"JSON\",\r\n                success: function(data) {\r\n                    if(data[\'error\']){\r\n                        Swal({type: \'error\', title: data[\'error\'],\r\n                            toast: true, position: \'top-right\',\r\n                            showConfirmButton: false, timer: 3000 });\r\n                    }else{\r\n                        Swal({type: \'success\', title: data[\'success\'],\r\n                            toast: true, position: \'top-right\',\r\n                            showConfirmButton: false, timer: 3000 });\r\n                    }\r\n                },\r\n                error: function(data){\r\n                    console.log(data);\r\n                }\r\n            });\r\n        });\r\n\r\n        $(document).on(\'click\',\'.checkboxClass\',function(e){\r\n\r\n            function itemExistsChecker(cboxValue) {\r\n                \r\n                var len = cboxArray.length;           \r\n                if (len > 0) {\r\n                    for (var i = 0; i < len; i++) {\r\n                        if (cboxArray[i] == cboxValue) {\r\n                            return true;\r\n                        }\r\n                    }\r\n                }\r\n                        \r\n                cboxArray.push(cboxValue);\r\n\r\n            }\r\n\r\n            $(\'input[type=\"checkbox\"]\').each(function() {\r\n\r\n                var cboxValue = $(this).val();\r\n                var cboxChecked = localStorage.getItem(cboxValue) == \'true\' ? true : false;\r\n\r\n                // On checkbox change add/remove the vehicle value from the array based on the choice\r\n                $(this).change(function() {\r\n                    \r\n                    localStorage.setItem(cboxValue, $(this).is(\':checked\'));\r\n                        \r\n                    if ($(this).is(\':checked\')) {\r\n\r\n                    itemExistsChecker(cboxValue);\r\n\r\n                    } else {\r\n\r\n                    // Delete the vehicle value from the array if its checkbox is unchecked\r\n                    var cboxValueIndex = cboxArray.indexOf(cboxValue);\r\n                    \r\n                    if (cboxValueIndex >= 0) {\r\n                        cboxArray.splice( cboxValueIndex, 1 );\r\n                    }\r\n                            \r\n                    }\r\n                        \r\n                    //console.log(cboxArray);\r\n                        \r\n                });\r\n            \r\n            });\r\n\r\n        });\r\n\r\n\r\n\r\n    </script>', 8, '2019-05-15 20:26:21', '2019-05-23 17:15:45', 0),
(4, '    <style type=\"text/css\">\r\n        body {\r\n            color: #566787;\r\n            background: #f5f5f5;\r\n            font-family: \'Roboto\', sans-serif;\r\n        }\r\n        .table-wrapper {\r\n            background: #fff;\r\n            padding: 20px;\r\n            margin: 30px 0;\r\n            box-shadow: 0 1px 1px rgba(0,0,0,.05);\r\n        }\r\n        .table-title {\r\n            padding-bottom: 10px;\r\n            margin: 0 0 10px;\r\n        }\r\n        .table-title h2 {\r\n            margin: 8px 0 0;\r\n            font-size: 22px;\r\n        }\r\n        .search-box {\r\n            position: relative;        \r\n            float: right;\r\n        }\r\n        .search-box input {\r\n            height: 34px;\r\n            border-radius: 20px;\r\n            padding-left: 35px;\r\n            border-color: #ddd;\r\n            box-shadow: none;\r\n        }\r\n        .search-box input:focus {\r\n            border-color: #3FBAE4;\r\n        }\r\n        .search-box i {\r\n            color: #a0a5b1;\r\n            position: absolute;\r\n            font-size: 19px;\r\n            top: 8px;\r\n            left: 10px;\r\n        }\r\n        table.table tr th, table.table tr td {\r\n            border-color: #e9e9e9;\r\n        }\r\n        table.table-striped tbody tr:nth-of-type(odd) {\r\n            background-color: #fcfcfc;\r\n        }\r\n        table.table-striped.table-hover tbody tr:hover {\r\n            background: #f5f5f5;\r\n        }\r\n        table.table th i {\r\n            font-size: 13px;\r\n            margin: 0 5px;\r\n            cursor: pointer;\r\n        }\r\n        table.table td:last-child {\r\n            width: 130px;\r\n        }\r\n        table.table td a {\r\n            display: inline-block;\r\n            margin: 0 5px;\r\n        }\r\n        table.table td a.view {\r\n            color: #03A9F4;\r\n        }\r\n        table.table td a.edit {\r\n            color: #FFC107;\r\n        }\r\n        table.table td a.delete {\r\n            color: #E34724;\r\n        }\r\n        table.table td i {\r\n            font-size: 19px;\r\n        }\r\n        .hint-text {\r\n            float: left;\r\n            margin-top: 6px;\r\n            font-size: 95%;\r\n        }    \r\n    </style>\r\n\r\n     <div class=\"card-header py-3\">\r\n        <h6 class=\"m-0 font-weight-bold text-primary\"> Insert Project </h6>\r\n    </div>\r\n          \r\n    <div class=\"card-body\">\r\n        <div id=\"pro-insert1\">\r\n            <label> Project Name </label>\r\n            <input type=\'text\' name=\'proj_name\' id=\'proj_name\' style=\"width: 50%;\">\r\n            <select id=\"select_categories\" style=\"block-size: 35px; width: 20%;\"></select>\r\n            <hr>\r\n            <label> Budget </label>\r\n            <input type=\'number\' name=\'budget\' id=\'budget\' style=\"width: 25%;\">\r\n            <label> Number of Phases </label>\r\n            <input type=\'number\' name=\'phases\' id=\'phases\' style=\"width: 15%;\">\r\n            <hr>\r\n            <textarea placeholder=\"notes on project ..\" id=\'project_notes\' style=\"width: 100%;height: 200px;\" ></textarea>\r\n            <hr>\r\n        </div>\r\n\r\n        <div id=\"pro-insert2\">\r\n            <label> Choose Team Leader: </label>\r\n            <hr>\r\n            <div id=\"leaders\"></div>\r\n            <hr>\r\n        </div>\r\n\r\n        <div id=\"pro-insert3\">\r\n            <label> Choose Team Member: </label>\r\n            <hr>\r\n            <div id=\"members\"></div>\r\n            <hr>\r\n        </div>\r\n\r\n		<div id=\"pro-insert4\">\r\n            <label>Do you have Organization Foundation .. to add in project information?</label>\r\n            <input type=\"radio\" value=\"yes\" style=\"width: 35px;\">Yes</input>\r\n            <input type=\"radio\" value=\"no\" style=\"width: 35px;\">No</input>\r\n            <hr>\r\n            <div id=\"org_chooseTable\"></div>\r\n            <hr>\r\n        </div>\r\n\r\n        <div id=\"pro-insert5\">\r\n            <label>Do you have any Current images for the project?</label>\r\n            <input type=\"radio\" name=\"yes_no_img\" value=\"yes\" style=\"width: 35px;\">Yes</input>\r\n            <input type=\"radio\" name=\"yes_no_img\" value=\"no\" style=\"width: 35px;\">No</input>\r\n            <hr>\r\n            <div id=\"chooseImg\">\r\n                <form action=\"\" method=\"post\" enctype=\"multipart/form-data\">\r\n                    <input type=\"file\" name=\"files[]\" multiple id=\"projectimgBtn\" style=\"margin-left: 35%;\">\r\n                </form>\r\n            </div>\r\n            <hr>\r\n        </div>\r\n            \r\n        <div style=\"margin-left: 37%;\">\r\n            <a href=\"#\" id=\"previousbtn\" class=\"previous aa\">&laquo; Previous</a>\r\n            <a href=\"#\" id=\"nextbtn\" class=\"next aa\">Next &raquo;</a>\r\n            <a href=\"#\" id=\"finishbtn\" class=\"next aa\"> Done &raquo;&raquo;</a>\r\n        </div>\r\n\r\n    </div>\r\n\r\n    <script>\r\n\r\n        var num = 1;\r\n        var checked_leaders = [];\r\n        var checked_members = [];\r\n\r\n        var div_leaders = document.getElementById(\"leaders\");\r\n        var div_members = document.getElementById(\"members\");\r\n\r\n        $( document ).ready(function() {\r\n\r\n            $(\"#pro-insert2\").hide();\r\n            $(\"#pro-insert3\").hide();\r\n            $(\"#pro-insert4\").hide();\r\n            $(\"#pro-insert5\").hide();\r\n            $(\"#finishbtn\").hide();\r\n\r\n\r\n            $.ajax({\r\n                url: \'../controller/project/get_project_categories.php\',\r\n                type: \'POST\',\r\n                dataType: \"JSON\",\r\n                success: function(data) {\r\n                    //console.log(data);\r\n\r\n                    for (var key in data) {\r\n                        $(\"<option value=\'\" + key + \"\'>\" + data[key] + \"</option>\").appendTo(\"#select_categories\");\r\n                    }\r\n                },\r\n                error: function(data){\r\n                    console.log(data);\r\n                }\r\n            });\r\n\r\n            $.ajax({\r\n                url: \'../controller/project/get_chooseTable.php\',\r\n                data: {state: \'insert\'},\r\n                type: \'POST\',\r\n                dataType: \"JSON\",\r\n                success: function(data) {\r\n\r\n                    console.log(data);\r\n\r\n                    div_leaders.innerHTML += data[0];\r\n                    div_members.innerHTML += data[1];\r\n\r\n                    $(\'table.table\').dataTable();\r\n\r\n                },\r\n                error: function(data){\r\n                    console.log(data.responseText);\r\n                }\r\n            });\r\n\r\n            $(document).on(\'click\',\'#nextbtn\',function(e){\r\n\r\n                e.preventDefault();\r\n                e.stopImmediatePropagation();\r\n\r\n                $(\"#pro-insert\"+num).hide();\r\n                num++;\r\n                $(\"#pro-insert\"+num).show();\r\n\r\n                if(num == 5-2){\r\n                    $(\"#finishbtn\").show();\r\n                    $(\"#up-finishbtn\").show();\r\n                    $(\"#nextbtn\").hide();\r\n                }\r\n\r\n                return false;\r\n\r\n            });\r\n\r\n            $(document).on(\'click\',\'#previousbtn\',function(e){\r\n\r\n                e.preventDefault();\r\n                e.stopImmediatePropagation();\r\n\r\n                if(num == 1 || num < 1){\r\n                    num = 1;\r\n                }\r\n                else{\r\n\r\n                    $(\"#pro-insert\"+num).hide();\r\n                    num--;\r\n                    $(\"#pro-insert\"+num).show();\r\n\r\n                    $(\"#finishbtn\").hide();\r\n                    $(\"#up-finishbtn\").hide();\r\n                    $(\"#nextbtn\").show();\r\n                    return false;\r\n\r\n                }\r\n\r\n            });\r\n\r\n            $(document).on(\'click\',\'.leaderCheck\',function(e){\r\n\r\n                function itemExistsCheckerL(lboxValue) {\r\n                    \r\n                    var len = checked_leaders.length;           \r\n                    if (len > 0) {\r\n                        for (var i = 0; i < len; i++) {\r\n                            if (checked_leaders[i] == lboxValue) {\r\n                                return true;\r\n                            }\r\n                        }\r\n                    }\r\n                            \r\n                    checked_leaders.push(lboxValue);\r\n\r\n                }\r\n\r\n                $(\'input[name=\"leader\"]\').each(function() {\r\n\r\n                    var lboxValue = $(this).val();\r\n                    var lboxChecked = localStorage.getItem(lboxValue) == \'true\' ? true : false;\r\n\r\n                    $(this).change(function() {\r\n                        \r\n                        localStorage.setItem(lboxValue, $(this).is(\':checked\'));\r\n                            \r\n                        if ($(this).is(\':checked\')) {\r\n                            itemExistsCheckerL(lboxValue);\r\n                        } else {\r\n                            var lboxValueIndex = checked_leaders.indexOf(lboxValue);                            \r\n                            if (lboxValueIndex >= 0) {\r\n                                checked_leaders.splice( lboxValueIndex, 1 );\r\n                            } \r\n                        }\r\n                                                        \r\n                    });\r\n                \r\n                });\r\n\r\n            });\r\n\r\n            $(document).on(\'click\',\'.memberCheck\',function(e){\r\n\r\n                function itemExistsCheckerL(mboxValue) {\r\n                    var len = checked_members.length;           \r\n                    if (len > 0) {\r\n                        for (var i = 0; i < len; i++) {\r\n                            if (checked_members[i] == mboxValue) {\r\n                                return true;\r\n                            }\r\n                        }\r\n                    }\r\n                    checked_members.push(mboxValue);\r\n                }\r\n\r\n                $(\'input[name=\"member\"]\').each(function() {\r\n\r\n                    var mboxValue = $(this).val();\r\n                    var mboxChecked = localStorage.getItem(mboxValue) == \'true\' ? true : false;\r\n\r\n                    $(this).change(function() {\r\n                        \r\n                        localStorage.setItem(mboxValue, $(this).is(\':checked\'));\r\n                            \r\n                        if ($(this).is(\':checked\')) {\r\n                            itemExistsCheckerL(mboxValue);\r\n                        } else {\r\n                            var mboxValueIndex = checked_members.indexOf(mboxValue);                            \r\n                            if (mboxValueIndex >= 0) {\r\n                                checked_members.splice( mboxValueIndex, 1 );\r\n                            } \r\n                        }\r\n                                                        \r\n                    });\r\n                \r\n                });\r\n\r\n            });\r\n            \r\n            $(document).on(\'click\',\'#finishbtn\',function(e){ //insert\r\n\r\n                e.preventDefault();\r\n                e.stopImmediatePropagation();\r\n\r\n                var project_name = $(\"#proj_name\").val();\r\n                var budget = $(\"#budget\").val();\r\n                var num_of_phases = $(\"#phases\").val();\r\n                var project_notes = $(\"#project_notes\").val();\r\n                var selectedCategory = $(\"#select_categories\").children(\"option:selected\").val();\r\n\r\n                if(project_name == \"\" || budget == \"\" || num_of_phases == \"\" || selectedCategory == \"\"){\r\n                    alert(\" You Must Enter All Informations\");\r\n                    return;\r\n                }\r\n                else{\r\n                    var arr = new Array();\r\n\r\n                    arr.push(project_name);\r\n                    arr.push(budget);\r\n                    arr.push(num_of_phases);\r\n                    arr.push(selectedCategory);\r\n                    if(project_notes == \"\"){\r\n                        arr.push(\"\");\r\n                    }else{\r\n                        arr.push(project_notes);\r\n                    }\r\n                }\r\n\r\n                $.ajax({\r\n                    url: \"../controller/project/insert_project.php\",\r\n                    data: {project_info: arr, checked_members: checked_members, checked_leaders: checked_leaders},\r\n                    type: \'POST\',\r\n                    dataType: \"JSON\",\r\n                    success: function(data) {\r\n                        if(data[\'error\']){\r\n                            Swal({type: \'error\', title: data[\'error\'],\r\n                                toast: true, position: \'top-right\',\r\n                                showConfirmButton: false, timer: 3000 });\r\n                        }else{\r\n                            Swal({type: \'success\', title: data[\'success\'],\r\n                                toast: true, position: \'top-right\',\r\n                                showConfirmButton: false, timer: 3000 });\r\n                        }\r\n                    },\r\n                    error: function(data){\r\n                        console.log(data);\r\n                    }\r\n                });\r\n\r\n                return false;\r\n            });\r\n\r\n        });\r\n\r\n    </script>\r\n', 15, '2019-05-15 20:26:21', '2019-05-25 02:42:45', 0);
INSERT INTO `tb_html` (`id`, `html`, `pageID`, `create_date`, `update_date`, `isdeleted`) VALUES
(5, '<style type=\"text/css\">\r\n    body {\r\n        color: #566787;\r\n        background: #f5f5f5;\r\n        font-family: \'Roboto\', sans-serif;\r\n    }\r\n    .table-title h2 {\r\n        margin: 8px 0 0;\r\n        font-size: 22px;\r\n    }\r\n\r\n    table.table tr th, table.table tr td {\r\n        border-color: #e9e9e9;\r\n    }\r\n    table.table-striped tbody tr:nth-of-type(odd) {\r\n        background-color: #fcfcfc;\r\n    }\r\n    table.table-striped.table-hover tbody tr:hover {\r\n        background: #f5f5f5;\r\n    }\r\n    table.table th i {\r\n        font-size: 13px;\r\n        margin: 0 5px;\r\n        cursor: pointer;\r\n    }\r\n    table.table td:last-child {\r\n        width: 130px;\r\n    }\r\n    table.table td a {\r\n        display: inline-block;\r\n        margin: 0 5px;\r\n    }\r\n    table.table td a.view {\r\n        color: #03A9F4;\r\n    }\r\n    table.table td a.edit {\r\n        color: #FFC107;\r\n    }\r\n    table.table td a.delete {\r\n        color: #E34724;\r\n    }\r\n    table.table td i {\r\n        font-size: 19px;\r\n    }\r\n</style>\r\n\r\n<div class=\"card-header py-3\">\r\n    <h6 class=\"m-0 font-weight-bold text-primary\"> Projects </h6>\r\n</div>\r\n<div class=\"card-body\">\r\n\r\n    <div class=\"dropdown\">\r\n        <button style=\" display: inline-block;width: 120px;\" class=\"btn btn-primary dropdown-toggle\" type=\"button\" data-toggle=\"dropdown\"> Choose <span class=\"caret\"></span></button>\r\n        <ul class=\"dropdown-menu\" id=\"dropdown-project-table\"></ul>\r\n        <br>\r\n        <br>\r\n    </div>\r\n\r\n    <div id=\"list_block\"></div>\r\n    <div id=\"update_block\">\r\n        <div id=\"pro-update1\">\r\n            <label> Project Name </label>\r\n            <input type=\'text\' name=\'proj_name\' id=\'up-proj_name\' style=\"width: 50%;\">\r\n            <select id=\"up_pro_dropdown\" style=\"block-size: 35px; width: 20%;\"></select>\r\n            <hr>\r\n            <label> Budget </label>\r\n            <input type=\'number\' name=\'budget\' id=\'up-budget\' style=\"width: 25%;\">\r\n            <label> Current Phase </label>\r\n            <input type=\'number\' name=\'cphases\' id=\'up-cphases\' style=\'width: 15%;\'>\r\n            <label> Number of Phases </label>\r\n            <input type=\'number\' name=\'phases\' id=\'up-phases\' style=\"width: 15%;\">\r\n            <hr>\r\n            <textarea placeholder=\"notes on project ..\" id=\'up-project_notes\' style=\"width: 100%;height: 200px;\" ></textarea>\r\n            <hr>\r\n        </div>\r\n\r\n        <div id=\"pro-update2\">\r\n            <label> Choose Team Leader: </label>\r\n            <div id=\"up-leaders\"></div>\r\n            <hr>\r\n        </div>\r\n\r\n        <div id=\"pro-update3\">\r\n            <label> Choose Team Member: </label>\r\n            <div id=\"up-members\"></div>\r\n            <hr>\r\n        </div>\r\n\r\n        <div style=\"margin-left: 37%;\">\r\n            <a href=\"#\" id=\"previousbtn\" class=\"previous aa\">&laquo; Previous</a>\r\n            <a href=\"#\" id=\"nextbtn\" class=\"next aa\">Next &raquo;</a>\r\n            <a href=\"#\" id=\"up-finishbtn\" class=\"next aa\"> Done &raquo;&raquo;</a>\r\n        </div>\r\n\r\n    </div>\r\n</div>\r\n\r\n<script>\r\n\r\n    var num = 1;\r\n    var pro_info = [];\r\n\r\n    var projectID;\r\n    var categoryID;\r\n    var list_div;\r\n    var pro_obj_index;\r\n\r\n    var upchecked_leaders = [];\r\n    var upchecked_members = [];\r\n\r\n    $( document ).ready(function() {\r\n\r\n        $(\"#update_block\").hide();\r\n\r\n        $.ajax({\r\n            url: \'../controller/project/get_project_categories.php\',\r\n            type: \'POST\',\r\n            dataType: \"JSON\",\r\n            success: function(data) {\r\n                console.log(data);\r\n                for (var key in data) {\r\n                    $(\'<li><a style=\"width: 100%;\" class=\"dropdown3\" id=\"proCat-\' + key + \'\">\' + data[key] + \'</a></li>\').appendTo(\"#dropdown-project-table\");\r\n                    $(\"<option value=\'\" + key + \"\'>\" + data[key] + \"</option>\").appendTo(\"#up_pro_dropdown\");\r\n                }\r\n            },\r\n            error: function(data){\r\n                console.log(data);\r\n            }\r\n        });\r\n\r\n        $(document).on(\'click\',\'.dropdown3\',function(e){\r\n\r\n            e.preventDefault();\r\n            e.stopImmediatePropagation();\r\n\r\n            $(\"#update_block\").hide();\r\n            $(\"#list_block\").show();\r\n\r\n            var id = $(this).attr(\'id\');\r\n            categoryID = id.substr(id.indexOf(\'-\')+1, id.indexOf(\'-\'));\r\n\r\n            $(\"#list_block\").empty();\r\n\r\n            list_div = document.getElementById(\"list_block\");\r\n\r\n            $.ajax({\r\n                url: \'../controller/project/list_projects.php\',\r\n                data: {categoryID: categoryID},\r\n                type: \'POST\',\r\n                dataType: \"JSON\",\r\n                success: function(data) {\r\n                    console.log(data);\r\n\r\n                    var table = \" <table id=\'pro_table\' class=\'table table-striped table-hover table-bordered\'><thead><tr>\";\r\n\r\n                    table += \"<th> Project Name </th>\";\r\n                    table += \"<th> Budget </th>\";\r\n                    table += \"<th> inTake </th>\";\r\n                    table += \"<th> Current Phase </th>\";\r\n                    table += \"<th> Control </th>\";\r\n\r\n                    table += \"</tr> </thead> <tbody>\";\r\n\r\n                    if(Array.isArray(data)){\r\n\r\n                        pro_info = data;\r\n\r\n                        var obj_size = data.length;\r\n                        var arr_size = data[0].length;\r\n\r\n                        var a =0;\r\n\r\n                        while(a < obj_size){\r\n                            table += \"<tr id=\'row-\" + a + \"\'>\";\r\n                            var b=1;\r\n                            while (b < arr_size-2){\r\n                                var arr = data[a];\r\n                                table += \"<td>\" + (arr[b]) + \"</td>\";\r\n                                b += 1;\r\n                            }\r\n\r\n                            table += \"<td> <a id=\'update-\" + a + \"\' href=\'#\' class=\'btn btn-primary btn-circle m-r-1em updateBtn\'><i class=\'fa fa-edit\'></i></a> \" +\r\n                                \"<a id=\'del-\" + a + \"\' href=\'#\' class=\'btn btn-danger btn-circle deleteBtn\'><i class=\'fas fa-trash\'></i></a> </td> </tr>\";\r\n\r\n                            a += 1;\r\n\r\n                        }\r\n\r\n                        table += \'</tbody></table>\';\r\n                        list_div.innerHTML += table;\r\n                        $(\'#list_block\').show();\r\n                        $(\'table.table\').dataTable();\r\n                    }\r\n                    else{\r\n                        table += \"<tr> <td colspan=\'5\'>\" + data + \"</tr> </td> </tbody></table>\";\r\n                    }\r\n\r\n\r\n\r\n                },\r\n                error: function(data){\r\n                    console.log(data);\r\n                }\r\n            });\r\n\r\n            return false;\r\n        });\r\n\r\n        $(document).on(\'click\',\'#nextbtn\',function(e){\r\n\r\n            e.preventDefault();\r\n            e.stopImmediatePropagation();\r\n\r\n            $(\"#pro-update\"+num).hide();\r\n            num++;\r\n            $(\"#pro-update\"+num).show();\r\n\r\n            if(num == 3){\r\n                $(\"#finishbtn\").show();\r\n                $(\"#up-finishbtn\").show();\r\n                $(\"#nextbtn\").hide();\r\n            }\r\n\r\n            return false;\r\n\r\n        });\r\n\r\n        $(document).on(\'click\',\'#previousbtn\',function(e){\r\n\r\n            e.preventDefault();\r\n            e.stopImmediatePropagation();\r\n\r\n            if(num == 1 || num < 1){\r\n                num = 1;\r\n            }\r\n            else{\r\n\r\n                $(\"#pro-update\"+num).hide();\r\n                num--;\r\n                $(\"#pro-update\"+num).show();\r\n\r\n                $(\"#finishbtn\").hide();\r\n                $(\"#up-finishbtn\").hide();\r\n                $(\"#nextbtn\").show();\r\n                return false;\r\n\r\n            }\r\n\r\n        });\r\n\r\n        $(document).on(\'click\',\'.deleteBtn\',function(e){\r\n\r\n            e.preventDefault();\r\n            e.stopImmediatePropagation();\r\n\r\n            var id = $(this).attr(\'id\');\r\n            var pro_obj_index = id.substr(id.indexOf(\'-\')+1, id.indexOf(\'-\'));\r\n            var xx = pro_info[pro_obj_index];\r\n            projectID = xx[0];\r\n\r\n            $.ajax({\r\n                url: \'../controller/project/delete_project.php\',\r\n                data: {projectID: projectID},\r\n                type: \'POST\',\r\n                success: function(data) {\r\n                    console.log(data);\r\n\r\n                    $(\'#row-\'+pro_obj_index).remove();\r\n\r\n                    var totalRowCount = document.getElementById(\'pro_table\').rows.length;\r\n\r\n                    if(totalRowCount == 1){\r\n                        var pro_table = document.getElementById(\"pro_table\");\r\n                        pro_table.innerHTML+= \'<tr> <td colspan=\"3\"> No Data Exist </td> </tr> \';\r\n                    }\r\n\r\n                },\r\n                error: function(data){\r\n                    console.log(data);\r\n                }\r\n            });\r\n            return false;\r\n\r\n        });\r\n\r\n        $(document).on(\'click\',\'.updateBtn\',function(e){\r\n\r\n            e.preventDefault();\r\n            e.stopImmediatePropagation();\r\n\r\n            var id = $(this).attr(\'id\');\r\n            pro_obj_index = id.substr(id.indexOf(\'-\')+1, id.indexOf(\'-\'));\r\n            var xx = pro_info[pro_obj_index];\r\n\r\n            $(\"#list_block\").hide();\r\n            $(\"#update_block\").show();\r\n            $(\"#pro-update2\").hide();\r\n            $(\"#pro-update3\").hide();\r\n            $(\"#up-finishbtn\").hide();\r\n\r\n            var leaderss = document.getElementById(\"up-leaders\");\r\n            var memberss = document.getElementById(\"up-members\");\r\n\r\n\r\n            $.ajax({\r\n                url: \'../controller/project/list_project_members.php\',\r\n                data: {projectID: xx[0]},\r\n                type: \'POST\',\r\n                dataType: \"JSON\",\r\n                success: function(data) {\r\n\r\n                    console.log(data)\r\n\r\n                    checked_leaders = data[0];\r\n                    checked_members = data[1];\r\n                },\r\n                error: function(data){\r\n                    console.log(data.responseText);\r\n                }\r\n            });\r\n\r\n            $.ajax({\r\n                url: \'../controller/project/get_chooseTable.php\',\r\n                data: {state: \'update\'},\r\n                type: \'POST\',\r\n                dataType: \"JSON\",\r\n                success: function(data) {\r\n\r\n                    console.log(data);\r\n\r\n                    //email_list_div.innerHTML += upper_table_content;\r\n                    leaderss.innerHTML += data[0];\r\n                    memberss.innerHTML += data[1];\r\n\r\n                    $(\'.leaderCheckup\').each(function(){\r\n                        var val = $(this).val();\r\n                        if($.inArray(val, checked_leaders) !== -1){\r\n                            $(this).prop(\'checked\', true);\r\n                        }\r\n                    });\r\n\r\n                    $(\'.memberCheckup\').each(function(){\r\n                        var val = $(this).val();\r\n                        if($.inArray(val, checked_members) !== -1){\r\n                            $(this).prop(\'checked\', true);\r\n                        }\r\n                    });\r\n\r\n                },\r\n                error: function(data){\r\n                    console.log(data.responseText);\r\n                }\r\n            });\r\n\r\n            $(\"#up-proj_name\").val(xx[1]);\r\n            $(\"#up-budget\").val(xx[2]);\r\n            $(\"#up-cphases\").val(xx[4]);\r\n            $(\"#up-phases\").val(xx[5]);\r\n            $(\"#up-project_notes\").val(xx[6]);\r\n\r\n            $(\"#update_block\").show();\r\n            $(\"#list_block\").hide();\r\n\r\n            return false;\r\n        });\r\n\r\n        $(document).on(\'click\',\'#up-finishbtn\',function(e){\r\n\r\n            e.preventDefault();\r\n            e.stopImmediatePropagation();\r\n\r\n            var arr = new Array();\r\n            var project = pro_info[pro_obj_index];\r\n\r\n            arr.push($(\"#up-proj_name\").val());\r\n            arr.push($(\"#up-budget\").val());\r\n            arr.push($(\"#up-phases\").val());\r\n            arr.push($(\"#up-cphases\").val());\r\n            arr.push($(\"#up-project_notes\").val());\r\n\r\n\r\n                $.ajax({\r\n                    url: \'../controller/project/update_project.php\',\r\n                    data: {pro_info: arr, projectID: project[0], checked_leaders: upchecked_leaders, checked_members: upchecked_members},\r\n                    type: \'POST\',\r\n                    dataType: \"JSON\",\r\n                    success: function(data) {\r\n                        if(data[\'error\']){\r\n                            Swal({type: \'error\', title: data[\'error\'],\r\n                                toast: true, position: \'top-right\',\r\n                                showConfirmButton: false, timer: 3000 });\r\n                        }else{\r\n                            Swal({type: \'success\', title: data[\'success\'],\r\n                                toast: true, position: \'top-right\',\r\n                                showConfirmButton: false, timer: 3000 });\r\n                        }\r\n                    },\r\n                    error: function(data){\r\n                        console.log(data);\r\n                    }\r\n                });\r\n\r\n            return false;\r\n        });\r\n\r\n        $(document).on(\'click\',\'.leaderCheckup\',function(e){\r\n\r\n            function itemExistsCheckerL(lboxValue) {\r\n\r\n                var len = upchecked_leaders.length;\r\n                if (len > 0) {\r\n                    for (var i = 0; i < len; i++) {\r\n                        if (upchecked_leaders[i] == lboxValue) {\r\n                            return true;\r\n                        }\r\n                    }\r\n                }\r\n\r\n                upchecked_leaders.push(lboxValue);\r\n\r\n            }\r\n\r\n            $(\'input[name=\"leader\"]\').each(function() {\r\n\r\n                var lboxValue = $(this).val();\r\n                var lboxChecked = localStorage.getItem(lboxValue) == \'true\' ? true : false;\r\n\r\n                $(this).change(function() {\r\n\r\n                    localStorage.setItem(lboxValue, $(this).is(\':checked\'));\r\n\r\n                    if ($(this).is(\':checked\')) {\r\n                        itemExistsCheckerL(lboxValue);\r\n                    } else {\r\n                        var lboxValueIndex = upchecked_leaders.indexOf(lboxValue);\r\n                        if (lboxValueIndex >= 0) {\r\n                            upchecked_leaders.splice( lboxValueIndex, 1 );\r\n                        }\r\n                    }\r\n\r\n                });\r\n\r\n            });\r\n\r\n        });\r\n\r\n        $(document).on(\'click\',\'.memberCheckup\',function(e){\r\n\r\n            function itemExistsCheckerL(mboxValue) {\r\n                var len = upchecked_members.length;\r\n                if (len > 0) {\r\n                    for (var i = 0; i < len; i++) {\r\n                        if (upchecked_members[i] == mboxValue) {\r\n                            return true;\r\n                        }\r\n                    }\r\n                }\r\n                upchecked_members.push(mboxValue);\r\n            }\r\n\r\n            $(\'input[name=\"member\"]\').each(function() {\r\n\r\n                var mboxValue = $(this).val();\r\n                var mboxChecked = localStorage.getItem(mboxValue) == \'true\' ? true : false;\r\n\r\n                $(this).change(function() {\r\n\r\n                    localStorage.setItem(mboxValue, $(this).is(\':checked\'));\r\n\r\n                    if ($(this).is(\':checked\')) {\r\n                        itemExistsCheckerL(mboxValue);\r\n                    } else {\r\n                        var mboxValueIndex = upchecked_members.indexOf(mboxValue);\r\n                        if (mboxValueIndex >= 0) {\r\n                            upchecked_members.splice( mboxValueIndex, 1 );\r\n                        }\r\n                    }\r\n\r\n                });\r\n\r\n            });\r\n\r\n        });\r\n\r\n    });\r\n\r\n</script>\r\n', 16, '2019-05-15 20:26:21', '2019-05-24 00:14:57', 0),
(6, '<div class=\"card-header py-3\">\r\n    <h6 class=\"m-0 font-weight-bold text-primary\"> Paid Donations </h6>\r\n</div>\r\n\r\n<div class=\'card-body\'>\r\n\r\n    <div class=\"dropdown\">\r\n        <button style=\" display: inline-block;width: 120px;\" class=\"btn btn-primary dropdown-toggle\" type=\"button\" data-toggle=\"dropdown\"> Choose <span class=\"caret\"></span></button>\r\n        <ul class=\"dropdown-menu\" id=\"dropdown-project-categories\"></ul>\r\n    </div>\r\n\r\n    <div style=\"float:right;\" id=\"got_select\">\r\n\r\n        <select id=\"dropdown-projects\" style=\"block-size: 35px; width: 200px;\"></select>\r\n        <input type=\"text\" id=\"project_budget\" name=\"project_budget\" style=\"width: 100px\" disabled>\r\n\r\n    </div>\r\n    <br>\r\n    <br>\r\n\r\n    <div id=\"error_div\" class=\'alert alert-danger\' style=\"display: none\">  </div>\r\n\r\n    <br>\r\n    <a href=\"#\" id=\"finishProcess\" class=\"btn btn-primary btn-icon-split\">Finish Process</a>\r\n    <br>\r\n    <br>\r\n\r\n\r\n    <div id=\'table_donation_paid_block\'><br></div>\r\n</div>\r\n\r\n<script>\r\n\r\n    var categoryID;\r\n    var choosen_project;\r\n    var choosen_project_budget;\r\n    var project_taken_money = 0;\r\n    var last_req = 0;\r\n    var taken_from_req = 0;\r\n    var cboxArray = [];\r\n    var each_req_m = [];\r\n    var table_donation_paid_div = document.getElementById(\"table_donation_paid_block\");\r\n\r\n    $(\'#got_select\').hide();\r\n    $(\'#finishProcess\').hide();\r\n\r\n\r\n    $.ajax({\r\n        url: \'../controller/project/get_project_categories.php\',\r\n        type: \'POST\',\r\n        dataType: \"JSON\",\r\n        success: function(data) {\r\n            console.log(data);\r\n            for (var key in data) {\r\n                $(\'<li><a style=\"width: 100%;\" class=\"dropdown8\" id=\"proCat-\' + key + \'\">\' + data[key] + \'</a></li>\').appendTo(\"#dropdown-project-categories\");\r\n            }\r\n        },\r\n        error: function(data){\r\n            console.log(data);\r\n        }\r\n    });\r\n\r\n    $(document).on(\'click\',\'.dropdown8\',function(e){\r\n\r\n        e.preventDefault();\r\n        e.stopImmediatePropagation();\r\n\r\n        $(\'#dropdown-projects\').empty();\r\n        $(\'#error_div\').empty();\r\n        $(\'#table_donation_paid_block\').empty();\r\n        $(\'#got_select\').hide();\r\n\r\n        var id = $(this).attr(\'id\');\r\n        categoryID = id.substr(id.indexOf(\'-\')+1, id.indexOf(\'-\'));\r\n\r\n        $.ajax({\r\n            url: \'../controller/donation/select_projects.php\',\r\n            data: { categoryID: categoryID},\r\n            type: \'POST\',\r\n            dataType: \'JSON\',\r\n            success: function(data){\r\n\r\n                console.log(data);\r\n\r\n                if(typeof data !== \'string\'){\r\n\r\n                    var i = 0;\r\n\r\n                    for (var key in data) {\r\n                         $(\'<option style=\"width: 100%;\" class=\"dropdown9\" id=\"pro-\'+ key + \'\">\' + data[key] + \'</option>\').appendTo(\"#dropdown-projects\");\r\n                    }\r\n\r\n                    $(\'#got_select\').show();\r\n                    $(\'#finishProcess\').show();\r\n                    $(\'#error_div\').hide();\r\n\r\n                }\r\n                else{\r\n\r\n                    document.getElementById(\'error_div\').innerHTML += data;\r\n                    $(\'#error_div\').show();\r\n\r\n                }\r\n            },\r\n            error: function(data){\r\n                console.log(data);\r\n            }\r\n        });\r\n\r\n        $.ajax({\r\n            url: \'../controller/donation/get_paid_donation_table.php\',\r\n            data: { categoryID: categoryID},\r\n            type: \'POST\',\r\n            dataType: \'JSON\',\r\n            success: function(data){\r\n\r\n                console.log(data);\r\n\r\n                var table = \" <table id=\'paid_table\' class=\'table table-striped table-hover table-bordered\'> <thead> <tr> \";\r\n                table += \"<th> checked </th>\";\r\n                table += \"<th> donation reason </th>\";\r\n                table += \"<th> payment method </th>\";\r\n                table += \"<th> Moneybox </th>\";\r\n                table += \"</tr> </thead> <tbody>\";\r\n\r\n                if(typeof data !== \'string\'){\r\n\r\n                    var i = 0;\r\n                    while(i < data.length){\r\n\r\n                        var row = data[i];\r\n                        table += \"<tr id=\'row-\" + row[0] + \"\'><td><input class=\'donorCheck\' name=\'donor\' type=\'checkbox\' value=\'\" + (row[0] + \',\' + row[3]) + \"\'/></td>\";\r\n\r\n                        var j = 1;\r\n                        while(j < row.length){\r\n\r\n                            if(j == (row.length -1)){\r\n\r\n                                table += (\"<td id=\'mb-\" + row[0] + \"\'>\" + row[j] + \"</td>\");\r\n                            }else{\r\n                                table += (\"<td>\" + row[j] + \"</td>\");\r\n                            }\r\n\r\n                            j++;\r\n                        }\r\n                        table += \"</tr>\";\r\n                        i++;\r\n                    }\r\n\r\n                    table_donation_paid_div.innerHTML += table;\r\n                    $(\'#table_donation_paid_block\').show();\r\n                    $(\'table.table\').dataTable();\r\n                }else{\r\n\r\n                    //table += \'<tr > <td colspan=\"5\"> no data exist </td> <tr>\';\r\n                    //table_donation_paid_div.innerHTML += table;\r\n\r\n                    $(\'#table_donation_paid_block\').hide();\r\n                    $(\'#finishProcess\').hide();\r\n                    document.getElementById(\'error_div\').innerHTML += data;\r\n                    $(\'#error_div\').show();\r\n\r\n\r\n                }\r\n            },\r\n            error: function(data){\r\n                console.log(data);\r\n            }\r\n        });\r\n\r\n        return false;\r\n\r\n    });\r\n\r\n    $(document).on(\'click\',\'.dropdown9\',function(e){\r\n\r\n        e.preventDefault();\r\n        e.stopImmediatePropagation();\r\n\r\n        $(\'#project_budget\').empty();\r\n\r\n        var id = $(this).attr(\'id\');\r\n        choosen_project = id.substr(id.indexOf(\'-\')+1, id.indexOf(\'-\'));\r\n\r\n        $.ajax({\r\n            url: \'../controller/donation/get_project_budget.php\',\r\n            data: { projectID: choosen_project},\r\n            type: \'POST\',\r\n            dataType: \'JSON\',\r\n            success: function(data){\r\n\r\n                console.log(data);\r\n\r\n                if(data != null){\r\n                    document.getElementById(\'project_budget\').value = data;\r\n                    choosen_project_budget = parseInt(data, 10);\r\n                }\r\n            },\r\n            error: function(data){\r\n                console.log(data);\r\n            }\r\n        });\r\n\r\n        return false;\r\n\r\n    });\r\n\r\n    $(document).on(\'click\',\'.donorCheck\',function(e){\r\n\r\n        function itemExistsChecker(cboxValue) {\r\n\r\n            var array = cboxValue.split(\',\');\r\n\r\n            var len = cboxArray.length;\r\n            if (len > 0) {\r\n                for (var i = 0; i < len; i++) {\r\n                    if (cboxArray[i] == array[0]) {\r\n                        return true;\r\n                    }\r\n                }\r\n            }\r\n\r\n            cboxArray.push(array[0]);\r\n\r\n            var donation_val = parseInt(array[1], 10);\r\n\r\n\r\n            if(choosen_project_budget >= donation_val){\r\n\r\n                choosen_project_budget -= donation_val;\r\n                project_taken_money += donation_val;\r\n\r\n                each_req_m.push(donation_val);\r\n\r\n                $(\'#project_budget\').val(choosen_project_budget);\r\n            }else{\r\n\r\n                taken_from_req = choosen_project_budget;\r\n                project_taken_money += choosen_project_budget;\r\n                choosen_project_budget = 0;\r\n\r\n                last_req = array[0];\r\n\r\n                each_req_m.push(taken_from_req);\r\n\r\n\r\n                $(\'#project_budget\').val(choosen_project_budget);\r\n\r\n            }\r\n\r\n\r\n        }\r\n\r\n        $(\'input[type=\"checkbox\"]\').each(function() {\r\n\r\n            var pv = $(\'#project_budget\').val();\r\n\r\n            if(pv == \"\"){\r\n\r\n                alert(\"you need to choose a project first\");\r\n                $(this).prop(\"checked\", false);\r\n                return;\r\n            }\r\n\r\n            var cboxValue = $(this).val();\r\n            var cboxChecked = localStorage.getItem(cboxValue) == \'true\' ? true : false;\r\n\r\n            $(this).change(function() {\r\n\r\n                localStorage.setItem(cboxValue, $(this).is(\':checked\'));\r\n\r\n                if ($(this).is(\':checked\')) {\r\n\r\n                    if(choosen_project_budget != 0){\r\n                        itemExistsChecker(cboxValue);\r\n                    }\r\n                    else{\r\n                        alert(\'you cant add more money budget is full\');\r\n                        return;\r\n                    }\r\n\r\n                } else {\r\n\r\n                    var array = cboxValue.split(\',\');\r\n                    var cboxValueIndex = cboxArray.indexOf(array[0]);\r\n\r\n                    if (cboxValueIndex >= 0) {\r\n\r\n                        cboxArray.splice( cboxValueIndex, 1 );\r\n\r\n\r\n                        if(choosen_project_budget != 0){\r\n\r\n\r\n                            var donation_val = parseInt(array[1], 10);\r\n\r\n                            choosen_project_budget += donation_val;\r\n                            each_req_m.splice(cboxValueIndex, 1);\r\n                            $(\'#project_budget\').val(choosen_project_budget);\r\n\r\n                        }\r\n                        else{\r\n\r\n                            choosen_project_budget += taken_from_req;\r\n                            $(\'#project_budget\').val(choosen_project_budget);\r\n                            each_req_m.splice(cboxValueIndex, 1);\r\n\r\n                        }\r\n\r\n                    }\r\n\r\n                }\r\n\r\n            });\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n        });\r\n\r\n    });\r\n\r\n    $(document).on(\'click\',\'#finishProcess\',function(e){\r\n\r\n        e.preventDefault();\r\n        e.stopImmediatePropagation();\r\n\r\n        console.log(cboxArray);\r\n        console.log(last_req);\r\n        console.log(taken_from_req);\r\n        console.log(project_taken_money);\r\n        console.log(choosen_project);\r\n        console.log(each_req_m);\r\n\r\n        $.ajax({\r\n            url: \'../controller/donation/insert_data_paid.php\',\r\n            data: { selectedIDs: cboxArray, last_req: last_req, taken_from_req: taken_from_req,\r\n                project_taken_money: project_taken_money, project_id: choosen_project, each_req_m: each_req_m},\r\n            type: \'POST\',\r\n            dataType: \'JSON\',\r\n            success: function(data){\r\n\r\n                console.log(data);\r\n\r\n                if(data[\'error\']){\r\n                    Swal({type: \'error\', title: data[\'error\'],\r\n                        toast: true, position: \'top-right\',\r\n                        showConfirmButton: false, timer: 3000 });\r\n                }else{\r\n                    Swal({type: \'success\', title: data[\'success\'],\r\n                        toast: true, position: \'top-right\',\r\n                        showConfirmButton: false, timer: 3000 });\r\n\r\n                    var i=0;\r\n                    while(i < cboxArray.length){\r\n                        $(\'#row-\'+cboxArray[i]).remove();\r\n                        i++;\r\n                    }\r\n\r\n                    var rowCount = document.getElementById(\'paid_table\').rows.length;\r\n\r\n                    if(rowCount == 1){\r\n\r\n                        $(\'#table_donation_paid_block\').hide();\r\n                        $(\'#table_donation_paid_block\').empty();\r\n                        $(\'#finishProcess\').hide();\r\n\r\n                        table = \" <table id=\'paid_table\'class=\'table table-striped table-hover table-bordered\'> <thead> <tr> \";\r\n                        table += \"<th> checked </th>\";\r\n                        table += \"<th> donation reason </th>\";\r\n                        table += \"<th> payment method </th>\";\r\n                        table += \"<th> Moneybox </th>\";\r\n                        table += \"</tr> </thead> <tbody>\";\r\n                        table += \'<tr > <td colspan=\"5\"> no data exist </td> <tr>\';\r\n\r\n                        table_donation_paid_div.innerHTML = table;\r\n                        $(\'#table_donation_paid_block\').show();\r\n\r\n                    }\r\n                }\r\n\r\n            },\r\n            error: function(data){\r\n                console.log(data);\r\n            }\r\n        });\r\n\r\n\r\n        return false;\r\n\r\n    });\r\n\r\n\r\n</script>\r\n', 12, '2019-05-17 18:37:54', '2019-05-24 00:11:26', 0),
(7, '<div class=\"card-header py-3\">\r\n    <h6 class=\"m-0 font-weight-bold text-primary\"> Paid Donations </h6>\r\n</div>\r\n\r\n<div class=\'card-body\'>\r\n\r\n    <div class=\"dropdown\">\r\n        <button style=\" display: inline-block;width: 120px;\" class=\"btn btn-primary dropdown-toggle\" type=\"button\" data-toggle=\"dropdown\"> Choose <span class=\"caret\"></span></button>\r\n        <ul class=\"dropdown-menu\" id=\"dropdown-project-categories\"></ul>\r\n    </div>\r\n\r\n    <div style=\"float:right;\" id=\"got_select\">\r\n        <input type=\"text\" id=\"donated_taken\" name=\"donated_taken\" style=\"width: 120px\" disabled>\r\n    </div>\r\n    <br>\r\n    <hr>\r\n\r\n\r\n    <div id=\'table_block\'></div>\r\n</div>\r\n\r\n\r\n<script>\r\n\r\n    var categoryID;\r\n    var today_value;\r\n    var value_id;\r\n    var table;\r\n    var table_block_div = document.getElementById(\"table_block\");\r\n\r\n\r\n    $.ajax({\r\n        url: \'../controller/project/get_project_categories.php\',\r\n        type: \'POST\',\r\n        dataType: \"JSON\",\r\n        success: function(data) {\r\n            console.log(data);\r\n            for (var key in data) {\r\n                $(\'<li><a style=\"width: 100%;\" class=\"dropdown7\" id=\"proCat-\' + key + \'\">\' + data[key] + \'</a></li>\').appendTo(\"#dropdown-project-categories\");\r\n            }\r\n        },\r\n        error: function(data){\r\n            console.log(data);\r\n        }\r\n    });\r\n\r\n    $(document).on(\'click\',\'.dropdown7\',function(e){\r\n\r\n        e.preventDefault();\r\n        e.stopImmediatePropagation();\r\n\r\n        $(\'#table_block\').empty();\r\n\r\n        var id = $(this).attr(\'id\');\r\n        categoryID = id.substr(id.indexOf(\'-\')+1, id.indexOf(\'-\'));\r\n\r\n        $.ajax({\r\n            url: \'../controller/donation/day_donation.php\',\r\n            data: { categoryID: categoryID},\r\n            type: \'POST\',\r\n            dataType: \'JSON\',\r\n            success: function(data){\r\n\r\n                value_id = data[0];\r\n                today_value = data[1];\r\n\r\n                $(\'#donated_taken\').val(today_value);\r\n\r\n                console.log(\">>\" + data);\r\n\r\n            },\r\n            error: function(data){\r\n                console.log(data);\r\n            }\r\n        });\r\n\r\n        $.ajax({\r\n            url: \'../controller/donation/get_donation_table_data.php\',\r\n            data: { categoryID: categoryID},\r\n            type: \'POST\',\r\n            dataType: \'JSON\',\r\n            success: function(data){\r\n\r\n                table = \" <table id=\'req_Table\'class=\'table table-striped table-hover table-bordered\'> <thead> <tr> \";\r\n                table += \"<th> donation reason </th>\";\r\n                table += \"<th> payment method </th>\";\r\n                table += \"<th> donation value </th>\";\r\n                table += \"<th> received ? </th>\";\r\n                table += \"</tr> </thead> <tbody>\";\r\n\r\n                console.log(data);\r\n\r\n                if(data.length != 0){\r\n\r\n                    var i = 0;\r\n                    while(i < data.length){\r\n\r\n                        var row = data[i];\r\n                        var j = 1;\r\n\r\n                        table += \"<tr id=\'row-\"+ row[0] + \"\'>\";\r\n                        while(j < row.length){\r\n                            table += (\"<td>\" + row[j] + \"</td>\");\r\n                            j++;\r\n                        }\r\n\r\n                        table += \"<td><button class=\'revBtn btn btn-primary\'  id=\'rec-\"+ row[0] + \"\' value=\'\" + row[3] + \"\'  >Recieved</button></td></tr>\";\r\n                        i++;\r\n                    }\r\n\r\n                    table += \'</body></table>\';\r\n\r\n\r\n                    table_block_div.innerHTML += table;\r\n                    $(\'#table_block\').show();\r\n                    $(\'table.table\').dataTable();\r\n                }\r\n                else{\r\n                    table += \'<tr > <td colspan=\"5\"> no data exist </td> <tr>\';\r\n                    table_block_div.innerHTML += table;\r\n                    $(\'#table_block\').show();\r\n                }\r\n            },\r\n            error: function(data){\r\n                console.log(data);\r\n            }\r\n        });\r\n\r\n        return false;\r\n\r\n    });\r\n\r\n    $(document).on(\'click\',\'.revBtn\',function(e){\r\n\r\n        e.preventDefault();\r\n        e.stopImmediatePropagation();\r\n\r\n        var id = $(this).attr(\'id\');\r\n        var btnID = id.substr(id.indexOf(\'-\')+1, id.indexOf(\'-\'));\r\n\r\n        var value = $(this).val();\r\n\r\n        var donated_taken_value = $(\'#donated_taken\').val();\r\n\r\n\r\n        var calc = parseInt(donated_taken_value, 10) + parseInt(value, 10);\r\n\r\n\r\n        document.getElementById(\'donated_taken\').value = calc;\r\n\r\n\r\n        $.ajax({\r\n            url: \'../controller/donation/remove_request.php\',\r\n            data: { requestID: btnID, value: calc, categoryID: categoryID},\r\n            type: \'POST\',\r\n            success: function(data){\r\n\r\n                if(data[\'error\']){\r\n                    Swal({type: \'error\', title: data[\'error\'],\r\n                        toast: true, position: \'top-right\',\r\n                        showConfirmButton: false, timer: 3000 });\r\n                }else{\r\n                    Swal({type: \'success\', title: data[\'success\'],\r\n                        toast: true, position: \'top-right\',\r\n                        showConfirmButton: false, timer: 3000 });\r\n                }\r\n\r\n                $(\'#row-\'+btnID).remove();\r\n\r\n                var rowCount = document.getElementById(\'req_Table\').rows.length;\r\n\r\n                if(rowCount == 1){\r\n\r\n                    $(\'#table_block\').hide();\r\n                    $(\'#table_block\').empty();\r\n\r\n                    table = \" <table id=\'req_Table\'class=\'table table-striped table-hover table-bordered\'> <thead> <tr> \";\r\n                    table += \"<th> donation reason </th>\";\r\n                    table += \"<th> payment method </th>\";\r\n                    table += \"<th> donation value </th>\";\r\n                    table += \"<th> received ? </th>\";\r\n                    table += \"</tr> </thead> <tbody>\";\r\n                    table += \'<tr > <td colspan=\"5\"> no data exist </td> <tr>\';\r\n\r\n                    table_block_div.innerHTML = table;\r\n                    $(\'#table_block\').show();\r\n\r\n                }\r\n\r\n            },\r\n            error: function(data){\r\n                console.log(data);\r\n            }\r\n        });\r\n\r\n\r\n\r\n\r\n        return false;\r\n\r\n    });\r\n\r\n\r\n\r\n</script>\r\n', 11, '2019-05-17 22:43:31', '2019-05-23 17:16:03', 0),
(8, '<div class=\"card-header py-3\">\r\n  <h6 class=\"m-0 font-weight-bold text-primary\"> Dashboard ~ Statistics </h6>\r\n</div>\r\n\r\n    <div class=\"card-body\">\r\n\r\n      <div class=\"container-fluid\">\r\n\r\n        <div id=\"StatCards\"></div>\r\n\r\n        <div class=\"row\">\r\n\r\n          <div class=\"col-xl-12\">\r\n            <div class=\"card shadow mb-4\">\r\n\r\n              <div class=\"card-header py-3 d-flex flex-row align-items-center justify-content-between\">\r\n                <div class=\"dropdown no-arrow\">\r\n                  <a class=\"dropdown-toggle\" href=\"#\" role=\"button\" id=\"dropdownMenuLink\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n                    <i class=\"fas fa-ellipsis-v fa-sm fa-fw text-gray-400\"></i>\r\n                  </a>\r\n                  <div class=\"dropdown-menu dropdown-menu-right shadow animated--fade-in\" aria-labelledby=\"dropdownMenuLink\">\r\n                    <div class=\"dropdown-header\">Graphs:</div>\r\n                    <a id=\"PaymentMethodDonationsStat\" class=\"dropdown-item\" href=\"#\">Donations per payment method</a>\r\n                    <a id=\"ProjectCategoryStat\" class=\"dropdown-item\" href=\"#\">Donations for each project category</a>\r\n                  </div>\r\n                </div>\r\n              </div>\r\n\r\n              <div id=\"StatsDiv\" class=\"card-body\">\r\n\r\n              </div>\r\n            </div>\r\n          </div>\r\n\r\n        </div>\r\n      </div>\r\n    </div>\r\n\r\n<script>\r\n\r\n  $.ajax({\r\n  url: \'../controller/Stats/StatsC.php\',\r\n  data: {\r\n    stat: \"DonationCard\"\r\n  },\r\n  type: \'POST\',\r\n  dataType: \"JSON\",\r\n  success: function(data) {\r\n\r\n    var div = document.getElementById(\"StatCards\");\r\n\r\n    var card = \"<div class=\'col-xl-3 col-md-6 mb-4\'><div class=\'card border-left-primary shadow h-100 py-2\'><div class=\'card-body\'>\";\r\n    card += \"<div class=\'row no-gutters align-items-center\'><div class=\'col mr-2\'>\";\r\n    card += \"<div class=\'text-xs font-weight-bold text-primary text-uppercase mb-1\'>Total Donations Requested Today</div>\";\r\n    card += \"<div class=\'h5 mb-0 font-weight-bold text-gray-800\'>\"+data+\"</div>\";\r\n    card += \"</div><div class=\'col-auto\'><i class=\'fas fa-dollar-sign fa-2x text-gray-300\'></i></div></div></div></div></div>\";\r\n\r\n    div.innerHTML += card;\r\n  },\r\n  error: function(data) {\r\n    console.log(data.responseText);\r\n  }\r\n});\r\n\r\ngoogle.charts.load(\'current\', {\r\n  \'packages\': [\'corechart\']\r\n}).then(function() {\r\n\r\n  $(\"#PaymentMethodDonationsStat\").click(function() {\r\n\r\n    PieStat(\"PaymentMethodDonation\");\r\n\r\n  })\r\n\r\n  $(\"#ProjectCategoryStat\").click(function() {\r\n\r\n    PieStat(\"ProjectCategoryDonation\");\r\n\r\n  })\r\n})\r\n\r\nfunction PieStat(statType) {\r\n\r\n  var chartdata = new google.visualization.DataTable();\r\n\r\n  chartdata.addColumn(\'string\', \'x\');\r\n  chartdata.addColumn(\'number\', \'y\');\r\n\r\n  $.ajax({\r\n    url: \"../controller/Stats/StatsC.php\",\r\n    data: {\r\n      stat: statType\r\n    },\r\n    type: \"POST\",\r\n    dataType: \"JSON\",\r\n    success: function(data) {\r\n\r\n      console.log(data);\r\n\r\n      for (var key in data) {\r\n\r\n        chartdata.addRows([\r\n          [key, data[key]]\r\n        ]);\r\n\r\n      }\r\n\r\n      var options = {\r\n        \'title\': statType,\r\n        \'width\': 908,\r\n        \'height\': 400\r\n      };\r\n\r\n      var chart = new google.visualization.PieChart(document.getElementById(\'StatsDiv\'));\r\n      chart.draw(chartdata, options);\r\n    },\r\n    error: function(data) {\r\n      console.log(data.responseText);\r\n    }\r\n  });\r\n}\r\n\r\n</script>\r\n', 1, '2019-05-18 11:12:59', '2019-05-18 19:48:43', 0);
INSERT INTO `tb_html` (`id`, `html`, `pageID`, `create_date`, `update_date`, `isdeleted`) VALUES
(9, '<div class=\"card-header py-3\">\r\n    <h6 class=\"m-0 font-weight-bold text-primary\"> Settings </h6>\r\n</div>\r\n\r\n<br>\r\n<br>\r\n\r\n<div id=\"settingsPage\" class=\"container-fluid\">\r\n    <div class=\"row\">\r\n      <div class=\"col-xl-6 col-lg-6\">\r\n          <div class=\"card shadow mb-4\">\r\n              <div class=\"card-header py-3 d-flex flex-row align-items-center justify-content-between\">\r\n                  <h6 class=\"m-0 font-weight-bold text-primary\">Members Types Control</h6>\r\n                  <div class=\"dropdown no-arrow\">\r\n                    <a class=\"dropdown-toggle\" href=\"#\" role=\"button\" id=\"dropdownMenuLink\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n                        <i class=\"fas fa-ellipsis-v fa-sm fa-fw text-gray-400\"></i>\r\n                    </a>\r\n                      <div class=\"dropdown-menu dropdown-menu-right shadow animated--fade-in\" aria-labelledby=\"dropdownMenuLink\">\r\n                          <div class=\"dropdown-header\">Control Options:</div>\r\n                              <a class=\"dropdown-item\" href=\"#\" id=\"ShowAddTypeSettingsBtn\">Add</a>\r\n                              <a class=\"dropdown-item\" href=\"#\" id=\"ShowListTypeSettingsBtn\">List</a>\r\n                      </div>\r\n                  </div>\r\n              </div>\r\n\r\n              <div id=\"AddTypeSettings\" class=\"card-body\" style=\"display: none\"></div>\r\n              <div id=\"allTypesTable\"></div>\r\n              <div id=\"update_typeForm\"></div>\r\n          </div>\r\n      </div>\r\n\r\n        <div class=\"col-xl-6 col-lg-6\">\r\n            <div class=\"card shadow mb-4\">\r\n                <div class=\"card-header py-3 d-flex flex-row align-items-center justify-content-between\">\r\n                    <h6 class=\"m-0 font-weight-bold text-primary\">Control User Types Options</h6>\r\n                    <div class=\"dropdown no-arrow\">\r\n                        <a class=\"dropdown-toggle\" href=\"#\" role=\"button\" id=\"dropdownMenuLink\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n                            <i class=\"fas fa-ellipsis-v fa-sm fa-fw text-gray-400\"></i>\r\n                        </a>\r\n                        <div class=\"dropdown-menu dropdown-menu-right shadow animated--fade-in\" aria-labelledby=\"dropdownMenuLink\">\r\n                            <div class=\"dropdown-header\">Control Options:</div>\r\n                            <a class=\"dropdown-item\" href=\"#\" id=\"showAddOptionBtn\">Add</a>\r\n                            <a class=\"dropdown-item\" href=\"#\" id=\"showListOptionBtn\">List</a>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n\r\n                <div id=\"AddOptionSettings\" class=\"card-body\" style=\"display: none\"></div>\r\n                <div id=\"allOptionsTable\"></div>\r\n                <div id=\"update_OptionForm\"></div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n<script>\r\n\r\n  var typeID;\r\n  var addparentID;\r\n  var typesLoaded = 0;\r\n  var typesAddLoaded = 0;\r\n\r\n  $.ajax({\r\n    url: \'../controller/UserTypeControl/List_UserTypes.php\',\r\n    data: {\r\n      parentID: 0,\r\n      DisplayType: \"single\"\r\n    },\r\n    type: \'POST\',\r\n    dataType: \"JSON\",\r\n    success: function(data) {\r\n\r\n      $(data).appendTo(\"#dropdown-usertype-table1\");\r\n      $(data).appendTo(\"#dropdown-usertype-insert\");\r\n      // $(data).appendTo(\"#dropdown-MainUserType\");\r\n      $(data).appendTo(\"#dropdown-email-table\");\r\n      $(data).appendTo(\"#dropdown-UserTypes\");\r\n\r\n    },\r\n    error: function(data) {\r\n      console.log(data);\r\n      $(\"#errormsg\").html(data.responseText);\r\n    }\r\n  });\r\n\r\n  $(document).on(\'click\', \'#ShowAddTypeSettingsBtn\', function(e) {\r\n\r\n    e.preventDefault();\r\n    e.stopImmediatePropagation();\r\n\r\n    if (typesAddLoaded == 0) {\r\n      $.ajax({\r\n        url: \'../controller/UserTypeControl/AddUserType.php\',\r\n        data: {\r\n          parentID: 0,\r\n          condition: \"show\"\r\n        },\r\n        type: \'POST\',\r\n        dataType: \"JSON\",\r\n        success: function(data) {\r\n\r\n          var div = document.getElementById(\"AddTypeSettings\");\r\n\r\n          div.innerHTML += data;\r\n\r\n          typesAddLoaded = 1;\r\n\r\n        },\r\n        error: function(data) {\r\n          console.log(data);\r\n        }\r\n      });\r\n    }\r\n\r\n    $(\"#allTypesTable\").hide();\r\n    $(\"#update_typeForm\").hide();\r\n    $(\"#AddTypeSettings\").show();\r\n\r\n    return false;\r\n  });\r\n\r\n  $(document).on(\'click\', \'#ShowListTypeSettingsBtn\', function(e) {\r\n\r\n    e.preventDefault();\r\n    e.stopImmediatePropagation();\r\n\r\n    if (typesLoaded != 1) {\r\n      listAllTypesTable();\r\n    }\r\n\r\n    $(\"#AddTypeSettings\").hide();\r\n    $(\"#allTypesTable\").show();\r\n    $(\"#update_typeForm\").hide();\r\n\r\n    return false;\r\n  });\r\n\r\n  $(document).on(\'click\', \'#addSubTypeBtn\', function(e) { // insert\r\n\r\n    e.preventDefault();\r\n    e.stopImmediatePropagation();\r\n\r\n    // var form_arr = $(\'#insertUserSubTypeForm\').serialize();\r\n    // form_arr += \'&\';\r\n\r\n    // var form_arr = $(\'#TypeName\').val();\r\n    var xyz = document.getElementById(\"TypeName\").value;\r\n    // console.log(xyz);\r\n\r\n    $.ajax({\r\n      url: \"../controller/UserTypeControl/AddUserType.php\",\r\n      type: \"POST\",\r\n      dataType: \"JSON\",\r\n      data: {\r\n        condition: \'Add\',\r\n        parentID: addparentID,\r\n        arr: xyz\r\n      },\r\n      success: function(data) {\r\n\r\n        if(data[\'error\']){\r\n            Swal({type: \'error\', title: data[\'error\'],\r\n                toast: true, position: \'top-right\',\r\n                showConfirmButton: false, timer: 3000 });\r\n        }else{\r\n            Swal({type: \'success\', title: data[\'success\'],\r\n                toast: true, position: \'top-right\',\r\n                showConfirmButton: false, timer: 3000 });\r\n                $(\"#allTypesTable\").hide();\r\n                $(\"#allTypesTable\").empty();\r\n                listAllTypesTable();\r\n        }\r\n        console.log(data);\r\n        // $(\"#sucessType_div\").css(\"display\", \"block\");\r\n\r\n      },\r\n      error: function(data) {\r\n        console.log(data);\r\n        // $(\"#errorType_div\").css(\"display\", \"block\");\r\n        //$(\"#errormsg\").html(data.responseText);\r\n      }\r\n    });\r\n    return false;\r\n  });\r\n\r\n  $(document).on(\'click\', \'.dropdown1\', function(e) {\r\n\r\n    e.preventDefault();\r\n    e.stopImmediatePropagation();\r\n\r\n    var id = $(this).attr(\'id\');\r\n    parentID = id.substr(id.indexOf(\'-\') + 1, id.indexOf(\'-\'));\r\n\r\n    $.ajax({\r\n      url: \'../controller/UserTypeControl/List_UserTypes.php\',\r\n      data: {\r\n        parentID: parentID,\r\n        DisplayType: \"single\"\r\n      },\r\n      type: \'POST\',\r\n      dataType: \"JSON\",\r\n      success: function(data) {\r\n\r\n        $(\'#dropdown-usertype-table2\').empty();\r\n        $(\"#dropdown-usertype-insert2\").empty();\r\n\r\n        $(data).appendTo(\"#dropdown-usertype-table2\");\r\n        $(data).appendTo(\"#dropdown-usertype-insert2\");\r\n\r\n        $(\'.t2\').show();\r\n        $(\'.i2\').show();\r\n\r\n      },\r\n      error: function(data) {\r\n        console.log(data);\r\n      }\r\n    });\r\n    return false;\r\n  });\r\n\r\n  $(document).on(\'click\', \'.deleteTypebtn\', function(e) {\r\n\r\n    e.preventDefault();\r\n    e.stopImmediatePropagation();\r\n\r\n    var id = $(this).attr(\'id\');\r\n    typeID = id.substr(id.indexOf(\'-\') + 1, id.indexOf(\'-\'));\r\n\r\n    $.ajax({\r\n      url: \'../controller/UserTypeControl/Delete_Type.php\',\r\n      data: {\r\n        typeID: typeID\r\n      },\r\n      dataType: \"JSON\",\r\n      type: \'POST\',\r\n      success: function(data) {\r\n\r\n        if(data[\'error\']){\r\n            Swal({type: \'error\', title: data[\'error\'],\r\n                toast: true, position: \'top-right\',\r\n                showConfirmButton: false, timer: 3000 });\r\n        }else{\r\n            Swal({type: \'success\', title: data[\'success\'],\r\n                toast: true, position: \'top-right\',\r\n                showConfirmButton: false, timer: 3000 });\r\n                $(\"#allTypesTable\").hide();\r\n                $(\"#allTypesTable\").empty();\r\n                listAllTypesTable();\r\n                $(\"#allTypesTable\").show();\r\n        }\r\n        // $(\"#sucessType_div\").css(\"display\", \"block\");\r\n        // notifiy done sucessfully\r\n      },\r\n      error: function(data) {\r\n        console.log(data);\r\n        // $(\"#errorType_div\").css(\"display\", \"block\");\r\n        //$(\"#errormsg\").html(data.responseText);\r\n      }\r\n    });\r\n\r\n    return false;\r\n  });\r\n\r\n  $(document).on(\'click\', \'.updateTypebtn\', function(e) {\r\n\r\n    e.preventDefault();\r\n    e.stopImmediatePropagation();\r\n\r\n    $(\"#allTypesTable\").hide();\r\n\r\n    var id = $(this).attr(\'id\');\r\n    typeID = id.substr(id.indexOf(\'-\') + 1, id.indexOf(\'-\'));\r\n\r\n    var typename = $(\"#typename-\" + typeID).text();\r\n    var parentname = $(\"#parentname-\" + typeID).text();\r\n\r\n    var formdiv;\r\n\r\n    $.ajax({\r\n      url: \'../controller/UserTypeControl/List_UserTypes.php\',\r\n      data: {\r\n        parentID: 0,\r\n        TypeName: typename,\r\n        ParentName: parentname,\r\n        DisplayType: \"update\"\r\n      },\r\n      type: \'POST\',\r\n      dataType: \"JSON\",\r\n      success: function(data) {\r\n\r\n        $(\"#update_typeForm\").empty();\r\n        $(\"#allTypesTable\").hide();\r\n        $(\"#update_typeForm\").show();\r\n\r\n        formdiv = document.getElementById(\"update_typeForm\");\r\n\r\n        formdiv.innerHTML += data;\r\n\r\n      },\r\n      error: function(data) {\r\n        console.log(data);\r\n        // $(\"#errormsg\").html(data.responseText);\r\n      }\r\n    });\r\n\r\n    return false;\r\n  });\r\n\r\n  $(document).on(\'click\', \'.EditDropdown\', function(e) {\r\n    e.preventDefault();\r\n    e.stopImmediatePropagation();\r\n\r\n    var id = $(this).attr(\'id\');\r\n    addparentID = id.substr(id.indexOf(\'-\') + 1, id.indexOf(\'-\'));\r\n\r\n    if ($(\"#ParentTypeName\").length > 0) {\r\n      document.getElementById(\"ParentTypeName\").value = $(this).text();\r\n    }\r\n    if ($(\"#AddParentTypeName\").length > 0) {\r\n      document.getElementById(\"AddParentTypeName\").value = $(this).text();\r\n    }\r\n\r\n  });\r\n\r\n  $(document).on(\'click\', \'#saveTypeChangesBtn\', function(e) { // update\r\n\r\n    e.preventDefault();\r\n    e.stopImmediatePropagation();\r\n\r\n    var name = $(\'#typeName\').val();\r\n\r\n    console.log(name);\r\n    console.log(typeID);\r\n\r\n    $.ajax({\r\n      url: \"../controller/UserTypeControl/Update_UserTypes.php\",\r\n      type: \"POST\",\r\n      data: {\r\n        typeID: typeID,\r\n        arr: name,\r\n        parentID: addparentID\r\n      },\r\n      dataType: \"JSON\",\r\n      success: function(data) {\r\n\r\n        if(data[\'error\']){\r\n            Swal({type: \'error\', title: data[\'error\'],\r\n                toast: true, position: \'top-right\',\r\n                showConfirmButton: false, timer: 3000 });\r\n        }else{\r\n            Swal({type: \'success\', title: data[\'success\'],\r\n                toast: true, position: \'top-right\',\r\n                showConfirmButton: false, timer: 3000 });\r\n                $(\"#allTypesTable\").hide();\r\n                $(\"#allTypesTable\").empty();\r\n                listAllTypesTable();\r\n        }\r\n\r\n        console.log(data);\r\n        // $(\"#sucessTypeUpdate_div\").css(\"display\", \"block\");\r\n      },\r\n      error: function(data) {\r\n        console.log(data);\r\n        // $(\"#errorTypeUpdate_div\").css(\"display\", \"block\");\r\n        //$(\"#errormsg\").html(data.responseText);\r\n      }\r\n    });\r\n    return false;\r\n  });\r\n\r\n  function listAllTypesTable() {\r\n\r\n    var div = document.getElementById(\"allTypesTable\");\r\n\r\n    $.ajax({\r\n      url: \'../controller/UserTypeControl/List_UserTypes.php\',\r\n      data: {\r\n        parentID: \"all\",\r\n        DisplayType: \"all\"\r\n      },\r\n      type: \'POST\',\r\n      dataType: \"JSON\",\r\n      success: function(data) {\r\n\r\n        div.innerHTML += data;\r\n        typesLoaded = 1;\r\n\r\n      },\r\n      error: function(data) {\r\n        console.log(data);\r\n        $(\"#errormsg\").html(data.responseText);\r\n      }\r\n    });\r\n  }\r\n\r\n\r\n  var optionID;\r\n  var optionTypeID;\r\n  var optionsLoaded = 0;\r\n  var optionsAddLoaded = 0;\r\n\r\n  $(document).on(\'click\', \'#showAddOptionBtn\', function(e) {\r\n\r\n    e.preventDefault();\r\n    e.stopImmediatePropagation();\r\n\r\n    if (optionsAddLoaded == 0) {\r\n      $.ajax({\r\n        url: \'../controller/TypeOptionControl/Add_Option.php\',\r\n        data: {\r\n          condition: \"show\"\r\n        },\r\n        type: \'POST\',\r\n        dataType: \"JSON\",\r\n        success: function(data) {\r\n\r\n          var div = document.getElementById(\"AddOptionSettings\");\r\n\r\n          div.innerHTML += data;\r\n\r\n          optionsAddLoaded = 1;\r\n\r\n        },\r\n        error: function(data) {\r\n          console.log(data);\r\n        }\r\n      });\r\n    }\r\n\r\n    $(\"#allOptionsTable\").hide();\r\n    $(\"#update_OptionForm\").hide();\r\n    $(\"#AddOptionSettings\").show();\r\n\r\n    return false;\r\n  });\r\n\r\n  $(document).on(\'click\', \'#showListOptionBtn\', function(e) {\r\n\r\n    e.preventDefault();\r\n    e.stopImmediatePropagation();\r\n\r\n    if (optionsLoaded != 1) {\r\n      listAllOptionsTable();\r\n    }\r\n\r\n    $(\"#AddOptionSettings\").hide();\r\n    $(\"#allOptionsTable\").show();\r\n    $(\"#update_OptionForm\").hide();\r\n\r\n    return false;\r\n  });\r\n\r\n  $(document).on(\'click\', \'#addOptionBtn\', function(e) { // insert\r\n\r\n    e.preventDefault();\r\n    e.stopImmediatePropagation();\r\n\r\n    var optionName = document.getElementById(\"OptionName\").value;\r\n    var optionType = document.getElementById(\"OptionTypeName\").value;\r\n\r\n    $.ajax({\r\n      url: \"../controller/TypeOptionControl/Add_Option.php\",\r\n      type: \"POST\",\r\n      dataType: \"JSON\",\r\n      data: {\r\n        condition: \"add\",\r\n        OptionName: optionName,\r\n        OptionType: optionType,\r\n        OptionTypeID: optionTypeID\r\n      },\r\n      success: function(data) {\r\n\r\n        if(data[\'error\']){\r\n            Swal({type: \'error\', title: data[\'error\'],\r\n                toast: true, position: \'top-right\',\r\n                showConfirmButton: false, timer: 3000 });\r\n        }else{\r\n            Swal({type: \'success\', title: data[\'success\'],\r\n                toast: true, position: \'top-right\',\r\n                showConfirmButton: false, timer: 3000 });\r\n                $(\"#allOptionsTable\").hide();\r\n                $(\"#allOptionsTable\").empty();\r\n                listAllOptionsTable();\r\n        }\r\n\r\n        console.log(data);\r\n        // $(\"#sucessOption_div\").css(\"display\", \"block\");\r\n\r\n      },\r\n      error: function(data) {\r\n        console.log(data);\r\n        // $(\"#errorOption_div\").css(\"display\", \"block\");\r\n        //$(\"#errormsg\").html(data.responseText);\r\n      }\r\n    });\r\n    return false;\r\n  });\r\n\r\n  $(document).on(\'click\', \'.updateOptionbtn\', function(e) {\r\n\r\n    e.preventDefault();\r\n    e.stopImmediatePropagation();\r\n\r\n    $(\"#allOptionsTable\").hide();\r\n\r\n    var id = $(this).attr(\'id\');\r\n    optionID = id.substr(id.indexOf(\'-\') + 1, id.indexOf(\'-\'));\r\n\r\n    var optionname = $(\"#optionname-\" + optionID).text();\r\n    var optiontype = $(\"#optiontype-\" + optionID).text();\r\n\r\n    var formdiv;\r\n\r\n    $.ajax({\r\n      url: \'../controller/TypeOptionControl/list_TypeOption.php\',\r\n      data: {\r\n        DisplayType: \"update\",\r\n        optionName: optionname,\r\n        typeName: optiontype\r\n      },\r\n      type: \'POST\',\r\n      dataType: \"JSON\",\r\n      success: function(data) {\r\n\r\n        $(\"#update_OptionForm\").empty();\r\n        $(\"#allOptionsTable\").hide();\r\n        $(\"#update_OptionForm\").show();\r\n\r\n        formdiv = document.getElementById(\"update_OptionForm\");\r\n\r\n        formdiv.innerHTML += data;\r\n\r\n      },\r\n      error: function(data) {\r\n        console.log(data);\r\n        $(\"#errormsg\").html(data.responseText);\r\n      }\r\n    });\r\n\r\n    return false;\r\n  });\r\n\r\n  $(document).on(\'click\', \'.deleteOptionbtn\', function(e) {\r\n\r\n    e.preventDefault();\r\n    e.stopImmediatePropagation();\r\n\r\n    var id = $(this).attr(\'id\');\r\n\r\n    optionID = id.substr(id.indexOf(\'-\') + 1, id.indexOf(\'-\'));\r\n\r\n    $.ajax({\r\n      url: \'../controller/TypeOptionControl/Delete_Option.php\',\r\n      data: {\r\n        optionID: optionID\r\n      },\r\n      type: \'POST\',\r\n      dataType: \"JSON\",\r\n      success: function(data) {\r\n\r\n        if(data[\'error\']){\r\n            Swal({type: \'error\', title: data[\'error\'],\r\n                toast: true, position: \'top-right\',\r\n                showConfirmButton: false, timer: 3000 });\r\n        }else{\r\n            Swal({type: \'success\', title: data[\'success\'],\r\n                toast: true, position: \'top-right\',\r\n                showConfirmButton: false, timer: 3000 });\r\n                $(\"#allOptionsTable\").hide();\r\n                $(\"#allOptionsTable\").empty();\r\n                listAllOptionsTable();\r\n                $(\"#allOptionsTable\").show();\r\n        }\r\n\r\n        console.log(data);\r\n        // $(\"#sucessOption_div\").css(\"display\", \"block\");\r\n        // notifiy done sucessfully\r\n      },\r\n      error: function(data) {\r\n        console.log(data);\r\n        // $(\"#errorOption_div\").css(\"display\", \"block\");\r\n        //$(\"#errormsg\").html(data.responseText);\r\n      }\r\n    });\r\n    return false;\r\n  });\r\n\r\n  $(document).on(\'click\', \'#saveOptionChangesBtn\', function(e) { // update\r\n\r\n    e.preventDefault();\r\n    e.stopImmediatePropagation();\r\n\r\n    var name = $(\'#UpdateOptionName\').val();\r\n    var type = $(\'#UpdateOptionTypeName\').val();\r\n\r\n    $.ajax({\r\n      url: \"../controller/TypeOptionControl/Update_Option.php\",\r\n      type: \"POST\",\r\n      dataType: \"JSON\",\r\n      data: {\r\n        optionID: optionID,\r\n        name: name,\r\n        type: type,\r\n        typeID: optionTypeID\r\n      },\r\n      success: function(data) {\r\n\r\n        if(data[\'error\']){\r\n            Swal({type: \'error\', title: data[\'error\'],\r\n                toast: true, position: \'top-right\',\r\n                showConfirmButton: false, timer: 3000 });\r\n        }else{\r\n            Swal({type: \'success\', title: data[\'success\'],\r\n                toast: true, position: \'top-right\',\r\n                showConfirmButton: false, timer: 3000 });\r\n                $(\"#allOptionsTable\").hide();\r\n                $(\"#allOptionsTable\").empty();\r\n                listAllOptionsTable();\r\n        }\r\n\r\n        console.log(data);\r\n        // $(\"#sucessOptionUpdate_div\").css(\"display\", \"block\");\r\n      },\r\n      error: function(data) {\r\n        console.log(data);\r\n        // $(\"#errorOptionUpdate_div\").css(\"display\", \"block\");\r\n        //$(\"#errormsg\").html(data.responseText);\r\n      }\r\n    });\r\n    return false;\r\n  });\r\n\r\n  $(document).on(\'click\', \'.OptionTypesDropdown\', function(e) {\r\n    e.preventDefault();\r\n    e.stopImmediatePropagation();\r\n\r\n    var id = $(this).attr(\'id\');\r\n    optionTypeID = id.substr(id.indexOf(\'-\') + 1, id.indexOf(\'-\'));\r\n\r\n    if ($(\"#OptionTypeName\").length > 0) {\r\n      document.getElementById(\"OptionTypeName\").value = $(this).text();\r\n    }\r\n    if ($(\"#UpdateOptionTypeName\").length > 0) {\r\n      document.getElementById(\"UpdateOptionTypeName\").value = $(this).text();\r\n    }\r\n\r\n  });\r\n\r\n  function listAllOptionsTable() {\r\n\r\n    var div = document.getElementById(\"allOptionsTable\");\r\n\r\n    $.ajax({\r\n      url: \'../controller/TypeOptionControl/list_TypeOption.php\',\r\n      data: {\r\n        DisplayType: \"all\",\r\n      },\r\n      type: \'POST\',\r\n      dataType: \"JSON\",\r\n      success: function(data) {\r\n\r\n        div.innerHTML += data;\r\n        optionsLoaded = 1;\r\n\r\n      },\r\n      error: function(data) {\r\n        console.log(data);\r\n        $(\"#errormsg\").html(data.responseText);\r\n      }\r\n    });\r\n  }\r\n\r\n</script>\r\n', 13, '2019-05-18 13:06:36', '2019-05-26 02:58:07', 0),
(10, '<style>\r\n    #log .content {\r\n        float: right;\r\n        width: 100%;\r\n        height: 100%;\r\n        overflow: hidden;\r\n        position: relative;\r\n    }\r\n\r\n    #log .content .log-messages {\r\n        height:inherit;\r\n        overflow-y: scroll;\r\n        overflow-x: hidden;\r\n    }\r\n\r\n    #log .content .log-messages::-webkit-scrollbar {\r\n        width: 8px;\r\n        background: transparent;\r\n    }\r\n    #log .content .log-messages::-webkit-scrollbar-thumb {\r\n        background-color: rgba(0, 0, 0, 0.3);\r\n    }\r\n    #log .content .log-messages ul li {\r\n        display: inline-block;\r\n        clear: both;\r\n        margin: 15px 15px 5px 15px;\r\n        width: calc(100% - 25px);\r\n        font-size: 0.9em;\r\n    }\r\n\r\n    #log .content .log-messages ul\r\n    {\r\n        margin-right: 20px;\r\n    }\r\n\r\n    #log .content .log-messages ul li:nth-last-child(1) {\r\n        margin-bottom: 20px;\r\n    }\r\n    #log .content .log-messages ul li.other img {\r\n        margin: 6px 8px 0 0;\r\n    }\r\n    #log .content .log-messages ul li.other p {\r\n        background: #435f7a;\r\n        color: #f5f5f5;\r\n    }\r\n    #log .content .log-messages ul li.youu img {\r\n        float: right;\r\n        margin: 6px 0 0 8px;\r\n    }\r\n    #log .content .log-messages ul li.youu p {\r\n        background: #f5f5f5;\r\n        float: right;\r\n    }\r\n    #log .content .log-messages ul li img {\r\n        width: 22px;\r\n        border-radius: 50%;\r\n        float: left;\r\n    }\r\n    #log .content .log-messages ul li p {\r\n        display: inline-block;\r\n        padding: 10px 15px;\r\n        border-radius: 20px;\r\n        max-width: 205px;\r\n        line-height: 130%;\r\n    }\r\n    @media screen and (min-width: 735px) {\r\n        #log .content .log-messages ul li p {\r\n            max-width: 300px;\r\n        }\r\n    }\r\n    #log .content .message-input {\r\n        position: absolute;\r\n        bottom: 0;\r\n        width: 100%;\r\n        z-index: 99;\r\n    }\r\n</style>\r\n\r\n\r\n<div class=\"card-header py-3\">\r\n    <h6 class=\"m-0 font-weight-bold text-primary\"> Logs </h6>\r\n</div>\r\n\r\n    <div class=\"card-body\">\r\n\r\n        <div id=\"log\">\r\n            <div class=\"content\" style=\"background: aliceblue; overflow-y: auto;\">\r\n                <div class=\"log-messages\">\r\n                    <ul id=\"logss\">\r\n\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n    </div>\r\n\r\n<script>\r\n\r\n    var log_div = document.getElementById(\"logss\");\r\n\r\n    $.ajax({\r\n        url: \'../controller/log.php\',\r\n        type: \'POST\',\r\n        dataType: \"JSON\",\r\n\r\n        success: function(data) {\r\n\r\n            if(data[0].length <= 15){\r\n                \r\n                var i = 0;\r\n                while(i < data[0].length){\r\n\r\n                    var text = \'\';\r\n                    text += \"<li class=\'other\'> <img src=\'../../img/default.jpg\' alt=\'\' /><p>\" + data[0][i] +\" at \" + data[1][i] + \"</p></li>\";\r\n                    log_div.innerHTML += text;\r\n\r\n                    i++;\r\n\r\n                } var interval = setTimeout(function () {\r\n                    if ($(\'#logg-li\').hasClass(\'active\')) {\r\n\r\n                        $(\'#logg\').click();\r\n                    }\r\n\r\n                    else\r\n                    {\r\n                        clearInterval(interval);\r\n                    }\r\n                }, 10000);\r\n            }else{\r\n                var i = data[0].length-15;\r\n                while(i < data[0].length){\r\n\r\n                    var text = \'\';\r\n                    text += \"<li class=\'other\'> <img src=\'../../img/default.jpg\' alt=\'\' /><p>\" + data[0][i] +\" at \" + data[1][i] + \"</p></li>\";\r\n                    log_div.innerHTML += text;\r\n\r\n                    i++;\r\n\r\n                } var interval = setTimeout(function () {\r\n                    if ($(\'#logg-li\').hasClass(\'active\')) {\r\n\r\n                        $(\'#logg\').click();\r\n                    }\r\n\r\n                    else\r\n                    {\r\n                        clearInterval(interval);\r\n                    }\r\n                }, 10000);\r\n            }\r\n\r\n\r\n\r\n },\r\n        error: function(data){\r\n            console.log(data);\r\n        }\r\n    });\r\n\r\n\r\n\r\n\r\n</script>\r\n\r\n', 6, '2019-05-18 20:43:06', '2019-05-21 18:46:26', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_logins`
--

CREATE TABLE `tb_logins` (
  `id` int(11) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `userID` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_logins`
--

INSERT INTO `tb_logins` (`id`, `email`, `password`, `userID`, `create_date`, `update_date`, `isdeleted`) VALUES
(1, 'habiba.hhegazy1998@gmail.com', '$2y$10$fOtoJ.9Betmhm.KoQJCCIOT.wBow8raEtK0X3FgNxnqa1HmP0gXsy', 1, '2019-05-24 04:53:37', '2019-05-24 05:10:53', 0),
(2, 'mabelle.schmeler@example.org', 'aeeabe7ba1d2a22e6f0f75a152ae98bd99970429', 2, '1998-09-22 07:19:29', '2019-05-24 14:27:51', 0),
(3, 'jacey.koch@example.net', '90df33858a4063a91d92cee592cb79bda55a1e9f', 3, '1973-01-22 02:55:25', '2019-05-24 14:27:51', 0),
(4, 'uhintz@example.org', 'aae820d903a6684f09a0409d517ecc8e492dc7a1', 4, '1983-12-13 13:00:32', '2019-05-24 14:27:51', 0),
(5, 'mose20@example.com', '84bb633fe62ff3ac9dd0d1043e385262368219d3', 5, '1994-11-24 23:46:20', '2019-05-24 14:27:51', 0),
(6, 'adelle66@example.net', 'a24026c28449a5b0abb8987a447d097918e32e28', 6, '2004-10-17 06:58:10', '2019-05-24 14:27:51', 0),
(7, 'gislason.easter@example.net', '8cf0380c9bc0eac66e261dce9297524071a67ecd', 7, '1983-02-24 02:55:01', '2019-05-24 14:27:51', 0),
(8, 'huels.maximo@example.org', '7bffdb04fbcd56fedfce09824262babb2428b0f7', 8, '2007-07-29 00:54:02', '2019-05-24 14:27:51', 0),
(9, 'cmcclure@example.org', '608de6af6a7bcabaee301e714604f3dc3c09383f', 9, '2005-08-20 11:22:24', '2019-05-24 14:27:51', 0),
(10, 'bailey.ocie@example.org', 'f1b5f4c04b1eb5ad07c505b1c1911c1d7ecd5666', 10, '2010-04-22 22:40:15', '2019-05-24 14:27:51', 0),
(11, 'weber.trudie@example.net', '9ad5954f16da6d2e0c7aefd4abc8c8581bfadb3f', 11, '1990-07-27 05:15:40', '2019-05-24 14:27:51', 0),
(12, 'willy88@example.org', 'b0a27e9f78e2930af253124e62ea62781e2e6459', 12, '1977-11-04 17:05:01', '2019-05-24 14:27:51', 0),
(13, 'kamren53@example.net', '653843f8e11812b5fe8278f2645d366a7adea04d', 13, '1971-03-28 16:02:35', '2019-05-24 14:27:51', 0),
(14, 'ernest.beatty@example.com', '3a091a751ff69ed0045845d77fe9ecb65c89114e', 14, '2019-04-01 19:51:31', '2019-05-24 14:27:51', 0),
(15, 'arely69@example.net', 'dd5916eb1a396855c85ad98de5c16159bc0dc982', 15, '1977-07-13 22:43:52', '2019-05-24 14:27:51', 0),
(16, 'gbahringer@example.net', '9848970bd4bb5d40cbb956a1db92766cba87d342', 16, '2015-05-06 13:10:46', '2019-05-24 14:27:51', 0),
(17, 'everardo68@example.org', '218e6460a64aef397660cca6c730690d748a4197', 17, '1982-10-05 15:56:53', '2019-05-24 14:27:51', 0),
(18, 'lubowitz.aisha@example.org', 'a62f1e5e500ded8c62e07994f0764b0adc498f79', 18, '2005-10-03 08:27:50', '2019-05-24 14:27:51', 0),
(19, 'rosalia.mertz@example.org', '659cd15c1274fee6b9e8975d2a2b4107bd1b3077', 19, '2015-05-21 20:46:54', '2019-05-24 14:27:51', 0),
(20, 'tconsidine@example.com', 'e9dd8aaa7bc75abdf24e3c12096de64fd1ee0fe4', 20, '1989-06-10 04:10:41', '2019-05-24 14:27:51', 0),
(21, 'frederick.hagenes@example.net', '89ae38fa4a642ba5318cd69bf97291aa470548c1', 21, '1988-07-21 20:30:54', '2019-05-24 14:27:51', 0),
(22, 'von.keegan@example.net', '4e77fdfc8cb9b9209442f0d5e13df69bcc50b9db', 22, '1990-10-30 06:05:01', '2019-05-24 14:27:51', 0),
(23, 'odell45@example.net', 'b5b1f524d40f65f9a71e376a8609496bef0947ee', 23, '2009-12-10 04:25:01', '2019-05-24 14:27:51', 0),
(24, 'gillian.borer@example.net', 'b61adadcc5a1eca77d4375ec04459f4cea1da0ea', 24, '1975-06-20 21:14:08', '2019-05-24 14:27:51', 0),
(25, 'cassie.bode@example.org', 'ba431116fe0c92643ed9443791d782919ec69348', 25, '2006-11-17 07:10:41', '2019-05-24 14:27:51', 0),
(26, 'crist.kendall@example.net', 'c561e163d6d5ec37795c52a852b63ea07e1cba64', 26, '1974-01-26 15:07:19', '2019-05-24 14:27:51', 0),
(27, 'qhickle@example.net', '5e32778630524a8ca1fd9326533edad654625924', 27, '1994-05-05 16:08:54', '2019-05-24 14:27:51', 0),
(28, 'laisha78@example.net', '598fe44d23e8a4b09890aadf7e269f88021ac729', 28, '2009-03-04 02:20:49', '2019-05-24 14:27:51', 0),
(29, 'tlockman@example.net', 'd5c74a2a85d14a1fe3e0b75c0ac0bc583bd2e5f3', 29, '1979-11-16 05:21:10', '2019-05-24 14:27:51', 0),
(30, 'dulce.wolf@example.com', '7c0ebb6fd78803939f2517c59db6ab1f5dfdb6db', 30, '1982-04-05 15:42:58', '2019-05-24 14:27:51', 0),
(31, 'kitty07@example.org', 'f4e0003e58453df8ab497aa190686cdecf01f9ca', 31, '1995-08-15 03:32:48', '2019-05-24 14:27:51', 0),
(32, 'karli89@example.net', '65ade7b046a7dc04ed08a2301c0df61d4e29774b', 32, '1995-06-16 00:36:42', '2019-05-24 14:27:51', 0),
(33, 'jana.kohler@example.com', '2f521fc69391af92feafddd27489adae6485e0a8', 33, '1998-06-20 03:06:16', '2019-05-24 14:27:51', 0),
(34, 'ofarrell@example.net', 'd42ffb4ce8b56ff1ce74505d898df4aa30844ff2', 34, '1976-11-05 12:42:53', '2019-05-24 14:27:51', 0),
(35, 'xo\'hara@example.com', '270eb39245ec0fba54eab144ddb2a4e76ed48600', 35, '1998-12-13 00:52:08', '2019-05-24 14:27:51', 0),
(36, 'douglas.esperanza@example.com', '63c960a40db9eb3360bb365f8754ec7d89aa5a62', 36, '1989-07-29 01:17:23', '2019-05-24 14:27:51', 0),
(37, 'yost.estelle@example.org', 'd7a7a5ce9e9aaec610abc5fa04ade3f0340b3605', 37, '1986-10-03 16:44:11', '2019-05-24 14:27:51', 0),
(38, 'sigurd.turner@example.com', '564d788e929a0a0ede1f25e98db667c83928365a', 38, '1999-01-17 04:43:03', '2019-05-24 14:27:51', 0),
(39, 'alda53@example.com', '83b021204c025d2bb63940be60374bd560d4a388', 39, '1997-05-14 08:02:10', '2019-05-24 14:27:51', 0),
(40, 'waelchi.meggie@example.org', '82ad7531a2008f94bed828576bfb9ab75606fabd', 40, '1996-04-26 18:58:15', '2019-05-24 14:27:51', 0),
(41, 'sherwood06@example.net', 'd6679193c96e320f37722274c3fde484f3288285', 41, '2013-03-26 01:44:22', '2019-05-24 14:27:51', 0),
(42, 'olubowitz@example.net', '570331eed9baab58fd4d7632794085813afbcb49', 42, '1992-08-18 14:34:07', '2019-05-24 14:27:51', 0),
(43, 'magnus57@example.org', 'b7419179038c9783879138e771f1422541c73fa1', 43, '1995-12-10 09:36:02', '2019-05-24 14:27:51', 0),
(44, 'cassidy.schiller@example.com', '06a998c5fd9d903893fd13981f95891470857c8d', 44, '1971-09-26 18:43:41', '2019-05-24 14:27:51', 0),
(45, 'melba34@example.org', '05d32fc8bc9730b67b0926c75a215e64dacaceaa', 45, '1999-02-23 00:16:57', '2019-05-24 14:27:51', 0),
(46, 'dbreitenberg@example.com', '0c3c298ed14c7ed1399513085980122c551beace', 46, '2013-10-01 21:00:25', '2019-05-24 14:27:51', 0),
(47, 'beahan.cordie@example.net', '9307895eec017f5168200573620bb50338c0ed78', 47, '1991-05-21 10:17:02', '2019-05-24 14:27:51', 0),
(48, 'mflatley@example.net', 'e6a617c6982ad9af557c289c8084c12d5782e930', 48, '1974-10-26 19:17:25', '2019-05-24 14:27:51', 0),
(49, 'gretchen.waters@example.net', 'd1538b7a8e2f61ce275da4827125393cfb4e6d76', 49, '1971-12-21 00:17:40', '2019-05-24 14:27:51', 0),
(50, 'deondre19@example.com', '8c0606bbf0a36a62908cda696141714a99f89c58', 50, '1999-05-24 10:43:58', '2019-05-24 14:27:51', 0),
(51, 'glen61@example.org', 'eeb27d4e5220b2d2b3bb5c97a3a3402d1f902151', 51, '1993-06-08 12:36:45', '2019-05-24 14:27:51', 0),
(52, 'dolly.carter@example.net', '277054e1e8c7346e3544c76e8ee877837480e2ec', 52, '2004-09-01 06:50:18', '2019-05-24 14:27:51', 0),
(53, 'sherman.armstrong@example.net', '9f7c4f62aded05cba0024cba56c7eaef13de8e0e', 53, '2015-01-24 06:58:09', '2019-05-24 14:27:51', 0),
(54, 'fchamplin@example.org', '0fbe4d1739ff9cd12aa6fb6c2b55d557ff6627e1', 54, '2002-09-22 05:47:53', '2019-05-24 14:27:51', 0),
(55, 'hank.schuppe@example.net', 'fa4ee121279119cae1bbb4b6926dfd04abbf15ec', 55, '2018-02-17 18:46:26', '2019-05-24 14:27:51', 0),
(56, 'florence72@example.com', 'b7bc1f1eaa2ca6c6a079e3eed78365b31853bbcd', 56, '2018-05-13 05:20:26', '2019-05-24 14:27:51', 0),
(57, 'gcrona@example.org', '8961ff9f83f8b0a5ab1eba678cab864c587b0e16', 57, '2010-05-12 02:50:26', '2019-05-24 14:27:51', 0),
(58, 'kbauch@example.com', 'ef60a03ecb4987d22e21783970485d70d2344e56', 58, '1983-03-03 11:35:20', '2019-05-24 14:27:51', 0),
(59, 'marquise11@example.org', 'e9043ca6e41e4dd9a881f56904ae2e908353d581', 59, '2013-01-21 13:39:32', '2019-05-24 14:27:51', 0),
(60, 'tnikolaus@example.net', '6657d3c7f463b9aecc78c47ec9419dfd62c60dd0', 60, '2017-04-02 23:36:57', '2019-05-24 14:27:51', 0),
(61, 'donnell.reinger@example.com', '28275046d7b460cffa8d7a4c6005f5cac386b42a', 61, '2014-06-17 03:29:54', '2019-05-24 14:27:51', 0),
(62, 'clifford89@example.org', 'ae35ca8c4cb38ca8fc4a2481345339fe4ed1a27e', 62, '2000-05-14 23:12:00', '2019-05-24 14:27:51', 0),
(63, 'zena.brekke@example.org', '525150d17e1aca22e9a2937fc1401fbdbf3c3d96', 63, '2010-01-03 08:26:40', '2019-05-24 14:27:51', 0),
(64, 'kacie52@example.net', '64fddb16ae11d71568947d5bfba78992bcc75e13', 64, '1981-02-23 18:45:40', '2019-05-24 14:27:51', 0),
(65, 'ciara.rohan@example.org', '1d7d0fd5f1c171529126ba421769e8f1e630ab50', 65, '1982-08-13 02:02:09', '2019-05-24 14:27:51', 0),
(66, 'edd.emmerich@example.org', '359b6b721ca5b8acb5156d2e7f01ce2bcf07e295', 66, '2013-05-02 07:26:10', '2019-05-24 14:27:51', 0),
(67, 'grayson.strosin@example.net', 'f518123ecb2f23fa1da6c02807e7b23dc21cd4e0', 67, '2017-03-05 04:13:43', '2019-05-24 14:27:51', 0),
(68, 'vkirlin@example.net', 'b764b031890655df80b6759ea278048cea40432d', 68, '1989-11-01 04:18:44', '2019-05-24 14:27:51', 0),
(69, 'brown.ulises@example.net', 'c049880bed9207ce855291fe178756bf0e744df1', 69, '1974-05-08 02:54:32', '2019-05-24 14:27:51', 0),
(70, 'o\'keefe.reginald@example.com', 'e6aefb3e994a295058807eed805303cde4e1616d', 70, '1992-06-03 20:21:09', '2019-05-24 14:27:51', 0),
(71, 'schneider.brooks@example.com', '20d69ce15a31dad18c609dd26e43efa1edd16a6a', 71, '2010-12-29 01:34:03', '2019-05-24 14:27:51', 0),
(72, 'aniya.hayes@example.net', '0ac6b7c7ca88dafda6b4264e1e3f67ddffcbb8cd', 72, '2010-11-22 05:51:46', '2019-05-24 14:27:51', 0),
(73, 'mbogisich@example.org', '022e8a7f2cfe09d45aa81304aca330f600ed7dea', 73, '1972-12-26 05:49:50', '2019-05-24 14:27:51', 0),
(74, 'kautzer.nils@example.net', '381d6ed944a33faa99081c074aa3c1127135d8f6', 74, '1994-04-26 03:00:03', '2019-05-24 14:27:51', 0),
(75, 'kautzer.junior@example.org', '7c2f9ca996c30824fc08f6fe911b69b6238c93dc', 75, '2016-07-06 15:01:11', '2019-05-24 14:27:51', 0),
(76, 'dewitt.langworth@example.net', '4ff9d08940e2f2a9ff26230a8d09ed829cdae2d3', 76, '1993-11-04 05:20:47', '2019-05-24 14:27:51', 0),
(77, 'greyson.zulauf@example.org', 'cf0e6230548a0f097b5577640e5211209f311908', 77, '2007-02-22 19:50:31', '2019-05-24 14:27:51', 0),
(78, 'walter53@example.net', '7b76e870f4c92c8aef2b6afe1f208cf882b6dcf4', 78, '2004-12-17 16:02:00', '2019-05-24 14:27:51', 0),
(79, 'natalia.mcdermott@example.org', 'd7f8482b6569c51d67c71d937a10e955c431623c', 79, '1993-02-01 21:29:49', '2019-05-24 14:27:51', 0),
(80, 'jairo90@example.org', '519acde53a8065d59491f8cac312762760775467', 80, '2018-08-28 00:26:53', '2019-05-24 14:27:51', 0),
(81, 'ari.feest@example.net', '3f39f8182c4065d90b80eba3404fd073d89cc7bc', 81, '1998-04-21 20:39:23', '2019-05-24 14:27:51', 0),
(82, 'natalia54@example.org', '73e2148d49deb529f54a4f859ab020ea60b9f591', 82, '2007-10-29 23:53:45', '2019-05-24 14:27:51', 0),
(83, 'jstreich@example.com', '8e47779abde20492594796c40c7c08efcd8a837b', 83, '2016-05-24 13:57:09', '2019-05-24 14:27:51', 0),
(84, 'qpfeffer@example.org', '96cb87a476e74c034bfca6e7f736a9c40309554d', 84, '1977-06-08 08:16:59', '2019-05-24 14:27:51', 0),
(85, 'ao\'kon@example.org', 'da66c1477e0678233727ce94313ac215c027d992', 85, '1985-01-11 14:47:14', '2019-05-24 14:27:51', 0),
(86, 'yost.daniella@example.net', '9c807a30f6ea4aaa19742bbbe6aae71e4ec9dff3', 86, '2001-06-21 17:27:01', '2019-05-24 14:27:51', 0),
(87, 'ddeckow@example.com', '371414ad516aed5c7aaff8c12b2e2bf007cc1c7e', 87, '1991-06-18 15:08:58', '2019-05-24 14:27:51', 0),
(88, 'benton.miller@example.com', 'cc9c810ee7d5caeb61fada38f882f36079cfcc45', 88, '1997-01-03 02:04:13', '2019-05-24 14:27:51', 0),
(89, 'sasha.o\'reilly@example.com', 'de8be4764631b8e49e0de3bba487c9d8783da526', 89, '1971-12-27 17:57:02', '2019-05-24 14:27:51', 0),
(90, 'beulah47@example.net', 'f83db1867a575d17ea65b562cfd6941e38536083', 90, '2014-03-02 09:14:43', '2019-05-24 14:27:51', 0),
(91, 'vlang@example.net', 'ff4aa5b43a1c2eccf3fdf47a868ee852b36be678', 91, '1989-06-05 10:12:47', '2019-05-24 14:27:51', 0),
(92, 'crooks.tyree@example.com', 'a0f9d7cc6c8ec8375493235e13a89835411b1e41', 92, '1984-10-16 05:21:51', '2019-05-24 14:27:51', 0),
(93, 'jordyn90@example.org', 'ae46d40429a95a62114da9324ff2c9ac4b305b39', 93, '1974-04-10 03:52:34', '2019-05-24 14:27:51', 0),
(94, 'yupton@example.net', '5acceb31a6c62d30e3f037467c4747e1bf9077a8', 94, '2017-11-29 12:46:11', '2019-05-24 14:27:51', 0),
(95, 'bgibson@example.com', '19923810ca9cbe0f9a226d68bfb1cc4f39541767', 95, '2009-12-08 10:32:49', '2019-05-24 14:27:51', 0),
(96, 'concepcion.roberts@example.com', '2d6c9e9f608befe3a6be925e5b4312ad82c563fe', 96, '2016-11-12 19:24:23', '2019-05-24 14:27:51', 0),
(97, 'macie.hills@example.net', '3c14feb29c6c297e0d8f579d1835de49fb59faf0', 97, '2006-03-06 07:22:29', '2019-05-24 14:27:51', 0),
(98, 'henri85@example.com', '3e774abfd00fdf32eb45cd2aaa2be76bea2c6115', 98, '1998-12-27 06:04:06', '2019-05-24 14:27:51', 0),
(99, 'hal20@example.net', '1f21407d3e0fec6ae0adbec1027be128b7a7139f', 99, '1977-08-26 18:37:58', '2019-05-24 14:27:51', 0),
(100, 'anne90@example.org', '1d97f90a1646e8ec3789ec5c73a3814a53bdf8d2', 100, '1997-08-20 19:07:06', '2019-05-24 14:27:51', 0),
(101, 'nbeatty@example.net', 'df1d62ef6a6a91f55a1e93fb86941363e4b0e2d0', 101, '2002-12-23 15:45:20', '2019-05-24 14:27:51', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_main_page`
--

CREATE TABLE `tb_main_page` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `link` varchar(250) NOT NULL,
  `usertypeID` int(11) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_main_page`
--

INSERT INTO `tb_main_page` (`id`, `name`, `link`, `usertypeID`, `created_date`, `update_date`, `isdeleted`) VALUES
(1, 'Admin Page', 'location:../../view/profile.php', 1, '2019-05-18 20:27:14', '2019-05-18 20:27:14', 0),
(2, 'Donor Page', 'location:../../view/donator.php', 2, '2019-05-18 20:27:44', '2019-05-18 20:27:44', 0),
(3, 'login', 'location:../../view/login.php', 0, '2019-05-18 22:48:13', '2019-05-18 22:48:13', 0),
(4, '404 not found', 'location:../../view/404.php', 0, '2019-05-18 22:49:34', '2019-05-18 22:59:48', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_messages`
--

CREATE TABLE `tb_messages` (
  `id` int(11) NOT NULL,
  `message_code` int(11) NOT NULL,
  `message_subject` varchar(250) NOT NULL,
  `mesaage_content` varchar(250) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_messages`
--

INSERT INTO `tb_messages` (`id`, `message_code`, `message_subject`, `mesaage_content`, `created_date`, `updated_date`, `isdeleted`) VALUES
(1, 100, 'Donation Taken', 'Your __value__ pound of your Donation was added to ( __ProjectName__ ) You can follow up the projects you have donated in through your account on our website http://192.168.64.2/project/php/view/login.php .. Thanks You', '2019-05-19 18:35:34', '2019-05-23 02:50:07', 0),
(2, 200, 'Weolcome to the Family', 'Hello __Email__ , Water From Life Foundation Family would like to welcome you to the family', '2019-05-23 02:26:58', '2019-05-23 05:57:46', 0),
(3, 300, 'Life from Water | Your New Password', '\"Here is your temporary password: __temp__  Press on this link to reset it : http://192.168.64.2/project/php/view/change_password.php', '2019-05-23 02:28:58', '2019-05-23 02:52:41', 0),
(4, 400, 'Project Phase Change', 'Dear Donations, We would like to inform you that the project that you donated in changed his phase to __phaseNo__ , Thanks for believing in us  ', '2019-05-23 06:00:55', '2019-05-23 06:00:55', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_nationality`
--

CREATE TABLE `tb_nationality` (
  `id` int(11) NOT NULL,
  `nationality_name` varchar(300) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nationality`
--

INSERT INTO `tb_nationality` (`id`, `nationality_name`, `create_date`, `update_date`, `isdeleted`) VALUES
(1, 'Afghan', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(2, 'Albanian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(3, 'Aland Islander', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(4, 'Algerian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(5, 'American Samoan', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(6, 'Andorran', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(7, 'Angolan', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(8, 'Anguillan', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(9, 'Antarctican', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(10, 'Antiguan', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(11, 'Argentinian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(12, 'Armenian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(13, 'Aruban', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(14, 'Australian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(15, 'Austrian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(16, 'Azerbaijani', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(17, 'Bahamian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(18, 'Bahraini', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(19, 'Bangladeshi', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(20, 'Barbadian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(21, 'Belarusian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(22, 'Belgian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(23, 'Belizean', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(24, 'Beninese', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(25, 'Saint Barthelmian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(26, 'Bermudan', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(27, 'Bhutanese', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(28, 'Bolivian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(29, 'Bosnian / Herzegovinian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(30, 'Botswanan', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(31, 'Bouvetian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(32, 'Brazilian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(33, 'British Indian Ocean Territory', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(34, 'Bruneian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(35, 'Bulgarian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(36, 'Burkinabe', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(37, 'Burundian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(38, 'Cambodian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(39, 'Cameroonian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(40, 'Canadian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(41, 'Cape Verdean', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(42, 'Caymanian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(43, 'Central African', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(44, 'Chadian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(45, 'Chilean', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(46, 'Chinese', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(47, 'Christmas Islander', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(48, 'Cocos Islander', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(49, 'Colombian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(50, 'Comorian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(51, 'Congolese', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(52, 'Cook Islander', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(53, 'Costa Rican', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(54, 'Croatian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(55, 'Cuban', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(56, 'Cypriot', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(57, 'Curacian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(58, 'Czech', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(59, 'Danish', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(60, 'Djiboutian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(61, 'Dominican', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(62, 'Dominican', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(63, 'Ecuadorian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(64, 'Egyptian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(65, 'Salvadoran', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(66, 'Equatorial Guinean', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(67, 'Eritrean', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(68, 'Estonian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(69, 'Ethiopian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(70, 'Falkland Islander', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(71, 'Faroese', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(72, 'Fijian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(73, 'Finnish', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(74, 'French', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(75, 'French Guianese', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(76, 'French Polynesian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(77, 'French', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(78, 'Gabonese', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(79, 'Gambian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(80, 'Georgian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(81, 'German', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(82, 'Ghanaian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(83, 'Gibraltar', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(84, 'Guernsian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(85, 'Greek', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(86, 'Greenlandic', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(87, 'Grenadian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(88, 'Guadeloupe', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(89, 'Guamanian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(90, 'Guatemalan', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(91, 'Guinean', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(92, 'Guinea-Bissauan', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(93, 'Guyanese', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(94, 'Haitian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(95, 'Heard and Mc Donald Islanders', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(96, 'Honduran', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(97, 'Hongkongese', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(98, 'Hungarian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(99, 'Icelandic', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(100, 'Indian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(101, 'Manx', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(102, 'Indonesian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(103, 'Iranian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(104, 'Iraqi', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(105, 'Irish', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(106, 'Israeli', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(107, 'Italian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(108, 'Ivory Coastian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(109, 'Jersian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(110, 'Jamaican', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(111, 'Japanese', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(112, 'Jordanian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(113, 'Kazakh', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(114, 'Kenyan', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(115, 'I-Kiribati', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(116, 'North Korean', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(117, 'South Korean', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(118, 'Kosovar', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(119, 'Kuwaiti', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(120, 'Kyrgyzstani', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(121, 'Laotian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(122, 'Latvian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(123, 'Lebanese', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(124, 'Basotho', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(125, 'Liberian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(126, 'Libyan', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(127, 'Liechtenstein', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(128, 'Lithuanian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(129, 'Luxembourger', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(130, 'Sri Lankian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(131, 'Macanese', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(132, 'Macedonian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(133, 'Malagasy', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(134, 'Malawian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(135, 'Malaysian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(136, 'Maldivian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(137, 'Malian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(138, 'Maltese', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(139, 'Marshallese', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(140, 'Martiniquais', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(141, 'Mauritanian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(142, 'Mauritian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(143, 'Mahoran', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(144, 'Mexican', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(145, 'Micronesian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(146, 'Moldovan', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(147, 'Monacan', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(148, 'Mongolian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(149, 'Montenegrin', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(150, 'Montserratian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(151, 'Moroccan', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(152, 'Mozambican', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(153, 'Myanmarian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(154, 'Namibian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(155, 'Nauruan', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(156, 'Nepalese', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(157, 'Dutch', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(158, 'Dutch Antilier', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(159, 'New Caledonian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(160, 'New Zealander', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(161, 'Nicaraguan', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(162, 'Nigerien', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(163, 'Nigerian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(164, 'Niuean', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(165, 'Norfolk Islander', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(166, 'Northern Marianan', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(167, 'Norwegian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(168, 'Omani', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(169, 'Pakistani', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(170, 'Palauan', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(171, 'Palestinian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(172, 'Panamanian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(173, 'Papua New Guinean', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(174, 'Paraguayan', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(175, 'Peruvian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(176, 'Filipino', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(177, 'Pitcairn Islander', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(178, 'Polish', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(179, 'Portuguese', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(180, 'Puerto Rican', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(181, 'Qatari', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(182, 'Reunionese', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(183, 'Romanian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(184, 'Russian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(185, 'Rwandan', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(186, 'Kittitian/Nevisian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(187, 'St. Martian(French)', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(188, 'St. Martian(Dutch)', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(189, 'St. Pierre and Miquelon', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(190, 'Saint Vincent and the Grenadines', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(191, 'Samoan', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(192, 'Sammarinese', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(193, 'Sao Tomean', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(194, 'Saudi Arabian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(195, 'Senegalese', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(196, 'Serbian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(197, 'Seychellois', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(198, 'Sierra Leonean', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(199, 'Singaporean', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(200, 'Slovak', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(201, 'Slovenian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(202, 'Solomon Island', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(203, 'Somali', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(204, 'South African', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(205, 'South Georgia and the South Sandwich', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(206, 'South Sudanese', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(207, 'Spanish', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(208, 'St. Helenian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(209, 'Sudanese', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(210, 'Surinamese', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(211, 'Svalbardian/Jan Mayenian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(212, 'Swazi', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(213, 'Swedish', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(214, 'Swiss', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(215, 'Syrian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(216, 'Taiwanese', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(217, 'Tajikistani', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(218, 'Tanzanian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(219, 'Thai', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(220, 'Timor-Lestian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(221, 'Togolese', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(222, 'Tokelaian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(223, 'Tongan', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(224, 'Trinidadian/Tobagonian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(225, 'Tunisian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(226, 'Turkish', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(227, 'Turkmen', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(228, 'Turks and Caicos Islands', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(229, 'Tuvaluan', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(230, 'Ugandan', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(231, 'Ukrainian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(232, 'Emirati', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(233, 'British', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(234, 'American', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(235, 'US Minor Outlying Islander', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(236, 'Uruguayan', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(237, 'Uzbek', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(238, 'Vanuatuan', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(239, 'Venezuelan', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(240, 'Vietnamese', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(241, 'American Virgin Islander', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(242, 'Vatican', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(243, 'Wallisian/Futunan', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(244, 'Sahrawian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(245, 'Yemeni', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(246, 'Zambian', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0),
(247, 'Zimbabwean', '2019-05-15 20:27:30', '2019-05-15 20:27:30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_options_payments`
--

CREATE TABLE `tb_options_payments` (
  `id` int(11) NOT NULL,
  `option_name` varchar(300) NOT NULL,
  `typeID` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_options_payments`
--

INSERT INTO `tb_options_payments` (`id`, `option_name`, `typeID`, `create_date`, `update_date`, `isdeleted`) VALUES
(1, 'Bank Account Number', 4, '2019-05-15 20:28:24', '2019-05-15 20:28:24', 0),
(2, 'Bank Name', 1, '2019-05-15 20:28:24', '2019-05-15 20:28:24', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_options_usertypes`
--

CREATE TABLE `tb_options_usertypes` (
  `id` int(11) NOT NULL,
  `option_name` varchar(300) NOT NULL,
  `typeID` int(11) NOT NULL,
  `ref_table` varchar(300) DEFAULT 'none',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0',
  `option_type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_options_usertypes`
--

INSERT INTO `tb_options_usertypes` (`id`, `option_name`, `typeID`, `ref_table`, `create_date`, `update_date`, `isdeleted`, `option_type`) VALUES
(1, 'First Name', 1, 'none', '2019-05-15 20:29:32', '2019-05-15 20:29:32', 0, 'text'),
(2, 'Last Name', 1, 'none', '2019-05-15 20:29:32', '2019-05-15 20:29:32', 0, 'text'),
(3, 'Birth Date', 2, 'none', '2019-05-15 20:29:32', '2019-05-15 20:29:32', 0, 'date'),
(4, 'Gender', 3, 'tb_gender', '2019-05-15 20:29:32', '2019-05-15 20:29:32', 0, 'select'),
(5, 'Nationality', 3, 'tb_nationality', '2019-05-15 20:29:32', '2019-05-15 20:29:32', 0, 'select'),
(6, 'Address', 3, 'tb_address', '2019-05-15 20:29:32', '2019-05-15 20:29:32', 0, 'select');

-- --------------------------------------------------------

--
-- Table structure for table `tb_option_payment_values`
--

CREATE TABLE `tb_option_payment_values` (
  `id` int(11) NOT NULL,
  `optionPaymentID` int(11) NOT NULL,
  `value` varchar(300) NOT NULL,
  `paymentID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `tb_option_payment_values`
--
DELIMITER $$
CREATE TRIGGER `ad_tb_option_payement_value` AFTER DELETE ON `tb_option_payment_values` FOR EACH ROW BEGIN
  INSERT INTO tb_data_log (action, action_time)
  VALUES('A row has been deleted in tb_option_payment_value', NOW());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `ai_tb_option_payment_values` AFTER INSERT ON `tb_option_payment_values` FOR EACH ROW BEGIN
  INSERT INTO tb_data_log (action, action_time)
  VALUES('Data have been inserted in tb_option_payment_values', NOW());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `au_tb_option_payment_values` AFTER UPDATE ON `tb_option_payment_values` FOR EACH ROW BEGIN
  INSERT INTO tb_data_log (action, action_time)
  VALUES('Tb_option_payment_values has been updated', NOW());
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_option_type`
--

CREATE TABLE `tb_option_type` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_option_type`
--

INSERT INTO `tb_option_type` (`id`, `type`, `create_date`, `update_date`, `isdeleted`) VALUES
(1, 'text', '2019-05-15 20:30:23', '2019-05-15 20:30:23', 0),
(2, 'date', '2019-05-15 20:30:23', '2019-05-15 20:30:23', 0),
(3, 'select', '2019-05-15 20:30:23', '2019-05-15 20:30:23', 0),
(4, 'number', '2019-05-15 20:30:23', '2019-05-15 20:30:23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_option_user_values`
--

CREATE TABLE `tb_option_user_values` (
  `id` int(11) NOT NULL,
  `optionUserID` int(11) NOT NULL,
  `value` varchar(300) NOT NULL,
  `userID` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_option_user_values`
--

INSERT INTO `tb_option_user_values` (`id`, `optionUserID`, `value`, `userID`, `create_date`, `update_date`, `isdeleted`) VALUES
(1, 1, 'Habiba', 1, '2019-05-24 14:57:20', '2019-05-24 14:57:20', 0),
(2, 2, 'Hegazy', 1, '2019-05-24 14:58:06', '2019-05-24 14:58:06', 0),
(3, 3, '1998-05-08', 1, '2019-05-24 14:58:06', '2019-05-24 14:58:06', 0),
(4, 1, 'Tessie', 2, '1970-09-03 01:00:04', '2019-05-24 15:01:58', 0),
(5, 2, 'Schuppe', 2, '1995-06-19 15:17:18', '2019-05-24 15:08:37', 0),
(6, 3, '1973-06-09', 2, '2005-03-01 18:51:25', '2019-05-24 15:13:41', 0),
(7, 1, 'Laurianne', 3, '1970-02-11 10:36:39', '2019-05-24 15:01:58', 0),
(8, 2, 'Waelchi', 3, '2004-08-21 18:35:42', '2019-05-24 15:08:37', 0),
(9, 3, '1976-09-08', 3, '1990-11-29 13:35:55', '2019-05-24 15:13:41', 0),
(10, 1, 'Kody', 4, '1990-12-19 13:24:50', '2019-05-24 15:01:58', 0),
(11, 2, 'Pacocha', 4, '1991-09-13 16:32:28', '2019-05-24 15:08:37', 0),
(12, 3, '2001-07-17', 4, '2003-03-28 12:42:14', '2019-05-24 15:13:41', 0),
(13, 1, 'Destinee', 5, '2008-05-02 06:42:15', '2019-05-24 15:01:58', 0),
(14, 2, 'Crona', 5, '2016-04-04 22:22:27', '2019-05-24 15:08:37', 0),
(15, 3, '1996-11-03', 5, '1984-10-25 20:19:37', '2019-05-24 15:13:41', 0),
(16, 1, 'London', 6, '1971-11-17 06:14:24', '2019-05-24 15:01:11', 0),
(17, 2, 'Dickinson', 6, '2016-08-31 20:23:21', '2019-05-24 15:08:37', 0),
(18, 3, '1984-08-03', 6, '2010-06-20 05:36:18', '2019-05-24 15:13:41', 0),
(19, 1, 'Tristin', 7, '1973-02-19 12:28:56', '2019-05-24 15:01:58', 0),
(20, 2, 'Schimmel', 7, '1995-09-29 17:51:44', '2019-05-24 15:08:37', 0),
(21, 3, '2011-04-10', 7, '2012-10-30 07:32:41', '2019-05-24 15:13:41', 0),
(22, 1, 'Mara', 8, '1994-09-05 06:54:01', '2019-05-24 15:01:58', 0),
(23, 2, 'Donnelly', 8, '2009-06-27 02:42:36', '2019-05-24 15:08:37', 0),
(24, 3, '1972-10-11', 8, '1980-01-27 21:16:05', '2019-05-24 15:13:41', 0),
(25, 1, 'Brannon', 9, '1993-06-23 21:35:07', '2019-05-24 15:01:58', 0),
(26, 2, 'Koepp', 9, '2016-02-17 10:46:36', '2019-05-24 15:08:37', 0),
(27, 3, '2006-06-05', 9, '1986-06-20 21:50:46', '2019-05-24 15:13:41', 0),
(28, 1, 'Jon', 10, '2018-09-18 18:59:32', '2019-05-24 15:01:11', 0),
(29, 2, 'West', 10, '2005-09-13 17:07:13', '2019-05-24 15:08:37', 0),
(30, 3, '1980-04-21', 10, '2008-06-28 01:31:11', '2019-05-24 15:13:41', 0),
(31, 1, 'Hildegard', 11, '1981-10-21 16:41:05', '2019-05-24 15:01:58', 0),
(32, 2, 'Wintheiser', 11, '1991-03-30 09:21:32', '2019-05-24 15:08:37', 0),
(33, 3, '1993-09-22', 11, '1971-03-23 04:20:46', '2019-05-24 15:13:41', 0),
(34, 1, 'Paula', 12, '1994-07-13 14:30:19', '2019-05-24 15:01:58', 0),
(35, 2, 'Ernser', 12, '2015-06-04 06:01:34', '2019-05-24 15:08:37', 0),
(36, 3, '1975-01-21', 12, '2003-05-06 11:05:02', '2019-05-24 15:13:41', 0),
(37, 1, 'Kennith', 13, '1991-09-18 16:49:35', '2019-05-24 15:01:58', 0),
(38, 2, 'Greenholt', 13, '1991-05-14 06:19:34', '2019-05-24 15:08:37', 0),
(39, 3, '2004-06-12', 13, '2013-01-29 08:35:46', '2019-05-24 15:13:41', 0),
(40, 1, 'Jess', 14, '2011-03-20 17:52:23', '2019-05-24 15:01:11', 0),
(41, 2, 'Kilback', 14, '2014-03-12 13:50:01', '2019-05-24 15:08:37', 0),
(42, 3, '2010-06-17', 14, '1999-12-25 05:20:15', '2019-05-24 15:13:41', 0),
(43, 1, 'Ross', 15, '1989-01-19 07:15:19', '2019-05-24 15:01:58', 0),
(44, 2, 'Walker', 15, '2009-07-27 17:52:07', '2019-05-24 15:08:37', 0),
(45, 3, '2002-07-31', 15, '1990-04-01 09:06:40', '2019-05-24 15:13:41', 0),
(46, 1, 'Korey', 16, '1982-09-21 13:33:02', '2019-05-24 15:01:58', 0),
(47, 2, 'Fritsch', 16, '1981-05-10 01:56:08', '2019-05-24 15:08:37', 0),
(48, 3, '2017-04-04', 16, '2014-07-12 15:56:47', '2019-05-24 15:13:41', 0),
(49, 1, 'Lue', 17, '2011-02-13 17:47:20', '2019-05-24 15:01:58', 0),
(50, 2, 'Treutel', 17, '1995-06-08 18:08:06', '2019-05-24 15:08:37', 0),
(51, 3, '1994-12-10', 17, '2003-07-18 21:25:37', '2019-05-24 15:13:41', 0),
(52, 1, 'Jerald', 18, '2002-06-18 11:53:17', '2019-05-24 15:01:58', 0),
(53, 2, 'Bruen', 18, '1996-05-29 01:09:26', '2019-05-24 15:08:37', 0),
(54, 3, '1973-03-28', 18, '1980-01-31 19:09:11', '2019-05-24 15:13:41', 0),
(55, 1, 'Newell', 19, '1990-10-16 19:42:48', '2019-05-24 15:01:58', 0),
(56, 2, 'Gislason', 19, '1991-11-03 20:22:11', '2019-05-24 15:08:37', 0),
(57, 3, '1992-05-27', 19, '2003-01-20 23:49:19', '2019-05-24 15:13:41', 0),
(58, 1, 'Florine', 20, '1986-07-26 12:27:26', '2019-05-24 15:01:58', 0),
(59, 2, 'Gusikowski', 20, '1988-01-15 00:43:54', '2019-05-24 15:08:37', 0),
(60, 3, '1987-01-17', 20, '1987-06-10 15:19:43', '2019-05-24 15:13:41', 0),
(61, 1, 'Tess', 21, '2005-01-29 13:22:34', '2019-05-24 15:01:58', 0),
(62, 2, 'Tromp', 21, '2003-08-01 03:34:04', '2019-05-24 15:08:37', 0),
(63, 3, '1975-02-12', 21, '1975-12-20 17:50:25', '2019-05-24 15:13:41', 0),
(64, 1, 'Maureen', 22, '1980-12-30 06:54:55', '2019-05-24 15:01:58', 0),
(65, 2, 'Ruecker', 22, '1980-11-21 06:43:05', '2019-05-24 15:08:37', 0),
(66, 3, '2011-11-04', 22, '2010-04-27 14:30:14', '2019-05-24 15:13:41', 0),
(67, 1, 'Dewayne', 23, '1981-01-05 03:39:19', '2019-05-24 15:01:58', 0),
(68, 2, 'Murray', 23, '1991-08-24 07:25:26', '2019-05-24 15:08:37', 0),
(69, 3, '1986-11-19', 23, '2013-12-30 19:15:32', '2019-05-24 15:13:41', 0),
(70, 1, 'Morgan', 24, '1994-11-14 16:45:07', '2019-05-24 15:01:58', 0),
(71, 2, 'Roberts', 24, '2002-06-24 23:24:43', '2019-05-24 15:08:37', 0),
(72, 3, '2001-02-08', 24, '1993-08-13 01:45:28', '2019-05-24 15:13:41', 0),
(73, 1, 'Trisha', 25, '2015-06-02 18:58:00', '2019-05-24 15:01:11', 0),
(74, 2, 'Prohaska', 25, '2010-10-16 10:35:19', '2019-05-24 15:08:37', 0),
(75, 3, '1986-11-25', 25, '2001-12-14 10:08:08', '2019-05-24 15:13:41', 0),
(76, 1, 'Alford', 26, '1983-09-10 03:59:06', '2019-05-24 15:01:58', 0),
(77, 2, 'Ferry', 26, '2009-10-20 12:17:06', '2019-05-24 15:08:37', 0),
(78, 3, '2005-06-27', 26, '1970-01-30 16:42:13', '2019-05-24 15:13:41', 0),
(79, 1, 'Karlee', 27, '2013-08-22 21:59:59', '2019-05-24 15:01:58', 0),
(80, 2, 'Pouros', 27, '1977-08-29 05:54:10', '2019-05-24 15:08:37', 0),
(81, 3, '1970-02-25', 27, '2008-07-21 21:44:04', '2019-05-24 15:13:41', 0),
(82, 1, 'Layla', 28, '1996-07-09 22:59:07', '2019-05-24 15:01:58', 0),
(83, 2, 'Schumm', 28, '2007-01-10 09:39:34', '2019-05-24 15:08:37', 0),
(84, 3, '2002-06-13', 28, '2015-02-19 21:02:59', '2019-05-24 15:13:41', 0),
(85, 1, 'Lavada', 29, '2014-05-16 06:16:17', '2019-05-24 15:01:58', 0),
(86, 2, 'Padberg', 29, '2018-05-04 09:08:45', '2019-05-24 15:08:37', 0),
(87, 3, '1986-08-06', 29, '1992-08-21 09:32:57', '2019-05-24 15:13:41', 0),
(88, 1, 'Roselyn', 30, '1994-02-28 17:03:17', '2019-05-24 15:01:58', 0),
(89, 2, 'Johnston', 30, '2016-11-07 03:29:12', '2019-05-24 15:08:37', 0),
(90, 3, '2012-03-02', 30, '1970-10-18 03:21:58', '2019-05-24 15:13:41', 0),
(91, 1, 'Lorena', 31, '2000-03-08 05:24:47', '2019-05-24 15:01:58', 0),
(92, 2, 'Schinner', 31, '1986-10-27 12:47:32', '2019-05-24 15:08:37', 0),
(93, 3, '2011-06-26', 31, '2002-12-09 17:05:52', '2019-05-24 15:13:41', 0),
(94, 1, 'Adriel', 32, '2006-12-11 04:39:39', '2019-05-24 15:01:58', 0),
(95, 2, 'Ondricka', 32, '1998-10-12 15:53:15', '2019-05-24 15:08:37', 0),
(96, 3, '1976-11-11', 32, '1984-06-20 13:08:11', '2019-05-24 15:13:41', 0),
(97, 1, 'Jacquelyn', 33, '1973-03-21 07:51:11', '2019-05-24 15:01:58', 0),
(98, 2, 'Bednar', 33, '1992-02-21 20:52:12', '2019-05-24 15:08:37', 0),
(99, 3, '1999-02-14', 33, '1975-01-05 19:08:19', '2019-05-24 15:13:41', 0),
(100, 1, 'Domingo', 34, '1974-12-14 08:11:53', '2019-05-24 15:01:58', 0),
(101, 2, 'Schmitt', 34, '1981-01-04 22:52:37', '2019-05-24 15:08:37', 0),
(102, 3, '1992-07-10', 34, '2000-07-16 19:29:54', '2019-05-24 15:13:41', 0),
(103, 1, 'Kendall', 35, '2010-03-18 20:25:30', '2019-05-24 15:01:58', 0),
(104, 2, 'Casper', 35, '1981-02-08 14:00:16', '2019-05-24 15:08:37', 0),
(105, 3, '1977-10-10', 35, '2000-08-06 22:37:06', '2019-05-24 15:13:41', 0),
(106, 1, 'Vidal', 36, '1979-12-18 09:50:17', '2019-05-24 15:01:11', 0),
(107, 2, 'Lesch', 36, '1985-06-02 16:57:14', '2019-05-24 15:08:37', 0),
(108, 3, '1990-12-14', 36, '2011-12-08 09:58:31', '2019-05-24 15:13:41', 0),
(109, 1, 'Jana', 37, '1976-12-08 13:53:40', '2019-05-24 15:01:58', 0),
(110, 2, 'Kemmer', 37, '2017-03-13 22:16:33', '2019-05-24 15:08:37', 0),
(111, 3, '1975-02-20', 37, '1978-02-01 09:45:48', '2019-05-24 15:13:41', 0),
(112, 1, 'Samantha', 38, '1978-09-19 22:50:35', '2019-05-24 15:01:58', 0),
(113, 2, 'Kutch', 38, '2003-02-10 00:00:52', '2019-05-24 15:08:37', 0),
(114, 3, '1972-04-05', 38, '1999-05-26 14:26:29', '2019-05-24 15:13:41', 0),
(115, 1, 'Rosamond', 39, '2017-12-12 06:33:42', '2019-05-24 15:01:58', 0),
(116, 2, 'Bogan', 39, '2019-03-14 21:15:28', '2019-05-24 15:08:37', 0),
(117, 3, '2001-06-20', 39, '1981-10-03 00:15:21', '2019-05-24 15:13:41', 0),
(118, 1, 'Kenyon', 40, '2017-04-18 01:56:40', '2019-05-24 15:01:58', 0),
(119, 2, 'Oberbrunner', 40, '2007-10-07 12:19:53', '2019-05-24 15:08:37', 0),
(120, 3, '2010-08-27', 40, '2005-08-26 06:51:59', '2019-05-24 15:13:41', 0),
(121, 1, 'Dario', 41, '1999-12-11 09:47:33', '2019-05-24 15:01:11', 0),
(122, 2, 'Moen', 41, '1983-02-17 17:02:29', '2019-05-24 15:08:37', 0),
(123, 3, '1991-12-29', 41, '1995-11-17 02:37:13', '2019-05-24 15:13:41', 0),
(124, 1, 'Leonor', 42, '2000-05-28 07:05:58', '2019-05-24 15:01:58', 0),
(125, 2, 'Macejkovic', 42, '2010-01-27 00:02:49', '2019-05-24 15:08:37', 0),
(126, 3, '2007-09-23', 42, '1979-10-08 09:07:00', '2019-05-24 15:13:41', 0),
(127, 1, 'Avis', 43, '2010-10-27 05:19:03', '2019-05-24 15:01:58', 0),
(128, 2, 'Dickinson', 43, '2017-10-17 09:06:29', '2019-05-24 15:08:37', 0),
(129, 3, '2017-11-22', 43, '2000-02-04 03:09:18', '2019-05-24 15:13:41', 0),
(130, 1, 'Willy', 44, '1981-02-11 14:49:25', '2019-05-24 15:01:58', 0),
(131, 2, 'VonRueden', 44, '1990-08-19 20:54:20', '2019-05-24 15:08:37', 0),
(132, 3, '2016-12-11', 44, '2018-08-25 14:54:58', '2019-05-24 15:13:41', 0),
(133, 1, 'Murray', 45, '2002-11-22 04:19:24', '2019-05-24 15:01:58', 0),
(134, 2, 'Larkin', 45, '1991-05-31 16:59:34', '2019-05-24 15:08:37', 0),
(135, 3, '1996-04-24', 45, '1982-07-25 15:18:03', '2019-05-24 15:13:41', 0),
(136, 1, 'Kaylee', 46, '2006-01-05 06:08:50', '2019-05-24 15:01:58', 0),
(137, 2, 'Reichel', 46, '2000-11-27 06:17:52', '2019-05-24 15:08:37', 0),
(138, 3, '1979-11-16', 46, '2014-10-22 19:05:54', '2019-05-24 15:13:41', 0),
(139, 1, 'Richmond', 47, '2019-04-21 10:55:49', '2019-05-24 15:01:58', 0),
(140, 2, 'Boyer', 47, '2003-06-08 16:22:45', '2019-05-24 15:08:37', 0),
(141, 3, '1987-09-30', 47, '1988-08-21 02:36:55', '2019-05-24 15:13:41', 0),
(142, 1, 'Sonia', 48, '1983-11-07 19:29:58', '2019-05-24 15:01:58', 0),
(143, 2, 'Wunsch', 48, '2016-11-14 21:10:20', '2019-05-24 15:08:37', 0),
(144, 3, '2001-04-06', 48, '1985-09-25 17:29:57', '2019-05-24 15:13:41', 0),
(145, 1, 'Daisy', 49, '1998-03-11 01:31:35', '2019-05-24 15:01:11', 0),
(146, 2, 'Connelly', 49, '2004-02-19 21:51:11', '2019-05-24 15:08:37', 0),
(147, 3, '1989-10-17', 49, '2007-08-19 10:03:39', '2019-05-24 15:13:41', 0),
(148, 1, 'Vilma', 50, '2005-07-11 19:49:16', '2019-05-24 15:01:58', 0),
(149, 2, 'Waters', 50, '1989-07-23 11:34:24', '2019-05-24 15:08:37', 0),
(150, 3, '1977-06-05', 50, '1976-02-23 07:22:39', '2019-05-24 15:13:41', 0),
(151, 1, 'Deanna', 51, '2008-06-01 21:59:31', '2019-05-24 15:01:58', 0),
(152, 2, 'Stark', 51, '2013-08-16 21:19:47', '2019-05-24 15:08:37', 0),
(153, 3, '1991-06-21', 51, '1974-03-25 12:27:37', '2019-05-24 15:13:41', 0),
(154, 1, 'Vesta', 52, '2006-08-12 11:00:38', '2019-05-24 15:01:58', 0),
(155, 2, 'Flatley', 52, '2003-06-14 20:28:54', '2019-05-24 15:08:37', 0),
(156, 3, '1988-07-04', 52, '1979-10-29 01:23:36', '2019-05-24 15:13:41', 0),
(157, 1, 'Rebekah', 53, '2001-10-17 01:46:32', '2019-05-24 15:01:58', 0),
(158, 2, 'Zulauf', 53, '2006-01-22 01:18:47', '2019-05-24 15:08:37', 0),
(159, 3, '1995-09-29', 53, '2013-09-17 23:17:38', '2019-05-24 15:13:41', 0),
(160, 1, 'Elmo', 54, '1971-09-15 08:54:14', '2019-05-24 15:01:58', 0),
(161, 2, 'Goldner', 54, '1977-09-25 02:52:33', '2019-05-24 15:08:37', 0),
(162, 3, '1993-02-25', 54, '2011-10-18 22:23:33', '2019-05-24 15:13:41', 0),
(163, 1, 'Bernard', 55, '1993-09-06 16:02:49', '2019-05-24 15:01:58', 0),
(164, 2, 'Lemke', 55, '2012-05-27 18:04:25', '2019-05-24 15:08:37', 0),
(165, 3, '1986-09-06', 55, '1986-01-16 06:46:34', '2019-05-24 15:13:41', 0),
(166, 1, 'Andre', 56, '2001-10-08 11:11:04', '2019-05-24 15:01:58', 0),
(167, 2, 'Welch', 56, '2000-07-18 10:28:11', '2019-05-24 15:08:37', 0),
(168, 3, '1976-10-16', 56, '2011-01-06 10:37:02', '2019-05-24 15:13:41', 0),
(169, 1, 'Christa', 57, '1976-09-04 06:44:47', '2019-05-24 15:01:58', 0),
(170, 2, 'Durgan', 57, '1997-02-21 00:12:31', '2019-05-24 15:08:37', 0),
(171, 3, '1999-01-29', 57, '1987-04-07 02:31:31', '2019-05-24 15:13:41', 0),
(172, 1, 'Tillman', 58, '2000-06-26 18:10:03', '2019-05-24 15:01:58', 0),
(173, 2, 'Erdman', 58, '1976-02-22 16:47:52', '2019-05-24 15:08:37', 0),
(174, 3, '1975-06-22', 58, '1993-06-22 19:46:49', '2019-05-24 15:13:41', 0),
(175, 1, 'Adolf', 59, '1983-08-11 04:11:21', '2019-05-24 15:01:58', 0),
(176, 2, 'Greenholt', 59, '1984-07-28 23:56:35', '2019-05-24 15:08:37', 0),
(177, 3, '2014-11-17', 59, '2004-08-15 09:49:24', '2019-05-24 15:13:41', 0),
(178, 1, 'Sally', 60, '2010-09-05 09:37:33', '2019-05-24 15:01:58', 0),
(179, 2, 'Ledner', 60, '1972-08-20 04:40:31', '2019-05-24 15:08:37', 0),
(180, 3, '1994-05-15', 60, '2017-04-16 18:30:59', '2019-05-24 15:13:41', 0),
(181, 1, 'Jensen', 61, '1991-09-03 17:43:48', '2019-05-24 15:01:58', 0),
(182, 2, 'Bechtelar', 61, '1999-06-24 17:55:19', '2019-05-24 15:08:37', 0),
(183, 3, '1996-04-28', 61, '2012-07-19 16:14:39', '2019-05-24 15:13:41', 0),
(184, 1, 'Charlie', 62, '2016-06-02 01:08:45', '2019-05-24 15:01:11', 0),
(185, 2, 'Crooks', 62, '1992-06-30 05:34:11', '2019-05-24 15:08:37', 0),
(186, 3, '2013-08-31', 62, '1987-12-04 21:25:07', '2019-05-24 15:13:41', 0),
(187, 1, 'Adan', 63, '1977-06-06 15:57:54', '2019-05-24 15:01:58', 0),
(188, 2, 'Herman', 63, '1990-10-07 14:59:27', '2019-05-24 15:08:37', 0),
(189, 3, '2019-01-28', 63, '1993-08-25 02:35:44', '2019-05-24 15:13:41', 0),
(190, 1, 'Margaretta', 64, '1984-01-21 17:42:41', '2019-05-24 15:01:58', 0),
(191, 2, 'Osinski', 64, '1995-09-04 22:04:12', '2019-05-24 15:08:37', 0),
(192, 3, '2006-07-16', 64, '2000-12-30 09:11:14', '2019-05-24 15:13:41', 0),
(193, 1, 'Anais', 65, '1970-12-29 04:14:57', '2019-05-24 15:01:58', 0),
(194, 2, 'Lockman', 65, '1976-03-11 00:29:36', '2019-05-24 15:08:37', 0),
(195, 3, '1989-08-09', 65, '1973-04-11 08:05:20', '2019-05-24 15:13:41', 0),
(196, 1, 'Jordi', 66, '1974-01-08 04:33:08', '2019-05-24 15:01:58', 0),
(197, 2, 'Medhurst', 66, '2000-02-08 04:42:00', '2019-05-24 15:08:37', 0),
(198, 3, '1987-06-01', 66, '2011-11-30 16:38:26', '2019-05-24 15:13:41', 0),
(199, 1, 'Roxane', 67, '2003-01-18 04:41:07', '2019-05-24 15:01:58', 0),
(200, 2, 'Hirthe', 67, '2000-02-12 06:37:21', '2019-05-24 15:08:37', 0),
(201, 3, '1973-04-02', 67, '2012-02-08 04:55:48', '2019-05-24 15:13:41', 0),
(202, 1, 'Jerel', 68, '2017-09-24 20:56:51', '2019-05-24 15:01:58', 0),
(203, 2, 'Glover', 68, '1989-04-19 18:37:35', '2019-05-24 15:08:37', 0),
(204, 3, '2015-02-05', 68, '1986-09-12 01:45:28', '2019-05-24 15:13:41', 0),
(205, 1, 'Breana', 69, '1985-05-31 22:31:15', '2019-05-24 15:01:58', 0),
(206, 2, 'Christiansen', 69, '1997-02-13 12:53:45', '2019-05-24 15:08:37', 0),
(207, 3, '2001-09-22', 69, '2002-06-29 06:30:15', '2019-05-24 15:13:41', 0),
(208, 1, 'Edwina', 70, '2010-01-27 19:07:52', '2019-05-24 15:01:58', 0),
(209, 2, 'Powlowski', 70, '1993-08-20 03:28:48', '2019-05-24 15:08:37', 0),
(210, 3, '2008-01-25', 70, '1982-09-19 17:46:42', '2019-05-24 15:13:41', 0),
(211, 1, 'Hattie', 71, '1973-11-07 16:16:00', '2019-05-24 15:01:58', 0),
(212, 2, 'Collins', 71, '1989-01-18 19:11:13', '2019-05-24 15:08:37', 0),
(213, 3, '1973-07-01', 71, '2002-10-16 17:37:21', '2019-05-24 15:13:41', 0),
(214, 1, 'Lucile', 72, '2005-01-14 09:57:44', '2019-05-24 15:01:11', 0),
(215, 2, 'Robel', 72, '1973-09-30 22:22:45', '2019-05-24 15:08:37', 0),
(216, 3, '2013-06-11', 72, '1989-07-28 17:38:42', '2019-05-24 15:13:41', 0),
(217, 1, 'Joaquin', 73, '1997-10-06 10:57:47', '2019-05-24 15:01:58', 0),
(218, 2, 'Sanford', 73, '1973-01-31 20:46:36', '2019-05-24 15:08:37', 0),
(219, 3, '1987-12-04', 73, '2010-02-05 05:07:25', '2019-05-24 15:13:41', 0),
(220, 1, 'Watson', 74, '1983-03-27 03:34:03', '2019-05-24 15:01:58', 0),
(221, 2, 'Romaguera', 74, '1971-04-14 19:01:12', '2019-05-24 15:08:37', 0),
(222, 3, '2012-11-11', 74, '2005-11-08 00:27:58', '2019-05-24 15:13:41', 0),
(223, 1, 'Chaim', 75, '2007-07-30 16:23:56', '2019-05-24 15:01:58', 0),
(224, 2, 'Bahringer', 75, '1983-09-28 13:57:48', '2019-05-24 15:08:37', 0),
(225, 3, '1994-04-29', 75, '1983-03-15 12:16:45', '2019-05-24 15:13:41', 0),
(226, 1, 'Wallace', 76, '2012-11-15 22:13:55', '2019-05-24 15:01:58', 0),
(227, 2, 'Hirthe', 76, '2007-11-02 02:37:32', '2019-05-24 15:08:37', 0),
(228, 3, '2011-09-15', 76, '2017-08-19 14:36:29', '2019-05-24 15:13:41', 0),
(229, 1, 'Elliot', 77, '1979-11-12 20:14:50', '2019-05-24 15:01:58', 0),
(230, 2, 'Hessel', 77, '2014-07-29 00:50:08', '2019-05-24 15:08:37', 0),
(231, 3, '2019-04-20', 77, '2003-09-02 00:59:21', '2019-05-24 15:13:41', 0),
(232, 1, 'Angelina', 78, '1980-10-07 00:47:20', '2019-05-24 15:01:58', 0),
(233, 2, 'Kuvalis', 78, '1986-06-27 10:29:06', '2019-05-24 15:08:37', 0),
(234, 3, '2004-04-07', 78, '2016-11-17 12:16:28', '2019-05-24 15:13:41', 0),
(235, 1, 'Juwan', 79, '1974-03-09 02:29:16', '2019-05-24 15:01:58', 0),
(236, 2, 'Tillman', 79, '1983-12-29 03:44:23', '2019-05-24 15:08:37', 0),
(237, 3, '1971-02-21', 79, '2017-11-25 18:06:32', '2019-05-24 15:13:41', 0),
(238, 1, 'Evans', 80, '2003-07-05 18:12:44', '2019-05-24 15:01:58', 0),
(239, 2, 'Graham', 80, '1992-08-10 23:12:29', '2019-05-24 15:08:37', 0),
(240, 3, '2005-10-12', 80, '2009-10-28 00:33:32', '2019-05-24 15:13:41', 0),
(241, 1, 'Adaline', 81, '1970-04-10 22:50:17', '2019-05-24 15:01:58', 0),
(242, 2, 'Powlowski', 81, '1985-10-27 21:31:51', '2019-05-24 15:08:37', 0),
(243, 3, '1996-11-16', 81, '2017-06-29 07:45:13', '2019-05-24 15:13:41', 0),
(244, 1, 'Velva', 82, '2018-05-17 11:30:21', '2019-05-24 15:01:58', 0),
(245, 2, 'Schultz', 82, '2000-01-30 18:28:12', '2019-05-24 15:08:37', 0),
(246, 3, '1996-08-26', 82, '2004-10-19 16:34:04', '2019-05-24 15:13:41', 0),
(247, 1, 'Ansley', 83, '1999-12-17 09:48:41', '2019-05-24 15:01:58', 0),
(248, 2, 'Gibson', 83, '2008-06-23 14:41:38', '2019-05-24 15:08:37', 0),
(249, 3, '2007-01-29', 83, '1975-10-28 07:13:33', '2019-05-24 15:13:41', 0),
(250, 1, 'Retta', 84, '1996-01-23 21:51:35', '2019-05-24 15:01:58', 0),
(251, 2, 'Schaden', 84, '2006-11-27 17:26:33', '2019-05-24 15:08:37', 0),
(252, 3, '1972-12-03', 84, '2015-05-20 22:36:18', '2019-05-24 15:13:41', 0),
(253, 1, 'Ronaldo', 85, '1993-04-01 02:00:17', '2019-05-24 15:01:58', 0),
(254, 2, 'Dibbert', 85, '2005-03-27 21:05:04', '2019-05-24 15:08:37', 0),
(255, 3, '1982-03-03', 85, '1980-05-31 10:11:04', '2019-05-24 15:13:41', 0),
(256, 1, 'Else', 86, '1981-11-29 18:00:40', '2019-05-24 15:01:58', 0),
(257, 2, 'Deckow', 86, '2004-09-23 19:41:33', '2019-05-24 15:08:37', 0),
(258, 3, '2008-02-08', 86, '1975-11-06 23:40:42', '2019-05-24 15:13:41', 0),
(259, 1, 'Ryann', 87, '1998-11-17 20:40:39', '2019-05-24 15:01:58', 0),
(260, 2, 'Crist', 87, '1984-05-01 11:17:45', '2019-05-24 15:08:37', 0),
(261, 3, '1990-07-16', 87, '1994-12-01 05:04:01', '2019-05-24 15:13:41', 0),
(262, 1, 'Clarissa', 88, '1971-10-21 22:11:37', '2019-05-24 15:01:58', 0),
(263, 2, 'Feeney', 88, '1974-02-07 15:09:02', '2019-05-24 15:08:37', 0),
(264, 3, '1988-11-29', 88, '1989-10-14 03:43:20', '2019-05-24 15:13:41', 0),
(265, 1, 'Meta', 89, '2006-01-05 08:07:14', '2019-05-24 15:01:58', 0),
(266, 2, 'Fadel', 89, '2013-07-15 10:57:35', '2019-05-24 15:08:37', 0),
(267, 3, '1972-02-25', 89, '2001-07-30 00:20:28', '2019-05-24 15:13:41', 0),
(268, 1, 'Jakob', 90, '1995-11-27 08:04:59', '2019-05-24 15:01:58', 0),
(269, 2, 'Bogan', 90, '1994-03-16 07:56:15', '2019-05-24 15:08:37', 0),
(270, 3, '1996-09-14', 90, '1980-03-26 04:06:50', '2019-05-24 15:13:41', 0),
(271, 1, 'Rosella', 91, '1994-12-19 17:11:18', '2019-05-24 15:01:58', 0),
(272, 2, 'Kris', 91, '1988-01-01 13:06:23', '2019-05-24 15:08:37', 0),
(273, 3, '2002-06-01', 91, '1980-09-10 16:05:06', '2019-05-24 15:13:41', 0),
(274, 1, 'Alisha', 92, '2012-01-29 10:08:52', '2019-05-24 15:01:58', 0),
(275, 2, 'Steuber', 92, '1979-01-22 02:39:00', '2019-05-24 15:08:37', 0),
(276, 3, '2001-11-26', 92, '1979-11-06 18:58:14', '2019-05-24 15:13:41', 0),
(277, 1, 'Shana', 93, '1989-03-24 02:32:57', '2019-05-24 15:01:58', 0),
(278, 2, 'Turner', 93, '1984-07-30 12:57:47', '2019-05-24 15:08:37', 0),
(279, 3, '1983-10-04', 93, '1997-04-16 08:03:35', '2019-05-24 15:13:41', 0),
(280, 1, 'Maeve', 94, '1973-04-20 15:10:30', '2019-05-24 15:01:58', 0),
(281, 2, 'Sauer', 94, '2016-04-15 05:59:28', '2019-05-24 15:08:37', 0),
(282, 3, '1975-01-26', 94, '1970-05-21 18:07:21', '2019-05-24 15:13:41', 0),
(283, 1, 'Quincy', 95, '2002-08-06 04:36:17', '2019-05-24 15:01:58', 0),
(284, 2, 'Johns', 95, '2011-11-15 14:07:31', '2019-05-24 15:08:37', 0),
(285, 3, '1996-07-02', 95, '1971-02-09 03:06:03', '2019-05-24 15:13:41', 0),
(286, 1, 'Lafayette', 96, '1978-07-06 18:40:12', '2019-05-24 15:01:58', 0),
(287, 2, 'Stanton', 96, '1993-07-18 06:21:35', '2019-05-24 15:08:37', 0),
(288, 3, '2002-05-21', 96, '1975-01-20 18:24:49', '2019-05-24 15:13:41', 0),
(289, 1, 'Shayne', 97, '1975-12-25 11:20:12', '2019-05-24 15:01:11', 0),
(290, 2, 'Medhurst', 97, '2014-12-27 00:27:44', '2019-05-24 15:08:37', 0),
(291, 3, '1996-09-04', 97, '1990-08-14 16:44:36', '2019-05-24 15:13:41', 0),
(292, 1, 'Johann', 98, '1986-07-26 14:07:43', '2019-05-24 15:01:58', 0),
(293, 2, 'Mante', 98, '1993-02-09 08:54:16', '2019-05-24 15:08:37', 0),
(294, 3, '2019-02-23', 98, '1975-07-24 15:42:15', '2019-05-24 15:13:41', 0),
(295, 1, 'Kaya', 99, '1989-04-24 23:56:08', '2019-05-24 15:01:58', 0),
(296, 2, 'Crooks', 99, '2007-02-22 19:23:18', '2019-05-24 15:08:37', 0),
(297, 3, '1981-07-31', 99, '1990-05-17 17:48:31', '2019-05-24 15:13:41', 0),
(298, 1, 'Scot', 100, '1995-10-19 03:12:19', '2019-05-24 15:01:11', 0),
(299, 2, 'Lakin', 100, '1984-06-10 02:49:59', '2019-05-24 15:08:37', 0),
(300, 3, '1983-12-19', 100, '1985-06-29 22:33:35', '2019-05-24 15:13:41', 0),
(301, 1, 'Aisha', 101, '1978-02-02 23:03:27', '2019-05-24 15:01:11', 0),
(302, 2, 'McLaughlin', 101, '2000-03-10 05:16:26', '2019-05-24 15:08:37', 0),
(303, 3, '1985-07-03', 101, '1980-08-18 01:50:17', '2019-05-24 15:13:41', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pages`
--

CREATE TABLE `tb_pages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `parent` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pages`
--

INSERT INTO `tb_pages` (`id`, `name`, `class_name`, `parent`, `create_date`, `update_date`, `isdeleted`) VALUES
(1, 'Dashboard', 'dashboard', 0, '2019-05-15 20:30:58', '2019-05-15 20:30:58', 0),
(2, 'Foundation Members', 'foundation_members', 0, '2019-05-15 20:30:58', '2019-05-15 20:30:58', 0),
(3, 'Insert Member', 'insert_member_form', 2, '2019-05-15 20:30:58', '2019-05-15 20:30:58', 0),
(4, 'List Mmebers', 'list_members', 2, '2019-05-15 20:30:58', '2019-05-15 20:30:58', 0),
(5, 'Update Member', 'update_member_form', 4, '2019-05-15 20:30:58', '2019-05-15 20:30:58', 0),
(6, 'Logs', 'logg', 0, '2019-05-15 20:30:58', '2019-05-15 20:30:58', 0),
(7, 'Notification', 'notification', 0, '2019-05-15 20:30:58', '2019-05-15 20:30:58', 0),
(8, 'Manual Notification', 'manual_notification', 7, '2019-05-15 20:30:58', '2019-05-15 20:30:58', 0),
(9, 'Email Form', 'email_form', 8, '2019-05-15 20:30:58', '2019-05-15 20:30:58', 0),
(10, 'Donation', 'donation', 0, '2019-05-15 20:30:58', '2019-05-15 20:30:58', 0),
(11, 'Requested Donations', 'requested_donations', 10, '2019-05-15 20:30:58', '2019-05-15 20:30:58', 0),
(12, 'Paid Donations', 'paid_donations', 10, '2019-05-15 20:30:58', '2019-05-15 20:30:58', 0),
(13, 'Settings', 'settings', 0, '2019-05-15 20:30:58', '2019-05-15 20:30:58', 0),
(14, 'Projects', 'projects', 0, '2019-05-15 20:30:58', '2019-05-15 20:30:58', 0),
(15, 'Insert Project', 'insert_projects_form', 14, '2019-05-15 20:30:58', '2019-05-15 20:30:58', 0),
(16, 'List Projects', 'list_projects', 14, '2019-05-15 20:30:58', '2019-05-15 20:30:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_page_components`
--

CREATE TABLE `tb_page_components` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `html` text NOT NULL,
  `position` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_page_components`
--

INSERT INTO `tb_page_components` (`id`, `name`, `html`, `position`, `create_date`, `update_date`, `isdeleted`) VALUES
(6, 'Top Navbar', '<nav class=\"navbar navbar-expand-lg\">\r\n                <div class=\"container-fluid d-flex align-items-center justify-content-between\">\r\n                    <div class=\"navbar-header\"><a href=\"profile.php\" class=\"navbar-brand\">\r\n                            <div class=\"brand-text brand-big visible text-uppercase\"><strong class=\"text-primary\">Water</strong><strong>Foundation</strong></div>\r\n                            <div class=\"brand-text brand-sm\"><strong class=\"text-primary\">W</strong><strong>F</strong></div></a>\r\n                        <!--<button class=\"sidebar-toggle\"><i class=\"fa fa-long-arrow-left\"></i></button>-->\r\n                    </div>\r\n                    <ul class=\"right-menu list-inline no-margin-bottom\">\r\n\r\n\r\n                        <li class=\"list-item logout\" style=\"display: inline-block;\">\r\n                        	<a id=\"lang_en\" href=\"../controller/switch_lang.php?lang=1\" class=\"nav-link\" style=\"display: inline-block;\">EN</a>\r\n                        	<a id=\"Lang_ar\" href=\"../controller/switch_lang.php?lang=2\" class=\"nav-link\" style=\"display: inline-block;\">AR</a>\r\n                            <a id=\"logout\" href=\"login.php\" class=\"nav-link\" style=\"display: inline-block;\">Logout <i class=\"icon-logout\"></i></a>\r\n                        </li>\r\n                    </ul>\r\n                </div>\r\n            </nav>', 1, '2019-05-15 20:31:15', '2019-05-21 18:28:51', 0),
(7, 'side Navbar', '            <!-- Sidebar Navigation-->\n            <nav id=\"sidebar\">\n                <!-- Sidebar Header-->\n                <div class=\"sidebar-header d-flex align-items-center\">\n\n<script>\n\n$.ajax({\n                    url: \'../controller/html_pages/sidebar_header.php\',\n                    type: \'POST\',\n                    dataType: \"JSON\",\n                    success: function(data) {\n\n                        $(\'#user_name\').append(data[0]);\n                        $(\'#user_type\').append(data[2]);\n                        $(\'#profile_img\').attr(\"src\", data[1]);\n                        \n                    },\n                    error: function(data){\n                        console.log(data);\n                    }\n                });\n\n</script>\n\n                    <div class=\"avatar\"><img id=\'profile_img\' src=\"\" alt=\"...\" class=\"img-fluid rounded-circle\"></div>\n                    <div class=\"title\">\n                        <h1 class=\"h5\" id=\'user_name\'></h1>\n                        <p id=\'user_type\'></p>\n                    </div>\n                </div>\n                <!-- Sidebar Navidation Menus-->\n                <ul id=\"list-unstyled\">\n\n                </ul>\n            </nav> <script>  $(document).ready( function() {\n\n                if ( $(\"#list-unstyled\").html().length > 0 ) {\n\n                    $.ajax({\n                        url: \'../controller/html_pages/list_side_nav.php\',\n                        type: \'POST\',\n                        dataType: \"HTML\",\n                        success: function(data) {\n\n                            var xx = document.getElementById(\"list-unstyled\");\n                            xx.innerHTML+= data;\n\n                        },\n                        error: function(data){\n                            console.log(data);\n                        }\n                    });\n                }\n\n            }); </script>', 2, '2019-05-15 20:31:15', '2019-05-15 20:31:15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_page_icon`
--

CREATE TABLE `tb_page_icon` (
  `id` int(11) NOT NULL,
  `icon_code` varchar(100) NOT NULL,
  `pageID` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_page_icon`
--

INSERT INTO `tb_page_icon` (`id`, `icon_code`, `pageID`, `create_date`, `update_date`, `isdeleted`) VALUES
(1, 'icon-dashboard', 1, '2019-05-15 20:31:37', '2019-05-15 20:31:37', 0),
(2, 'fas fa-sync-alt', 6, '2019-05-15 20:31:37', '2019-05-15 20:31:37', 0),
(3, 'fas fa fa-users', 2, '2019-05-15 20:31:37', '2019-05-15 20:31:37', 0),
(4, 'fa fa-envelope-open', 7, '2019-05-15 20:31:37', '2019-05-15 20:31:37', 0),
(5, 'fas fa-donate', 10, '2019-05-15 20:31:37', '2019-05-15 20:31:37', 0),
(6, 'fas fa-fw fa-cog', 13, '2019-05-15 20:31:37', '2019-05-15 20:31:37', 0),
(7, 'fas fa-tasks', 14, '2019-05-15 20:31:37', '2019-05-15 20:31:37', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_payment_method`
--

CREATE TABLE `tb_payment_method` (
  `id` int(11) NOT NULL,
  `method_name` varchar(300) NOT NULL,
  `method_cost` int(11) NOT NULL,
  `minimum_amount` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_payment_method`
--

INSERT INTO `tb_payment_method` (`id`, `method_name`, `method_cost`, `minimum_amount`, `create_date`, `update_date`, `isdeleted`) VALUES
(1, 'Offline Payment', 10, 100, '2019-05-15 20:32:00', '2019-05-16 19:37:14', 0),
(2, 'Bank Transfer', 0, 40, '2019-05-15 20:32:00', '2019-05-24 05:08:30', 0),
(3, 'Fawry', 3, 30, '2019-05-24 05:07:44', '2019-05-24 05:07:44', 0),
(4, 'Vodafone Cash', 5, 20, '2019-05-24 05:08:23', '2019-05-24 05:08:23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_phone_numbers`
--

CREATE TABLE `tb_phone_numbers` (
  `id` int(11) NOT NULL,
  `number` int(25) NOT NULL,
  `userID` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_phone_numbers`
--

INSERT INTO `tb_phone_numbers` (`id`, `number`, `userID`, `create_date`, `update_date`, `isdeleted`) VALUES
(1, 1094586906, 1, '2019-05-24 05:10:01', '2019-05-24 05:10:06', 0),
(2, 1103188881, 2, '1972-06-25 16:50:03', '2019-05-24 14:39:58', 0),
(3, 2147483647, 3, '1998-08-09 04:12:27', '2019-05-24 14:39:58', 0),
(4, 2147483647, 4, '1993-02-17 11:48:44', '2019-05-24 14:39:58', 0),
(5, 1429078506, 5, '2015-09-22 17:08:26', '2019-05-24 14:39:58', 0),
(6, 2147483647, 6, '1999-01-29 07:09:00', '2019-05-24 14:39:58', 0),
(7, 2147483647, 7, '2003-04-14 13:39:34', '2019-05-24 14:39:58', 0),
(8, 2147483647, 8, '1987-07-14 22:10:16', '2019-05-24 14:39:58', 0),
(9, 2147483647, 9, '1984-02-17 18:07:41', '2019-05-24 14:39:58', 0),
(10, 182496077, 10, '1982-09-24 22:34:06', '2019-05-24 14:39:58', 0),
(11, 2147483647, 11, '1992-03-27 22:17:08', '2019-05-24 14:39:58', 0),
(12, 2147483647, 12, '1995-09-24 10:07:47', '2019-05-24 14:39:58', 0),
(13, 2147483647, 13, '1994-03-13 07:49:54', '2019-05-24 14:39:58', 0),
(14, 2147483647, 14, '2012-11-18 12:20:24', '2019-05-24 14:39:58', 0),
(15, 1916014442, 15, '2017-06-18 16:58:38', '2019-05-24 14:39:58', 0),
(16, 2147483647, 16, '1990-12-08 11:04:29', '2019-05-24 14:39:58', 0),
(17, 2147483647, 17, '2011-04-11 08:36:13', '2019-05-24 14:39:58', 0),
(18, 2147483647, 18, '1998-08-27 01:42:54', '2019-05-24 14:39:58', 0),
(19, 2112065565, 19, '1987-11-23 10:18:36', '2019-05-24 14:39:58', 0),
(20, 1775133872, 20, '1987-08-14 20:53:15', '2019-05-24 14:39:58', 0),
(21, 2147483647, 21, '2004-07-08 03:43:45', '2019-05-24 14:39:58', 0),
(22, 2147483647, 22, '1999-02-22 04:56:27', '2019-05-24 14:39:58', 0),
(23, 2147483647, 23, '2014-06-22 22:01:51', '2019-05-24 14:39:58', 0),
(24, 2147483647, 24, '1975-01-27 03:29:41', '2019-05-24 14:39:58', 0),
(25, 2147483647, 25, '2010-04-03 21:08:24', '2019-05-24 14:39:58', 0),
(26, 1383335638, 26, '1972-03-08 18:01:33', '2019-05-24 14:39:58', 0),
(27, 2147483647, 27, '2015-05-06 19:44:24', '2019-05-24 14:39:58', 0),
(28, 2147483647, 28, '1980-09-29 06:08:03', '2019-05-24 14:39:58', 0),
(29, 1149089244, 29, '2002-09-23 14:08:09', '2019-05-24 14:39:58', 0),
(30, 2147483647, 30, '1984-01-01 11:44:57', '2019-05-24 14:39:58', 0),
(31, 2147483647, 31, '1998-10-26 23:16:04', '2019-05-24 14:39:58', 0),
(32, 2147483647, 32, '2015-01-06 12:49:05', '2019-05-24 14:39:58', 0),
(33, 2147483647, 33, '1999-07-06 20:35:25', '2019-05-24 14:39:58', 0),
(34, 768372166, 34, '1998-05-27 16:48:36', '2019-05-24 14:39:58', 0),
(35, 2147483647, 35, '1981-12-27 18:38:17', '2019-05-24 14:39:58', 0),
(36, 2147483647, 36, '2003-06-18 00:00:51', '2019-05-24 14:39:58', 0),
(37, 1599961288, 37, '2017-02-13 05:27:00', '2019-05-24 14:39:58', 0),
(38, 2147483647, 38, '1986-08-03 22:20:10', '2019-05-24 14:39:58', 0),
(39, 2147483647, 39, '1979-12-02 15:55:52', '2019-05-24 14:39:58', 0),
(40, 2147483647, 40, '1984-11-17 06:41:10', '2019-05-24 14:39:58', 0),
(41, 2147483647, 41, '1970-10-31 02:57:44', '2019-05-24 14:39:58', 0),
(42, 2147483647, 42, '2007-03-29 01:06:39', '2019-05-24 14:39:58', 0),
(43, 2147483647, 43, '2010-12-08 17:51:05', '2019-05-24 14:39:58', 0),
(44, 1224700661, 44, '2008-10-18 18:27:54', '2019-05-24 14:39:58', 0),
(45, 2147483647, 45, '2001-05-27 12:58:12', '2019-05-24 14:39:58', 0),
(46, 2147483647, 46, '1992-06-27 19:21:20', '2019-05-24 14:39:58', 0),
(47, 2147483647, 47, '1995-11-11 20:57:40', '2019-05-24 14:39:58', 0),
(48, 2147483647, 48, '2017-03-23 23:35:33', '2019-05-24 14:39:58', 0),
(49, 2147483647, 49, '1971-09-15 10:38:49', '2019-05-24 14:39:58', 0),
(50, 2147483647, 50, '2017-05-26 16:10:03', '2019-05-24 14:39:58', 0),
(51, 1343921890, 51, '2002-07-21 05:22:14', '2019-05-24 14:39:58', 0),
(52, 2147483647, 52, '2003-07-17 20:22:52', '2019-05-24 14:39:58', 0),
(53, 2147483647, 53, '2004-10-10 19:30:44', '2019-05-24 14:39:58', 0),
(54, 2147483647, 54, '1988-02-12 10:04:31', '2019-05-24 14:39:58', 0),
(55, 2147483647, 55, '1979-02-16 07:10:17', '2019-05-24 14:39:58', 0),
(56, 2147483647, 56, '2015-05-25 12:57:29', '2019-05-24 14:39:58', 0),
(57, 726128855, 57, '2009-06-27 11:08:46', '2019-05-24 14:39:58', 0),
(58, 2147483647, 58, '1970-05-14 10:23:49', '2019-05-24 14:39:58', 0),
(59, 2147483647, 59, '2002-06-09 19:03:13', '2019-05-24 14:39:58', 0),
(60, 1348773028, 60, '2004-07-06 10:37:15', '2019-05-24 14:39:58', 0),
(61, 2147483647, 61, '1983-05-22 21:48:47', '2019-05-24 14:39:58', 0),
(62, 2147483647, 62, '1972-12-28 04:40:59', '2019-05-24 14:39:58', 0),
(63, 2147483647, 63, '2008-05-31 16:04:01', '2019-05-24 14:39:58', 0),
(64, 2147483647, 64, '1971-04-30 02:11:05', '2019-05-24 14:39:58', 0),
(65, 2147483647, 65, '2005-05-20 04:53:59', '2019-05-24 14:39:58', 0),
(66, 2147483647, 66, '1997-08-19 13:49:33', '2019-05-24 14:39:58', 0),
(67, 2147483647, 67, '1985-07-13 23:10:06', '2019-05-24 14:39:58', 0),
(68, 2147483647, 68, '2010-06-26 09:50:30', '2019-05-24 14:39:58', 0),
(69, 2147483647, 69, '1993-03-14 20:39:18', '2019-05-24 14:39:58', 0),
(70, 1967658309, 70, '1973-07-04 10:17:40', '2019-05-24 14:39:58', 0),
(71, 1410533713, 71, '1982-07-11 17:16:23', '2019-05-24 14:39:58', 0),
(72, 1149693943, 72, '2002-04-17 01:23:34', '2019-05-24 14:39:58', 0),
(73, 1516868883, 73, '1980-03-26 12:19:38', '2019-05-24 14:39:58', 0),
(74, 2147483647, 74, '1973-02-26 01:57:27', '2019-05-24 14:39:58', 0),
(75, 2147483647, 75, '2013-12-31 05:12:31', '2019-05-24 14:39:58', 0),
(76, 2147483647, 76, '1991-03-17 05:52:25', '2019-05-24 14:39:58', 0),
(77, 2147483647, 77, '2018-06-17 05:00:51', '2019-05-24 14:39:58', 0),
(78, 2147483647, 78, '2004-09-18 20:03:49', '2019-05-24 14:39:58', 0),
(79, 2147483647, 79, '1998-04-18 06:24:59', '2019-05-24 14:39:58', 0),
(80, 2147483647, 80, '2010-01-22 20:46:09', '2019-05-24 14:39:58', 0),
(81, 2147483647, 81, '1988-04-26 06:13:27', '2019-05-24 14:39:58', 0),
(82, 2147483647, 82, '2002-11-04 19:33:06', '2019-05-24 14:39:58', 0),
(83, 2147483647, 83, '1993-12-09 13:16:33', '2019-05-24 14:39:58', 0),
(84, 622675997, 84, '2010-01-23 00:35:45', '2019-05-24 14:39:58', 0),
(85, 2147483647, 85, '2012-03-02 09:56:56', '2019-05-24 14:39:58', 0),
(86, 2147483647, 86, '2008-10-24 21:57:38', '2019-05-24 14:39:58', 0),
(87, 2147483647, 87, '2015-03-29 12:51:29', '2019-05-24 14:39:58', 0),
(88, 2147483647, 88, '1978-12-08 21:13:48', '2019-05-24 14:39:58', 0),
(89, 315706199, 89, '1991-12-10 06:24:20', '2019-05-24 14:39:58', 0),
(90, 2147483647, 90, '2003-08-04 05:25:34', '2019-05-24 14:39:58', 0),
(91, 2147483647, 91, '2002-03-30 13:02:22', '2019-05-24 14:39:58', 0),
(92, 2147483647, 92, '1971-08-19 14:49:49', '2019-05-24 14:39:58', 0),
(93, 2147483647, 93, '2010-05-31 12:40:49', '2019-05-24 14:39:58', 0),
(94, 2147483647, 94, '2011-10-02 02:06:52', '2019-05-24 14:39:58', 0),
(95, 2147483647, 95, '1997-07-21 05:11:18', '2019-05-24 14:39:58', 0),
(96, 758252359, 96, '1980-12-12 23:47:10', '2019-05-24 14:39:58', 0),
(97, 2147483647, 97, '1982-07-10 16:08:39', '2019-05-24 14:39:58', 0),
(98, 2147483647, 98, '1984-12-14 21:32:39', '2019-05-24 14:39:58', 0),
(99, 2147483647, 99, '1972-03-23 15:40:02', '2019-05-24 14:39:58', 0),
(100, 1899762463, 100, '2006-08-18 00:44:44', '2019-05-24 14:39:58', 0),
(101, 1006152398, 101, '1998-06-26 04:53:56', '2019-05-24 14:39:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_profile_photo`
--

CREATE TABLE `tb_profile_photo` (
  `id` int(11) NOT NULL,
  `url` varchar(512) NOT NULL,
  `userID` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_profile_photo`
--

INSERT INTO `tb_profile_photo` (`id`, `url`, `userID`, `create_date`, `update_date`, `isdeleted`) VALUES
(1, '../../img/default.jpg', 1, '2019-05-15 20:33:37', '2019-05-15 20:33:37', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_project`
--

CREATE TABLE `tb_project` (
  `id` int(11) NOT NULL,
  `project_name` varchar(300) NOT NULL,
  `project_budget` varchar(300) NOT NULL,
  `inTake` int(11) NOT NULL DEFAULT '0',
  `num_of_phases` int(11) NOT NULL,
  `current_phase` int(11) NOT NULL,
  `notes` varchar(500) NOT NULL,
  `projectcategoryID` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_project`
--

INSERT INTO `tb_project` (`id`, `project_name`, `project_budget`, `inTake`, `num_of_phases`, `current_phase`, `notes`, `projectcategoryID`, `create_date`, `update_date`, `isdeleted`) VALUES
(1, 'quia', '905339', 607921, 2, 0, 'Maxime fuga laudantium pariatur. Exercitationem consequuntur mollitia fugiat occaecati nihil saepe dolores quas. Laudantium rerum sapiente sit modi eos. Dolorum atque aliquam omnis officia fugiat ipsa veniam.', 2, '1972-09-18 13:39:42', '2019-05-24 05:50:39', 0),
(2, 'possimus', '9722737', 5703862, 7, 7, 'Eos animi consequatur ut sed facilis qui tempora. Quos consectetur molestias vel reiciendis vero. Earum voluptas quae voluptatem vel. Rerum similique quam sit.', 3, '2012-12-20 20:31:16', '2019-05-26 00:58:48', 0),
(3, 'veniam', '273314910', 0, 8, 6, 'Ut doloribus consectetur harum dolor aut aut error sint. Ducimus nesciunt accusantium necessitatibus et rerum vel. Necessitatibus amet molestias quae et veniam.', 1, '2000-01-18 17:26:30', '2019-05-26 00:58:48', 0),
(4, 'voluptatum', '25787740', 43, 8, 6, 'Sunt dolorem qui nihil maiores. Velit voluptates nesciunt dolores dolore numquam. Dicta perferendis et similique eos doloremque vitae aut. Nobis consequatur eaque atque velit quia omnis est.', 1, '2014-09-27 16:04:13', '2019-05-26 00:58:48', 0),
(5, 'aut', '862042917', 527503349, 9, 9, 'Architecto non reiciendis harum. In a quia voluptas consequatur ratione ut. Consectetur atque ullam placeat earum cumque aspernatur consequatur aut. Ea aut dolorem dolor laudantium incidunt qui et.', 2, '2002-03-02 10:55:26', '2019-05-26 00:58:48', 0),
(6, 'quasi', '95425492', 0, 5, 3, 'Voluptate a temporibus aut ipsam doloribus. Ducimus sit voluptatem veritatis et. Dolorem molestiae dolores error amet voluptatibus amet. Corporis veniam aut ex dolorem repellat.', 1, '1996-05-08 17:28:46', '2019-05-26 00:58:48', 0),
(7, 'optio', '161331879', 4451, 6, 4, 'Qui adipisci non error laborum sunt porro vitae. Sequi temporibus dicta minus culpa mollitia optio similique. Eum omnis odio unde suscipit.', 2, '1970-05-09 22:41:38', '2019-05-24 05:50:39', 0),
(8, 'provident', '447110059', 3, 9, 7, 'Qui vitae quibusdam in totam. Facere nam ipsa dolor magnam voluptatem sed quia. Eos ad qui dignissimos aliquid autem. Natus aperiam et aut maxime.', 2, '1974-12-28 10:19:19', '2019-05-24 05:50:39', 0),
(9, 'sed', '6841983', 0, 6, 6, 'Ut qui voluptatem aliquid ut aut. Nam fugiat laudantium illum dignissimos omnis laborum. Fugit eaque sint deleniti totam nostrum rerum quos error.', 3, '1972-06-23 23:44:10', '2019-05-24 05:50:39', 0),
(10, 'et', '207', 18, 9, 7, 'Aut quia tempore est ut hic autem voluptates. Velit laboriosam quis minus rerum. Quam itaque nulla consequatur alias occaecati praesentium voluptatem.', 1, '2009-11-13 23:22:12', '2019-05-26 00:58:48', 0),
(11, 'eveniet', '3279146', 30, 2, 0, 'Corrupti eaque neque ut doloremque. Est eos aliquam eum illum. Eaque nobis et porro sed.', 2, '2000-03-16 00:01:56', '2019-05-24 05:50:39', 0),
(12, 'ab', '1', 0, 3, 0, 'Exercitationem dolores quidem voluptates. Nulla et qui vitae inventore recusandae fuga quaerat. Dolores adipisci recusandae iusto fugit saepe et dicta.', 1, '2014-08-04 22:54:38', '2019-05-26 00:58:48', 0),
(13, 'rerum', '995', 3, 4, 0, 'Laudantium delectus aut est. Dolore maxime exercitationem sint. Veniam provident labore nihil qui explicabo suscipit.', 3, '2013-11-17 07:13:09', '2019-05-24 05:50:39', 0),
(14, 'libero', '52107078', 7, 9, 0, 'Ut dignissimos tenetur tempore repudiandae vero quis. Iste rerum quia quis dicta quod nostrum. Quod sapiente et eum exercitationem. Reiciendis eos nemo incidunt expedita quia eius vero quia.', 3, '1982-10-18 23:39:38', '2019-05-24 05:50:39', 0),
(15, 'est', '892821', 1, 8, 8, 'Et eaque ut nostrum dolorem nam odit corrupti. Explicabo recusandae necessitatibus culpa quaerat corrupti. Vel iste minus voluptas ipsam exercitationem qui. Animi nihil alias praesentium optio deserunt impedit provident quos. Dolorem saepe ab reprehenderit ratione.', 1, '1998-07-15 03:57:54', '2019-05-26 00:58:48', 0),
(16, 'ut', '22842756', 9, 9, 7, 'In delectus laborum ipsum odit. Veritatis consequuntur eaque voluptatum nihil consequatur. Consequatur perferendis earum mollitia omnis modi ut quos aut. Fuga provident sunt id quae consequatur sit ab.', 3, '2012-05-24 22:21:30', '2019-05-26 00:58:48', 0),
(17, 'quo', '526792013', 30838599, 7, 4, 'Praesentium animi quos sit enim quae distinctio. Quibusdam nihil eum quia culpa in commodi minima. Quod dolore non tempore dolores nihil nulla inventore.', 2, '1984-01-01 13:10:17', '2019-05-24 05:50:39', 0),
(18, 'repudiandae', '52824', 9, 7, 5, 'Est voluptatum maiores cum aut est incidunt. Ipsum recusandae adipisci iste hic magnam accusantium fuga. Ex et voluptatibus doloremque quia omnis adipisci. Rerum et et et sequi atque consequatur ea.', 3, '2010-07-30 04:58:03', '2019-05-24 05:50:39', 0),
(19, 'praesentium', '9610691', 39, 9, 7, 'Tempore vitae harum quas sit omnis aut maiores. Provident tempore numquam et eos.', 1, '1972-05-30 08:14:33', '2019-05-24 05:50:39', 0),
(20, 'voluptatem', '261500596', 0, 8, 3, 'Veritatis autem corrupti sapiente eos eos. Magnam inventore ut exercitationem porro. Voluptas aut commodi voluptas rerum perferendis sapiente nisi.', 2, '1993-06-28 06:38:59', '2019-05-24 05:50:39', 0),
(21, 'odit', '0', 0, 8, 6, 'Asperiores dolorem voluptas quis aut fuga harum. Qui qui modi ut sint. In quisquam qui velit incidunt quasi aliquid. Impedit explicabo temporibus odit et. Recusandae asperiores velit et nulla illo commodi.', 3, '1997-04-26 12:34:36', '2019-05-26 00:58:48', 0),
(22, 'magnam', '559299811', 547374399, 7, 5, 'Id fugit hic odio exercitationem rerum. Fugit qui cum molestiae aliquam officiis. Ut sed illum tempora odio. Dolorum porro aspernatur voluptas explicabo omnis.', 3, '2014-03-28 08:54:49', '2019-05-24 05:50:39', 0),
(23, 'qui', '218944182', 895333, 4, 3, 'Unde ea et omnis impedit sit odit. Nulla nihil molestias omnis maiores totam iusto blanditiis. Et et quia consequuntur sit. Vel tempora aut voluptatem sit accusantium.', 2, '2002-09-10 14:29:24', '2019-05-24 05:50:39', 0),
(24, 'quia', '9', 0, 3, 0, 'Nisi vitae autem perspiciatis. Labore tempore impedit porro magni officia. Nemo autem odit ducimus.', 2, '1998-10-19 18:04:33', '2019-05-24 05:50:39', 0),
(25, 'ut', '2564719', 0, 8, 1, 'Neque ut nihil quidem omnis eos. Non perspiciatis in vel quidem.', 2, '1976-05-22 06:13:49', '2019-05-24 05:50:39', 0),
(26, 'rerum', '994490737', 68, 5, 5, 'Non corporis vero inventore. Qui in laboriosam repellendus consequatur ullam error itaque. Optio aut dignissimos expedita et fugit velit nihil ut.', 1, '2009-08-08 23:59:19', '2019-05-24 05:50:39', 0),
(27, 'autem', '670', 22, 5, 3, 'Consequatur enim reprehenderit voluptas sed voluptates aperiam totam. Est eum quibusdam repellat earum. Doloribus aut accusantium tempore molestiae at ea qui.', 1, '2012-10-07 13:28:50', '2019-05-24 05:50:39', 0),
(28, 'minus', '0', 0, 7, 5, 'Sint dolorem autem est. Quia dolores in eos a voluptas enim.', 3, '2015-02-24 23:22:27', '2019-05-26 00:58:48', 0),
(29, 'perferendis', '4179385', 2, 1, 1, 'Sit perspiciatis sapiente ut nihil vel iusto. Omnis repudiandae at eum. Aut architecto iure blanditiis vel asperiores. Odit adipisci accusantium labore labore.', 3, '1972-02-23 14:27:04', '2019-05-26 00:58:48', 0),
(30, 'libero', '6315', 12, 4, 2, 'Est quas autem dolorum nisi qui. Aliquam quia autem nihil odit. Id reiciendis ullam et.', 3, '1971-02-03 20:52:35', '2019-05-26 00:58:48', 0),
(31, 'est', '128', 0, 8, 1, 'Voluptatum vel autem laboriosam esse rerum. Facilis optio dolor quod provident. Cum incidunt excepturi voluptatum quibusdam a quae rerum. Omnis quibusdam eligendi quas commodi.', 2, '2004-08-26 10:28:27', '2019-05-26 00:58:48', 0),
(32, 'molestias', '9131756', 80, 9, 4, 'Ut et hic quas adipisci dolores dignissimos vel. Qui sed in iusto voluptatem id. Omnis aliquid voluptas vitae facilis.', 2, '1970-05-17 19:30:31', '2019-05-26 00:58:48', 0),
(33, 'totam', '2971269', 0, 9, 7, 'Qui suscipit mollitia debitis cum rem sapiente commodi. Eius blanditiis quo architecto cum asperiores pariatur et. Eum sunt repellendus modi autem nihil. Enim eius in voluptatem molestiae.', 2, '2004-07-16 17:00:40', '2019-05-26 00:58:48', 0),
(34, 'quos', '1527911', 39732, 8, 6, 'Aliquid sed nihil hic quidem rerum. Non voluptas ratione rerum quisquam architecto voluptates est ea. Ut delectus quo consequatur suscipit praesentium itaque impedit tenetur. Quae quibusdam est aut quis.', 2, '1974-05-28 23:31:13', '2019-05-26 00:58:48', 0),
(35, 'eligendi', '9274', 210, 9, 7, 'In dolorum ducimus omnis autem. Consequatur rerum et est cumque et corporis. Dolore consectetur quaerat rerum ea.', 3, '2008-03-13 09:05:54', '2019-05-24 05:50:39', 0),
(36, 'ut', '50870', 80, 4, 3, 'Aut quia at aut cumque ullam voluptatum. Illo labore aut fuga. Magni neque molestiae et veniam praesentium sapiente.', 2, '2017-04-20 22:36:38', '2019-05-24 05:50:39', 0),
(37, 'totam', '8353', 7, 9, 8, 'Culpa sint nihil sequi iste nam ut. Consequatur voluptatibus ut qui sed aut ipsa omnis. Explicabo nobis rerum non deserunt facere doloribus autem. Aut voluptatibus consequatur ipsum quo est et.', 3, '2009-10-02 13:43:09', '2019-05-24 05:50:39', 0),
(38, 'provident', '1076064', 0, 9, 9, 'Enim quos perferendis voluptatem molestias asperiores dolorem. Ut voluptas explicabo voluptatibus blanditiis alias nihil. Quibusdam amet consectetur consequatur modi. Consequuntur praesentium minima distinctio quia officia exercitationem ipsum.', 2, '1988-10-31 04:31:50', '2019-05-24 05:50:39', 0),
(39, 'nihil', '54871595', 16597251, 6, 4, 'Consequatur perspiciatis et nostrum explicabo et. Delectus quos corporis perspiciatis et amet ipsam. Modi consectetur recusandae alias sunt sequi mollitia. Itaque molestiae suscipit enim.', 3, '2011-03-18 04:40:59', '2019-05-26 00:58:48', 0),
(40, 'similique', '55092', 829, 8, 6, 'Odit enim soluta dolores vitae. Exercitationem est placeat unde aut. Doloremque cupiditate eveniet ipsum eos qui eaque.', 3, '1996-07-31 18:57:09', '2019-05-26 00:58:48', 0),
(41, 'porro', '921262', 309, 2, 0, 'Aut quisquam amet deserunt non maiores voluptas. Dolor sed hic rerum aut in aut. Officia sit non libero incidunt.', 3, '1975-03-06 22:07:37', '2019-05-26 00:58:48', 0),
(42, 'sed', '29465491', 443281, 9, 7, 'Saepe enim omnis harum et dignissimos ad. Esse eaque totam nulla architecto dolor. Vero laboriosam ea aliquid ut esse quas. Aspernatur mollitia molestiae dolor autem velit eaque consequuntur.', 1, '1998-05-14 12:30:14', '2019-05-24 05:50:39', 0),
(43, 'ut', '760613680', 88, 5, 4, 'Officia explicabo dolore voluptatem dicta ut et. Nobis aliquam nobis deleniti qui deserunt nesciunt.', 1, '2001-04-26 16:27:21', '2019-05-24 05:50:39', 0),
(44, 'rerum', '466924', 9158, 8, 6, 'Sapiente ut atque asperiores quod aut quae officia. Molestiae aperiam nostrum quia eos. Commodi enim qui est harum minima neque deleniti facilis. Exercitationem quis culpa velit qui nulla.', 3, '1990-09-11 01:48:27', '2019-05-24 05:50:39', 0),
(45, 'repudiandae', '627185126', 63, 3, 1, 'Hic ducimus saepe facere ratione minus ut perspiciatis porro. Dicta atque modi voluptatem. Velit quia totam repudiandae ratione doloribus minus.', 3, '1987-12-18 13:34:03', '2019-05-26 00:58:48', 0),
(46, 'mollitia', '8357', 0, 7, 5, 'Aliquid tempore cupiditate nihil doloremque. Sed modi facere aut iste blanditiis necessitatibus ut. Asperiores hic deleniti nam qui voluptas.', 2, '2015-01-14 08:30:11', '2019-05-24 05:50:39', 0),
(47, 'distinctio', '201', 60, 2, 2, 'Illo quia impedit aut explicabo dicta ullam molestiae nemo. Ipsa quo mollitia repellendus vel consectetur consequatur nihil et. Dolorum eveniet ut sed qui numquam porro ut.', 2, '2002-01-25 20:58:32', '2019-05-26 00:58:48', 0),
(48, 'velit', '8436', 0, 3, 1, 'Ex necessitatibus eveniet dolores maxime nam omnis. Quae dicta voluptatibus et inventore iusto.', 3, '1983-11-13 05:33:34', '2019-05-24 05:50:39', 0),
(49, 'sit', '15650', 328, 9, 6, 'Dolor molestias temporibus ut quidem. Similique voluptas quidem unde maiores magnam dolor in. Quibusdam aut in dolores consequatur. Similique impedit rerum nostrum iure illum nihil sit doloremque.', 3, '2008-01-19 00:05:32', '2019-05-26 00:58:48', 0),
(50, 'dolorem', '9686', 0, 8, 3, 'Quam quidem sunt quod animi aliquam nemo ut. Et debitis qui pariatur suscipit. Sit omnis eum in adipisci quod sequi quis et.', 3, '1984-02-08 16:25:44', '2019-05-24 05:50:39', 0),
(51, 'sed', '1209', 28, 9, 7, 'Quam dolorum blanditiis dolores quae. Doloribus voluptatem tempora totam quibusdam harum vel. Nobis id maiores accusantium sequi et. Dolorem tempora blanditiis labore natus est veritatis alias.', 1, '2019-01-04 06:15:06', '2019-05-26 00:58:48', 0),
(52, 'et', '2', 0, 4, 2, 'Reiciendis id praesentium rerum quo illo facilis ut. Deserunt laborum voluptatibus voluptas totam est suscipit dolores. Consequatur velit rerum perferendis culpa explicabo ea sapiente.', 3, '1978-11-05 05:47:11', '2019-05-26 00:58:48', 0),
(53, 'officia', '3216', 73, 5, 4, 'Est soluta omnis nostrum quo eligendi. Repellat adipisci dolor ipsa corrupti. Necessitatibus ut esse qui eum harum. Explicabo maxime eum reiciendis excepturi hic recusandae similique.', 2, '1997-03-13 04:15:19', '2019-05-26 00:58:48', 0),
(54, 'dolorum', '583280', 1, 4, 1, 'Possimus iste velit nesciunt enim esse eius molestiae. Sunt sequi aut molestias sunt. Impedit iure eius veniam rerum perspiciatis vitae quam.', 2, '1992-03-24 00:29:19', '2019-05-24 05:50:39', 0),
(55, 'qui', '79266', 466, 3, 1, 'Assumenda quaerat vel accusantium. Excepturi qui quia ducimus.', 3, '1971-05-15 19:46:13', '2019-05-26 00:58:48', 0),
(56, 'sunt', '223', 0, 8, 4, 'Sunt dignissimos aliquid dolorum autem ipsam sit. Voluptates magnam consequatur in natus. Possimus quia ratione blanditiis placeat.', 3, '1990-02-15 01:46:39', '2019-05-26 00:58:48', 0),
(57, 'voluptatum', '6610328', 175141, 5, 3, 'Recusandae velit voluptatem architecto vitae autem. Reprehenderit distinctio molestiae voluptatem quaerat facere ad animi libero. Velit a optio voluptatem autem at non.', 1, '1996-01-30 16:30:20', '2019-05-24 05:50:39', 0),
(58, 'voluptatibus', '72448412', 4776062, 7, 1, 'Ipsam earum et iste ullam. Animi voluptas sequi recusandae sequi voluptatem accusantium minima. Nemo sed aperiam adipisci et delectus aut dolorem.', 2, '2009-01-24 06:47:49', '2019-05-26 00:58:48', 0),
(59, 'quia', '3589', 0, 5, 2, 'Aut sed consequatur quod nulla quia voluptatibus. Repellendus repellendus ab nihil quis. Qui dolor labore harum repudiandae accusamus molestiae voluptatibus incidunt. Aut in minima ea et et.', 1, '2018-10-09 06:34:21', '2019-05-26 00:58:48', 0),
(60, 'est', '85689827', 77077517, 2, 0, 'Quam suscipit voluptatibus omnis placeat minima dolores harum. Veniam et aut et quam.', 2, '2019-04-30 22:39:56', '2019-05-26 00:58:48', 0),
(61, 'consequuntur', '901476890', 97, 6, 0, 'Dolor error similique explicabo sed ipsa saepe quis. Non suscipit voluptas architecto at voluptate facere. Vero ut eaque cum quia sint magnam magnam.', 1, '1980-01-04 07:42:49', '2019-05-24 05:50:39', 0),
(62, 'quia', '2183844', 1897, 5, 3, 'Odio porro saepe laboriosam commodi quos est. Error vero ut quisquam similique eveniet quidem est eum. Sunt tempore maxime enim cupiditate quasi. Delectus unde qui natus iusto voluptatem aspernatur sequi odit.', 1, '2000-10-19 03:22:15', '2019-05-26 00:58:48', 0),
(63, 'et', '30576', 4, 5, 3, 'Itaque corrupti fuga error eos voluptate. Suscipit aliquid numquam quas dolor. Rerum beatae in ut dicta iure. Tempore minima nobis enim odit.', 2, '1971-01-21 14:28:10', '2019-05-24 05:50:39', 0),
(64, 'qui', '578071', 54, 4, 2, 'Ut fugiat sint voluptas corrupti voluptatum quam. Quia quos necessitatibus et aperiam. Nihil tempora illo quisquam fuga distinctio nobis.', 1, '2009-12-31 04:15:03', '2019-05-24 05:50:39', 0),
(65, 'vero', '817726', 0, 5, 5, 'Incidunt atque ea laudantium iusto numquam et. Temporibus eaque omnis non dolore dolores doloremque. Eos id est id quibusdam occaecati voluptatibus.', 1, '1982-04-11 05:10:33', '2019-05-26 00:58:48', 0),
(66, 'qui', '387115', 41258, 2, 0, 'Minima et ullam facilis minima aperiam id rem autem. Libero nesciunt mollitia est voluptatem quasi modi. Delectus temporibus provident est beatae autem sunt.', 3, '2017-10-26 01:07:30', '2019-05-26 00:58:48', 0),
(67, 'veniam', '72904163', 20651, 2, 1, 'Sint adipisci at natus. Voluptatum ducimus saepe velit quod non enim tempore. Placeat eius minima ut quia amet et.', 1, '1997-03-15 10:39:58', '2019-05-24 05:50:39', 0),
(68, 'qui', '1913', 93, 7, 6, 'Quo qui ut assumenda quo error sunt sint. Facere est itaque eius vero voluptas eos autem. Animi id suscipit et ratione dolore.', 3, '1990-12-03 03:44:09', '2019-05-24 05:50:39', 0),
(69, 'vitae', '1765411', 95729, 7, 5, 'Ut quas earum itaque sit. Eveniet qui aut expedita. Sit quis fuga temporibus. Sapiente enim fugit et eveniet non ut qui.', 1, '2009-10-21 15:06:56', '2019-05-26 00:58:48', 0),
(70, 'ullam', '0', 0, 5, 2, 'Voluptas et aut enim soluta dolorem culpa. Voluptas ad officia architecto veritatis. Tempore et laboriosam omnis facilis nobis ipsa et ad. Ipsa et distinctio quidem consequatur sit enim.', 2, '1975-11-06 22:51:14', '2019-05-26 00:58:48', 0),
(71, 'dolor', '98062304', 6, 6, 4, 'Animi quam et sed unde minus minima laborum. Et unde voluptatem quidem harum sed et. Iste impedit commodi impedit vero minima rerum repellat.', 1, '1986-06-07 10:51:06', '2019-05-26 00:58:48', 0),
(72, 'in', '691624', 0, 9, 7, 'Unde nobis eveniet consequatur. Ea consequatur totam sint corporis dolor dolor ad.', 2, '1999-07-03 03:59:37', '2019-05-24 05:50:39', 0),
(73, 'vero', '0', 0, 9, 7, 'Error qui voluptas id vitae. Dolorum aut id quas temporibus ab quo sit. Minima labore est tempora et eligendi dicta quam. Id qui sint necessitatibus.', 1, '2014-03-14 19:28:51', '2019-05-26 00:58:48', 0),
(74, 'ut', '527', 0, 6, 3, 'Ratione perferendis vel repellat amet dolorem provident minima. Nihil ea iste rerum ducimus. Animi et minus error assumenda voluptatum vero sed.', 3, '2014-05-08 05:46:59', '2019-05-24 05:50:39', 0),
(75, 'commodi', '729', 143, 4, 2, 'Eveniet porro distinctio sunt ut quis. Natus et et quos voluptatibus excepturi deserunt ut. Velit autem mollitia excepturi occaecati temporibus non harum. Neque dolorem recusandae illum dicta suscipit.', 2, '2000-02-13 11:04:13', '2019-05-26 00:58:48', 0),
(76, 'commodi', '50963', 6634, 6, 5, 'Ex laudantium natus repellat voluptas. Eius magni consequatur in consequuntur earum et. Consequatur consequatur aut facilis alias. Similique dolores deserunt explicabo.', 3, '1992-11-22 00:08:48', '2019-05-26 00:58:48', 0),
(77, 'molestiae', '5712086', 2, 6, 1, 'Ipsum eligendi saepe quia delectus qui. Non necessitatibus ut ex facere velit voluptatem vel et. Est vel laborum ratione itaque sed reprehenderit ratione. Ea laboriosam quia velit et possimus dolore nihil. Perferendis cumque ut in quibusdam.', 1, '1999-11-09 16:02:53', '2019-05-24 05:50:39', 0),
(78, 'quibusdam', '364369065', 918588, 4, 3, 'Exercitationem perspiciatis et veritatis repellat qui quia. Illo aut sequi similique ab veritatis non error. Illo voluptatem temporibus inventore accusantium voluptas incidunt nisi. Libero numquam eius molestiae sequi culpa sit tenetur.', 3, '2008-11-13 23:53:51', '2019-05-26 00:58:48', 0),
(79, 'repellendus', '30', 7, 1, 0, 'Rerum consectetur amet consequatur distinctio corrupti officiis magni. Et fuga nesciunt quia porro animi officia. Id voluptates omnis modi voluptas et recusandae est. In at et velit. Sequi beatae praesentium soluta cum fuga saepe deserunt.', 3, '1997-09-08 19:54:58', '2019-05-24 05:50:39', 0),
(80, 'unde', '55295', 233, 4, 2, 'Facere est ad delectus voluptatem ullam. Laboriosam in voluptas beatae amet sunt excepturi. Odit quia dolorum fugiat.', 2, '1982-06-23 20:20:09', '2019-05-24 05:50:39', 0),
(81, 'minima', '801', 55, 5, 3, 'Sit beatae beatae ullam est sit dolorem voluptatem. Est saepe maiores rem. Sint laudantium incidunt possimus eos et ut.', 1, '1989-07-14 10:25:09', '2019-05-26 00:58:48', 0),
(82, 'necessitatibus', '12396920', 0, 8, 6, 'Minima consectetur sunt deserunt nisi quo excepturi. Praesentium ut quos et reiciendis. Optio id nisi velit et.', 1, '2009-01-19 16:00:07', '2019-05-26 00:58:48', 0),
(83, 'qui', '470747', 0, 9, 4, 'Voluptas consectetur voluptatum voluptatibus corrupti esse tempore. Vel ullam animi est architecto aut quam vel. Doloribus recusandae magnam ab autem placeat. Voluptatem sit a praesentium sunt hic.', 3, '1974-07-13 05:06:03', '2019-05-24 05:50:39', 0),
(84, 'id', '50489', 72, 8, 2, 'Voluptatem quisquam debitis porro dignissimos labore quia. Id aut qui maxime magni voluptate assumenda. Eligendi dolores qui nihil ea. Aspernatur aut sed sit facilis.', 2, '1998-06-30 04:17:15', '2019-05-24 05:50:39', 0),
(85, 'rerum', '360657349', 0, 8, 1, 'A alias ex quia odio id accusamus rem est. Quis iusto magni incidunt quibusdam officia velit vel repellendus. Qui provident culpa culpa voluptatibus deleniti. Illum repellat cum minus reprehenderit sed.', 2, '2009-10-09 21:09:34', '2019-05-26 00:58:48', 0),
(86, 'natus', '327383', 7240, 9, 6, 'Odio aut id et quisquam et expedita in. Porro expedita vero vel aut consequatur non qui. Consequatur voluptatibus quisquam fuga hic.', 3, '1994-06-09 23:46:30', '2019-05-26 00:58:48', 0),
(87, 'eligendi', '413', 0, 6, 4, 'Sit unde sit accusamus voluptatem et rerum ut. Quia assumenda provident animi natus velit unde sapiente. Dolor pariatur in in repellendus.', 3, '1990-12-08 03:36:24', '2019-05-24 05:50:39', 0),
(88, 'culpa', '2361', 653, 9, 6, 'Qui et qui optio tempora dolorem culpa ab. Placeat quasi et provident voluptatem. Sunt unde error a dolore.', 2, '1977-04-19 09:21:49', '2019-05-26 00:58:48', 0),
(89, 'cupiditate', '9', 0, 2, 0, 'Natus nihil sunt voluptas velit et qui sint. Distinctio quia rerum dolorem veritatis quasi ut commodi. Eligendi consequatur aliquam odit amet voluptatum doloribus recusandae. Laborum consequatur doloremque et aut officia.', 2, '2013-05-21 05:35:56', '2019-05-26 00:58:48', 0),
(90, 'voluptates', '801', 615, 5, 3, 'Corrupti et repellendus sed saepe totam quis. Harum nesciunt amet enim maiores. Sed autem et totam deleniti facilis minima autem voluptas. Ipsum explicabo esse quasi dolores sint ut est.', 1, '1996-04-02 16:52:01', '2019-05-26 00:58:48', 0),
(91, 'molestias', '295', 0, 6, 4, 'Fuga magni earum in dolore nihil quos. Quis sit incidunt cupiditate magnam qui nesciunt aut. Error voluptatem et minus rerum qui ab. Saepe reprehenderit quam fuga suscipit mollitia.', 3, '1977-02-14 03:34:08', '2019-05-26 00:58:48', 0),
(92, 'distinctio', '4', 1, 8, 6, 'Dicta aut ea suscipit molestiae unde aspernatur omnis. Sint ex commodi neque accusamus repudiandae recusandae et. Porro non ea ipsum fugit natus.', 2, '2007-04-14 01:33:34', '2019-05-26 00:58:48', 0),
(93, 'suscipit', '468243115', 6, 9, 7, 'Quis porro in doloremque consequatur omnis est voluptatibus. Blanditiis aut provident ut et dignissimos et natus ut. Consectetur tempora voluptatem esse. Aliquam similique et ipsam nesciunt consequatur. Eius maiores dolore nihil amet cum.', 1, '2000-04-22 03:54:50', '2019-05-24 05:50:39', 0),
(94, 'ipsa', '594641035', 7, 6, 2, 'Quia aut quis neque iusto. Et sunt non eum dolor velit. Perferendis ratione a eius totam et commodi.', 3, '2018-03-07 00:09:57', '2019-05-24 05:50:39', 0),
(95, 'provident', '71410928', 89, 6, 4, 'Repellat quidem facilis sunt itaque et ducimus. Quos saepe et vel voluptatem vitae perspiciatis.', 3, '1986-04-30 02:01:56', '2019-05-26 00:58:48', 0),
(96, 'iure', '9', 0, 8, 6, 'Facilis sit aut dolores in voluptatem et sint corporis. Tenetur nulla veritatis aut ut officiis nemo nemo. Ut facere eveniet blanditiis nobis cum.', 1, '1970-11-20 09:40:53', '2019-05-26 00:58:48', 0),
(97, 'reprehenderit', '324350816', 659, 5, 3, 'Qui velit laborum repudiandae ut sequi voluptas. Quasi nemo et enim sit non rerum. Enim dicta labore autem unde et aut eveniet.', 2, '2005-07-07 05:12:22', '2019-05-24 05:50:39', 0),
(98, 'possimus', '8360', 132, 7, 5, 'Quo praesentium eligendi quo dolorem et id. Officia adipisci aut ut eaque exercitationem qui. Quia qui quia omnis ad dolorem. Placeat dolorum perspiciatis maxime nemo voluptas omnis assumenda.', 1, '1985-08-05 19:51:35', '2019-05-24 05:50:39', 0),
(99, 'temporibus', '822032976', 24446, 5, 3, 'Dicta qui culpa eum. Voluptatibus totam et perferendis incidunt excepturi. Consequatur quisquam ab assumenda aut soluta.', 3, '2007-06-25 07:08:48', '2019-05-26 00:58:48', 0),
(100, 'fugit', '824694414', 46561823, 4, 2, 'Omnis excepturi nostrum velit explicabo rerum quia non. Qui commodi dolorem ratione sequi. Rem suscipit facilis quibusdam et aspernatur perferendis.', 3, '1994-04-23 20:46:37', '2019-05-26 00:58:48', 0);

--
-- Triggers `tb_project`
--
DELIMITER $$
CREATE TRIGGER `ad_tb_project` AFTER DELETE ON `tb_project` FOR EACH ROW BEGIN
  INSERT INTO tb_data_log (action, action_time)
  VALUES('delete', NOW());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `ai_tb_project` AFTER INSERT ON `tb_project` FOR EACH ROW BEGIN
  INSERT INTO tb_data_log (action, action_time)
  VALUES('New project has been inserted in tb_project', NOW());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `au_tb_project` AFTER UPDATE ON `tb_project` FOR EACH ROW BEGIN
  INSERT INTO tb_data_log (action, action_time)
  VALUES('Tb_project has been updated', NOW());
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_project_category`
--

CREATE TABLE `tb_project_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(300) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_project_category`
--

INSERT INTO `tb_project_category` (`id`, `category_name`, `create_date`, `update_date`, `isdeleted`) VALUES
(1, 'Purification Station', '2019-05-15 20:34:18', '2019-05-15 20:34:18', 0),
(2, 'Africa Wells', '2019-05-15 20:34:18', '2019-05-15 20:34:18', 0),
(3, 'Water Links', '2019-05-15 20:34:18', '2019-05-15 20:34:18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_project_image`
--

CREATE TABLE `tb_project_image` (
  `id` int(11) NOT NULL,
  `img_url` varchar(512) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_reference_paper`
--

CREATE TABLE `tb_reference_paper` (
  `id` int(11) NOT NULL,
  `rand_number` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_request_donation`
--

CREATE TABLE `tb_request_donation` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `projectCategoryID` int(11) NOT NULL,
  `donationReasonID` int(11) NOT NULL,
  `paymentMethodID` int(11) NOT NULL,
  `amount_donated` int(11) NOT NULL,
  `valueTaken` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_request_donation`
--

INSERT INTO `tb_request_donation` (`id`, `userID`, `projectCategoryID`, `donationReasonID`, `paymentMethodID`, `amount_donated`, `valueTaken`, `status`, `create_date`, `update_date`, `isdeleted`) VALUES
(1, 5, 2, 2, 2, 27, 0, 0, '1987-09-08 20:06:32', '2019-05-26 01:06:05', 0),
(2, 24, 1, 1, 1, 867, 867, 1, '1990-12-27 06:47:18', '2019-05-26 01:11:09', 0),
(3, 3, 1, 1, 2, 190094, 0, 0, '1983-08-16 20:39:44', '2019-05-26 01:06:05', 0),
(4, 45, 1, 1, 1, 79311, 79311, 1, '1983-04-22 21:07:25', '2019-05-26 01:11:09', 0),
(5, 14, 2, 2, 1, 475281, 0, 0, '2002-07-10 02:40:36', '2019-05-26 01:06:05', 0),
(6, 35, 3, 1, 1, 1603413, 0, 0, '1980-12-12 00:38:54', '2019-05-26 01:06:05', 0),
(7, 33, 2, 1, 1, 1, 0, 0, '1985-09-24 05:31:29', '2019-05-26 01:06:05', 0),
(8, 61, 3, 2, 2, 654842963, 0, 0, '1985-03-09 14:42:39', '2019-05-26 01:06:05', 0),
(9, 3, 2, 1, 1, 2, 0, 0, '1988-10-24 20:33:03', '2019-05-26 01:06:05', 0),
(10, 33, 1, 1, 2, 2129046, 2129046, 1, '1989-03-05 17:40:01', '2019-05-26 01:11:09', 0),
(11, 56, 2, 2, 1, 861, 0, 0, '1989-06-26 09:33:19', '2019-05-26 01:06:05', 0),
(12, 80, 2, 1, 1, 4533, 0, 0, '1984-01-07 03:22:24', '2019-05-26 01:06:05', 0),
(13, 31, 1, 1, 1, 1000, 0, 0, '1984-05-21 18:16:43', '2019-05-26 01:06:05', 0),
(14, 15, 1, 1, 1, 535, 0, 0, '1984-04-11 04:56:38', '2019-05-26 01:06:05', 0),
(15, 80, 3, 2, 1, 11080986, 0, 0, '2014-04-21 02:35:52', '2019-05-26 01:06:05', 0),
(16, 56, 1, 1, 2, 2339039, 0, 0, '2003-08-28 19:26:10', '2019-05-26 01:06:05', 0),
(17, 38, 1, 1, 2, 1002458, 1002458, 1, '1998-03-27 11:15:14', '2019-05-26 01:11:09', 0),
(18, 21, 1, 1, 2, 1000, 0, 0, '1982-02-23 06:49:46', '2019-05-26 01:06:05', 0),
(19, 92, 2, 1, 2, 4498, 0, 0, '1975-01-05 23:14:11', '2019-05-26 01:06:05', 0),
(20, 98, 1, 1, 2, 3813214, 0, 0, '2014-08-02 18:32:59', '2019-05-26 01:06:05', 0),
(21, 13, 1, 1, 1, 34699, 0, 0, '2010-01-30 05:17:40', '2019-05-26 01:06:05', 0),
(22, 69, 2, 1, 1, 1000, 0, 0, '1987-06-07 20:15:07', '2019-05-26 01:06:05', 0),
(23, 5, 2, 2, 2, 18076962, 0, 0, '1981-06-30 00:34:27', '2019-05-26 01:06:05', 0),
(24, 18, 3, 1, 1, 1000, 0, 0, '2002-11-21 05:55:08', '2019-05-26 01:06:05', 0),
(25, 75, 2, 2, 2, 3467, 0, 0, '1988-08-24 13:52:35', '2019-05-26 01:06:05', 0),
(26, 20, 1, 2, 2, 2148, 0, 0, '1997-07-02 12:10:06', '2019-05-26 01:06:05', 0),
(27, 73, 2, 2, 1, 596, 0, 0, '2015-06-09 15:49:31', '2019-05-26 01:06:05', 0),
(28, 4, 1, 2, 2, 38708, 0, 0, '1986-08-05 00:00:53', '2019-05-26 01:06:05', 0),
(29, 1, 3, 2, 1, 1000, 0, 0, '1982-08-16 14:49:58', '2019-05-26 01:06:05', 0),
(30, 95, 3, 2, 1, 26065635, 0, 0, '1978-05-19 02:43:25', '2019-05-26 01:06:05', 0),
(31, 70, 2, 1, 1, 6, 0, 0, '1993-08-30 19:49:40', '2019-05-26 01:06:05', 0),
(32, 66, 2, 2, 1, 23330, 0, 0, '1977-05-06 05:53:16', '2019-05-26 01:06:05', 0),
(33, 18, 1, 2, 2, 1000, 0, 0, '1982-10-17 07:15:23', '2019-05-26 01:06:05', 0),
(34, 94, 3, 2, 1, 55, 0, 0, '1992-09-06 16:32:36', '2019-05-26 01:06:05', 0),
(35, 14, 1, 1, 2, 20198, 0, 0, '1978-01-25 18:02:58', '2019-05-26 01:06:05', 0),
(36, 87, 3, 2, 1, 1427, 0, 0, '2008-03-24 17:17:55', '2019-05-26 01:06:05', 0),
(37, 93, 3, 2, 2, 1000, 0, 0, '1975-11-02 21:13:45', '2019-05-26 01:06:05', 0),
(38, 4, 1, 2, 1, 13993, 0, 0, '1983-04-10 09:15:36', '2019-05-26 01:06:05', 0),
(39, 40, 2, 2, 1, 51150, 0, 0, '1978-05-12 04:18:23', '2019-05-26 01:06:05', 0),
(40, 85, 2, 1, 1, 547405121, 0, 0, '1988-07-02 11:04:12', '2019-05-26 01:06:05', 0),
(41, 8, 2, 2, 1, 1000, 0, 0, '2011-10-20 21:37:29', '2019-05-26 01:06:05', 0),
(42, 85, 3, 2, 2, 57098, 0, 0, '2018-11-27 00:43:52', '2019-05-26 01:06:05', 0),
(43, 99, 1, 2, 1, 84465365, 0, 0, '1972-03-16 18:56:40', '2019-05-26 01:06:05', 0),
(44, 42, 1, 2, 2, 50126456, 0, 0, '1975-01-29 14:50:54', '2019-05-26 01:06:05', 0),
(45, 10, 3, 2, 2, 10002, 0, 0, '1999-12-11 18:30:11', '2019-05-26 01:06:05', 0),
(46, 24, 2, 2, 2, 4, 0, 0, '2016-05-04 02:37:37', '2019-05-26 01:06:05', 0),
(47, 90, 2, 1, 2, 127184944, 0, 0, '1997-09-24 16:01:18', '2019-05-26 01:06:05', 0),
(48, 76, 3, 2, 2, 13, 0, 0, '2015-04-09 11:04:28', '2019-05-26 01:06:05', 0),
(49, 8, 1, 1, 2, 1000, 0, 0, '1980-02-23 20:50:37', '2019-05-26 01:06:05', 0),
(50, 14, 3, 2, 2, 202829, 0, 0, '1983-06-11 10:21:27', '2019-05-26 01:06:05', 0),
(51, 46, 3, 1, 2, 5, 0, 0, '2002-06-09 07:06:27', '2019-05-26 01:06:05', 0),
(52, 86, 2, 1, 2, 717750736, 0, 0, '1981-01-20 22:25:50', '2019-05-26 01:06:05', 0),
(53, 91, 2, 2, 1, 4014299, 0, 0, '1980-04-20 23:57:42', '2019-05-26 01:06:05', 0),
(54, 97, 1, 2, 2, 5, 0, 0, '1990-01-08 13:14:31', '2019-05-26 01:06:05', 0),
(55, 13, 2, 2, 2, 2581215, 0, 0, '1983-12-25 18:55:57', '2019-05-26 01:06:05', 0),
(56, 71, 2, 2, 1, 24212, 0, 0, '2001-11-04 05:19:53', '2019-05-26 01:06:05', 0),
(57, 17, 2, 1, 1, 21092386, 0, 0, '2013-10-26 03:43:08', '2019-05-26 01:06:05', 0),
(58, 73, 1, 1, 2, 533, 0, 0, '2015-02-13 22:41:19', '2019-05-26 01:06:05', 0),
(59, 10, 2, 2, 1, 13917, 0, 0, '1976-03-22 07:55:33', '2019-05-26 01:06:05', 0),
(60, 34, 3, 2, 2, 272413, 0, 0, '2008-12-29 01:51:50', '2019-05-26 01:06:05', 0),
(61, 39, 1, 2, 1, 1000, 0, 0, '1996-04-17 21:48:02', '2019-05-26 01:06:05', 0),
(62, 91, 1, 2, 2, 46544, 0, 0, '1976-05-09 00:45:14', '2019-05-26 01:06:05', 0),
(63, 38, 2, 2, 2, 1, 0, 0, '1974-07-21 07:02:39', '2019-05-26 01:06:05', 0),
(64, 18, 1, 1, 1, 36591790, 0, 0, '1990-05-08 05:25:59', '2019-05-26 01:06:05', 0),
(65, 74, 1, 2, 1, 76, 0, 0, '1981-02-14 00:26:31', '2019-05-26 01:06:05', 0),
(66, 15, 3, 2, 2, 9711067, 0, 0, '2008-05-23 16:10:29', '2019-05-26 01:06:05', 0),
(67, 53, 2, 2, 1, 13604, 0, 0, '1993-09-21 10:19:54', '2019-05-26 01:06:05', 0),
(68, 17, 3, 2, 2, 496099781, 0, 0, '1982-04-18 07:10:55', '2019-05-26 01:06:05', 0),
(69, 29, 1, 1, 2, 8, 0, 0, '1987-01-15 18:12:09', '2019-05-26 01:06:05', 0),
(70, 93, 2, 1, 1, 10, 0, 0, '2003-05-28 04:05:16', '2019-05-26 01:06:05', 0),
(71, 76, 3, 1, 2, 1000, 0, 0, '1998-04-06 20:33:21', '2019-05-26 01:06:05', 0),
(72, 1, 1, 1, 1, 7308, 0, 0, '2005-11-28 23:13:52', '2019-05-26 01:06:05', 0),
(73, 79, 1, 2, 2, 39195819, 0, 0, '2016-10-29 03:21:17', '2019-05-26 01:06:05', 0),
(74, 89, 1, 2, 1, 2, 2, 1, '1993-12-03 20:52:32', '2019-05-26 01:11:09', 0),
(75, 8, 1, 2, 1, 4057442, 0, 0, '2007-05-22 19:49:34', '2019-05-26 01:06:05', 0),
(76, 72, 2, 2, 2, 9358050, 0, 0, '2000-02-25 06:57:32', '2019-05-26 01:06:05', 0),
(77, 34, 2, 2, 2, 817, 0, 0, '2000-03-24 01:33:30', '2019-05-26 01:06:05', 0),
(78, 57, 2, 1, 2, 394, 0, 0, '1985-02-05 11:13:27', '2019-05-26 01:06:05', 0),
(79, 79, 2, 2, 1, 1289072, 0, 0, '2001-06-27 00:53:12', '2019-05-26 01:06:05', 0),
(80, 25, 2, 2, 2, 13012, 0, 0, '2008-02-10 20:00:40', '2019-05-26 01:06:05', 0),
(81, 88, 3, 1, 2, 1000, 0, 0, '2011-05-06 11:12:01', '2019-05-26 01:06:05', 0),
(82, 65, 1, 2, 1, 226171, 226171, 1, '2006-02-28 09:33:22', '2019-05-26 01:11:09', 0),
(83, 59, 3, 1, 1, 640689, 0, 0, '2011-09-30 10:16:24', '2019-05-26 01:06:05', 0),
(84, 100, 1, 2, 2, 695, 0, 1, '1998-05-26 23:00:45', '2019-05-26 01:09:58', 0),
(85, 24, 3, 1, 2, 312403640, 0, 0, '1972-04-08 15:45:58', '2019-05-26 01:06:05', 0),
(86, 20, 3, 2, 2, 7661772, 0, 0, '2012-09-15 09:44:40', '2019-05-26 01:06:05', 0),
(87, 28, 1, 2, 1, 42, 0, 0, '2010-03-14 21:59:08', '2019-05-26 01:06:05', 0),
(88, 80, 3, 2, 1, 4274571, 0, 0, '2009-09-12 15:42:56', '2019-05-26 01:06:05', 0),
(89, 12, 2, 2, 1, 2647912, 0, 0, '1976-05-20 22:32:11', '2019-05-26 01:06:05', 0),
(90, 23, 2, 2, 2, 1652, 0, 0, '2006-10-09 03:19:28', '2019-05-26 01:06:05', 0),
(91, 78, 1, 1, 1, 3074, 0, 0, '1992-11-04 03:20:32', '2019-05-26 01:06:05', 0),
(92, 19, 2, 1, 2, 13304831, 0, 0, '2009-07-06 02:40:10', '2019-05-26 01:06:05', 0),
(93, 61, 2, 1, 1, 55, 0, 0, '2010-02-03 01:23:28', '2019-05-26 01:06:05', 0),
(94, 48, 2, 1, 2, 6248182, 0, 0, '1993-08-05 11:34:16', '2019-05-26 01:06:05', 0),
(95, 55, 2, 1, 2, 1000, 0, 0, '2014-07-12 04:50:18', '2019-05-26 01:06:05', 0),
(96, 33, 1, 1, 2, 24156, 0, 0, '1978-05-21 09:39:41', '2019-05-26 01:06:05', 0),
(97, 100, 2, 2, 1, 2473, 0, 0, '2005-01-14 16:25:08', '2019-05-26 01:06:05', 0),
(98, 100, 2, 1, 1, 1000, 0, 0, '2007-06-08 17:32:53', '2019-05-26 01:06:05', 0),
(99, 100, 1, 2, 1, 116695, 0, 0, '1976-07-11 19:28:01', '2019-05-26 01:06:05', 0),
(100, 97, 1, 2, 1, 96845, 0, 0, '1989-02-26 14:12:21', '2019-05-26 01:06:05', 0);

--
-- Triggers `tb_request_donation`
--
DELIMITER $$
CREATE TRIGGER `ad_tb_request_donation` AFTER DELETE ON `tb_request_donation` FOR EACH ROW BEGIN
  INSERT INTO tb_data_log (action, action_time)
  VALUES('A row has been deleted in tb_request_donations', NOW());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `ai_tb_request_donations` AFTER INSERT ON `tb_request_donation` FOR EACH ROW BEGIN
  INSERT INTO tb_data_log (action, action_time)
  VALUES('Data was inserted in tb_request_donation', NOW());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `au_tb_request_donations` AFTER UPDATE ON `tb_request_donation` FOR EACH ROW BEGIN
  INSERT INTO tb_data_log (action, action_time)
  VALUES('tb_request_donations has been updated', NOW());
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_role`
--

CREATE TABLE `tb_role` (
  `id` int(11) NOT NULL,
  `role_name` varchar(300) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_role`
--

INSERT INTO `tb_role` (`id`, `role_name`, `create_date`, `update_date`, `isdeleted`) VALUES
(1, 'Team Leader', '2019-05-15 20:35:42', '2019-05-15 20:35:42', 0),
(2, 'Member', '2019-05-15 20:35:42', '2019-05-15 20:35:42', 0),
(3, 'Donor', '2019-05-19 18:19:12', '2019-05-19 18:19:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_send_through`
--

CREATE TABLE `tb_send_through` (
  `id` int(11) NOT NULL,
  `through_tech` varchar(150) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_send_through`
--

INSERT INTO `tb_send_through` (`id`, `through_tech`, `create_date`, `update_date`, `isdeleted`) VALUES
(1, 'Whatsapp', '2019-05-15 20:36:01', '2019-05-15 20:36:01', 0),
(2, 'Email', '2019-05-15 20:36:01', '2019-05-15 20:36:01', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_send_to`
--

CREATE TABLE `tb_send_to` (
  `id` int(11) NOT NULL,
  `receiver_name` varchar(300) NOT NULL,
  `receiver_mobile` int(11) NOT NULL,
  `receiver_Email` varchar(100) NOT NULL,
  `send_throughID` int(11) NOT NULL,
  `send_by` int(11) NOT NULL,
  `ref_id` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `tb_send_to`
--
DELIMITER $$
CREATE TRIGGER `ad_tb_send_to` AFTER DELETE ON `tb_send_to` FOR EACH ROW BEGIN
  INSERT INTO tb_data_log (action, action_time)
  VALUES('A row has been deleted in tb_send_to', NOW());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `ai_tb_send_to` AFTER INSERT ON `tb_send_to` FOR EACH ROW BEGIN
  INSERT INTO tb_data_log (action, action_time)
  VALUES('Data have been inserted in Tb_send_to', NOW());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `au_tb_send_to` AFTER UPDATE ON `tb_send_to` FOR EACH ROW BEGIN
  INSERT INTO tb_data_log (action, action_time)
  VALUES('Tb_send_to has been updated', NOW());
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_theme`
--

CREATE TABLE `tb_theme` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` longtext NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_theme`
--

INSERT INTO `tb_theme` (`id`, `name`, `link`, `create_date`, `update_date`, `isdeleted`) VALUES
(1, 'Blue', '../../css/libraries/style.blue.css~../../css/profile-blue.css', '2019-05-15 20:36:33', '2019-05-15 20:36:33', 0),
(2, 'Red', '../../css/libraries/style.red.css~../../css/profile-red.css', '2019-05-15 20:36:33', '2019-05-15 20:36:33', 0),
(3, 'Green', '../../css/libraries/style.green.css~../../css/profile-green.css', '2019-05-15 20:36:33', '2019-05-15 20:36:33', 0),
(4, 'Pink', '../../css/libraries/style.pink.css~../../css/profile-pink.css', '2019-05-15 20:36:33', '2019-05-15 20:36:33', 0),
(5, 'Violet', '../../css/libraries/style.violet.css~../../css/profile-violet.css', '2019-05-15 20:36:33', '2019-05-15 20:36:33', 0),
(6, 'Sea', '../../css/libraries/style.sea.css~../../css/profile-sea.css', '2019-05-15 20:36:33', '2019-05-15 20:36:33', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaltion`
--

CREATE TABLE `tb_transaltion` (
  `id` int(11) NOT NULL,
  `en` varchar(30) DEFAULT NULL,
  `ar` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_transaltion`
--

INSERT INTO `tb_transaltion` (`id`, `en`, `ar`) VALUES
(1, 'Dashboard', 'لوحة القيادة'),
(2, 'Logs', 'سجلات'),
(3, 'Foundation Members', 'أعضاء المؤسسة'),
(4, 'Insert Member', 'إدراج عضو'),
(5, 'List Members', 'قائمة الأعضاء'),
(6, 'Notification', 'اشعارات'),
(7, 'Manual Notification', 'مانيول اشعارات'),
(8, 'Donation', 'تبرعانت'),
(9, 'Requested Donations', 'التبرعات المطلوبة'),
(10, 'Paid Donations', 'التبرعات المدفوعة'),
(11, 'Projects', 'مشاريع'),
(12, 'Insert Project', 'أدخل المشروع'),
(13, 'List Projects', 'قائمة المشاريع'),
(14, 'Settings', 'الإعدادات');

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `id` int(11) NOT NULL,
  `rand_number` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`id`, `rand_number`, `usertypeID`, `create_date`, `update_date`, `isdeleted`) VALUES
(1, 29373, 5, '2019-05-15 20:36:53', '2019-05-17 01:46:36', 0),
(2, 384, 3, '1976-06-01 04:07:21', '2019-05-24 05:32:07', 0),
(3, 7971813, 5, '1984-12-09 08:31:35', '2019-05-24 05:31:29', 0),
(4, 26387497, 3, '1988-12-03 07:34:26', '2019-05-24 05:31:10', 0),
(5, 560583, 5, '1977-06-30 19:59:02', '2019-05-24 05:32:07', 0),
(6, 0, 5, '2004-10-23 04:27:53', '2019-05-24 05:32:07', 0),
(7, 2264563, 5, '2011-06-17 08:30:11', '2019-05-24 05:31:29', 0),
(8, 9576068, 6, '2018-05-31 10:33:39', '2019-05-24 05:32:07', 0),
(9, 0, 4, '1997-08-30 06:44:27', '2019-05-24 05:32:07', 0),
(10, 599475035, 5, '1976-10-05 19:10:53', '2019-05-24 05:32:07', 0),
(11, 892664393, 5, '2012-09-08 18:03:36', '2019-05-24 05:32:07', 0),
(12, 9, 5, '1990-01-25 13:48:52', '2019-05-24 05:32:07', 0),
(13, 37254348, 6, '2002-07-16 01:53:46', '2019-05-24 05:32:07', 0),
(14, 30738, 5, '1990-06-24 23:06:39', '2019-05-24 05:32:07', 0),
(15, 7121571, 5, '2011-09-13 11:37:27', '2019-05-24 05:32:07', 0),
(16, 288896436, 5, '1976-08-26 00:22:47', '2019-05-24 05:32:07', 0),
(17, 4805, 5, '1993-06-24 16:05:26', '2019-05-24 05:32:07', 0),
(18, 8115, 4, '1975-07-22 22:07:30', '2019-05-24 05:32:07', 0),
(19, 8281912, 6, '1990-08-09 13:06:29', '2019-05-24 05:32:07', 0),
(20, 27594, 4, '2009-10-22 10:06:47', '2019-05-24 05:31:29', 0),
(21, 392639863, 3, '2005-04-19 19:32:12', '2019-05-24 05:32:07', 0),
(22, 3211645, 3, '1976-03-11 17:45:51', '2019-05-24 05:32:07', 0),
(23, 11268534, 6, '1985-08-01 19:00:54', '2019-05-24 05:32:07', 0),
(24, 719, 4, '1981-03-14 07:21:40', '2019-05-24 05:32:07', 0),
(25, 2473303, 4, '1977-07-06 05:19:08', '2019-05-24 05:31:29', 0),
(26, 65393, 6, '1975-02-28 07:37:41', '2019-05-24 05:32:07', 0),
(27, 99, 4, '1998-07-20 18:29:15', '2019-05-24 05:32:07', 0),
(28, 6, 4, '1997-07-13 15:14:52', '2019-05-24 05:32:07', 0),
(29, 90119450, 3, '2002-07-06 23:12:58', '2019-05-24 05:32:07', 0),
(30, 64306552, 3, '1975-05-11 07:34:56', '2019-05-24 05:32:07', 0),
(31, 777568856, 5, '2006-11-06 10:07:42', '2019-05-24 05:31:29', 0),
(32, 73917, 3, '2018-10-05 20:36:14', '2019-05-24 05:31:29', 0),
(33, 58107577, 3, '1993-12-25 00:03:17', '2019-05-24 05:32:07', 0),
(34, 6, 3, '2015-02-07 13:03:40', '2019-05-24 05:32:07', 0),
(35, 8, 4, '2016-07-19 18:05:15', '2019-05-24 05:32:07', 0),
(36, 1847, 4, '1998-07-17 21:43:45', '2019-05-24 05:31:29', 0),
(37, 7668, 4, '2014-07-28 17:11:58', '2019-05-24 05:32:07', 0),
(38, 970346261, 5, '2005-11-07 02:05:20', '2019-05-24 05:32:07', 0),
(39, 9372, 3, '1991-08-25 18:15:20', '2019-05-24 05:32:07', 0),
(40, 0, 3, '2000-10-23 07:51:31', '2019-05-24 05:32:07', 0),
(41, 296347266, 4, '1983-02-04 09:33:05', '2019-05-24 05:32:07', 0),
(42, 3274929, 5, '1993-10-06 12:57:12', '2019-05-24 05:32:07', 0),
(43, 0, 6, '1970-05-18 17:11:03', '2019-05-24 05:32:07', 0),
(44, 61732, 4, '1978-04-05 07:47:59', '2019-05-24 05:32:07', 0),
(45, 0, 3, '1971-09-23 21:14:23', '2019-05-24 05:32:07', 0),
(46, 3, 3, '2002-06-22 08:39:48', '2019-05-24 05:32:07', 0),
(47, 747977, 5, '1972-02-09 21:21:57', '2019-05-24 05:32:07', 0),
(48, 56519981, 4, '1991-06-04 05:59:36', '2019-05-24 05:32:07', 0),
(49, 9092, 6, '1971-07-15 21:11:05', '2019-05-24 05:32:07', 0),
(50, 78379655, 3, '2015-11-15 05:20:25', '2019-05-24 05:32:07', 0),
(51, 174, 5, '1997-01-06 22:52:00', '2019-05-24 05:32:07', 0),
(52, 3, 4, '1976-07-19 04:08:58', '2019-05-24 05:31:29', 0),
(53, 181898680, 6, '1980-04-16 23:10:15', '2019-05-24 05:32:07', 0),
(54, 22, 4, '1996-07-10 02:57:01', '2019-05-24 05:32:07', 0),
(55, 0, 6, '2000-03-03 05:16:47', '2019-05-24 05:31:29', 0),
(56, 68472394, 6, '1997-03-17 09:01:53', '2019-05-24 05:32:07', 0),
(57, 24773856, 5, '1975-10-29 09:55:27', '2019-05-24 05:32:07', 0),
(58, 16, 6, '2003-12-21 03:57:30', '2019-05-24 05:32:07', 0),
(59, 0, 3, '1970-01-17 08:28:06', '2019-05-24 05:31:10', 0),
(60, 3, 6, '2005-09-22 07:35:57', '2019-05-24 05:32:07', 0),
(61, 6508053, 5, '2013-02-08 02:13:17', '2019-05-24 05:31:29', 0),
(62, 8451235, 4, '1997-03-17 18:02:45', '2019-05-24 05:32:07', 0),
(63, 2, 5, '2000-11-11 06:28:11', '2019-05-24 05:31:29', 0),
(64, 8, 6, '2003-04-12 07:41:56', '2019-05-24 05:31:29', 0),
(65, 2555509, 3, '1997-03-14 10:58:12', '2019-05-24 05:32:07', 0),
(66, 773, 4, '1993-07-01 13:40:23', '2019-05-24 05:32:07', 0),
(67, 322856, 6, '1972-12-06 10:07:32', '2019-05-24 05:32:07', 0),
(68, 802004295, 6, '2008-06-29 02:23:59', '2019-05-24 05:31:29', 0),
(69, 30339, 4, '1986-01-06 15:10:51', '2019-05-24 05:32:07', 0),
(70, 4601, 6, '1983-07-10 04:19:21', '2019-05-24 05:32:07', 0),
(71, 149680268, 5, '1971-12-04 05:13:11', '2019-05-24 05:32:07', 0),
(72, 65592, 6, '1993-08-10 12:16:50', '2019-05-24 05:32:07', 0),
(73, 646, 4, '2006-01-18 09:37:23', '2019-05-24 05:32:07', 0),
(74, 3934746, 5, '2008-04-29 07:19:53', '2019-05-24 05:32:07', 0),
(75, 876, 3, '1988-10-25 07:32:01', '2019-05-24 05:31:29', 0),
(76, 909, 3, '1989-01-27 06:05:04', '2019-05-24 05:32:07', 0),
(77, 5097564, 6, '2002-11-07 21:21:41', '2019-05-24 05:32:07', 0),
(78, 2, 6, '2012-10-08 01:28:20', '2019-05-24 05:32:07', 0),
(79, 62, 4, '1995-08-05 08:21:35', '2019-05-24 05:32:07', 0),
(80, 60, 3, '1992-09-02 08:21:13', '2019-05-24 05:32:07', 0),
(81, 31, 5, '1979-12-31 09:41:01', '2019-05-24 05:32:07', 0),
(82, 9852, 6, '1993-07-08 22:51:18', '2019-05-24 05:32:07', 0),
(83, 1, 4, '1987-12-14 13:43:03', '2019-05-24 05:32:07', 0),
(84, 372079, 4, '1989-03-09 20:22:59', '2019-05-24 05:31:29', 0),
(85, 40788091, 6, '2015-04-10 23:30:16', '2019-05-24 05:32:07', 0),
(86, 905805, 4, '1986-12-26 04:40:30', '2019-05-24 05:31:29', 0),
(87, 9661, 4, '1987-11-05 12:54:29', '2019-05-24 05:32:07', 0),
(88, 5, 6, '1996-08-01 11:28:18', '2019-05-24 05:32:07', 0),
(89, 4902243, 4, '1983-12-25 04:05:09', '2019-05-24 05:32:07', 0),
(90, 62223, 6, '1980-09-18 23:31:34', '2019-05-24 05:32:07', 0),
(91, 47327, 4, '2002-12-07 03:01:39', '2019-05-24 05:32:07', 0),
(92, 60294, 3, '1991-08-06 18:09:13', '2019-05-24 05:32:07', 0),
(93, 6, 6, '1998-03-13 18:28:44', '2019-05-24 05:32:07', 0),
(94, 54098, 6, '1981-03-21 14:09:20', '2019-05-24 05:31:29', 0),
(95, 6730, 5, '1995-07-31 01:43:46', '2019-05-24 05:32:07', 0),
(96, 0, 6, '1987-07-03 09:29:31', '2019-05-24 05:32:07', 0),
(97, 610511356, 6, '1993-08-09 19:11:52', '2019-05-24 05:32:07', 0),
(98, 767697206, 4, '1996-05-22 07:05:11', '2019-05-24 05:32:07', 0),
(99, 45, 5, '2019-05-10 05:48:12', '2019-05-24 05:32:07', 0),
(100, 54874731, 4, '1977-01-15 11:57:46', '2019-05-24 05:32:07', 0),
(101, 855, 5, '1975-02-16 11:53:09', '2019-05-24 05:32:07', 0);

--
-- Triggers `tb_users`
--
DELIMITER $$
CREATE TRIGGER `ad_tb_users` AFTER DELETE ON `tb_users` FOR EACH ROW BEGIN
  INSERT INTO tb_data_log (action, action_time)
  VALUES('A row has been deleted in tb_project', NOW());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `ai_tb_users` AFTER INSERT ON `tb_users` FOR EACH ROW BEGIN
  INSERT INTO tb_data_log (action, action_time)
  VALUES('Data was inserted in tb_users', NOW());
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `au_tb_users` AFTER UPDATE ON `tb_users` FOR EACH ROW BEGIN
  INSERT INTO tb_data_log (action, action_time)
  VALUES('tb_request_donations has been updated', NOW());
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_usertype`
--

CREATE TABLE `tb_usertype` (
  `id` int(11) NOT NULL,
  `usertype_name` varchar(300) NOT NULL,
  `parentID` int(11) DEFAULT '0',
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_usertype`
--

INSERT INTO `tb_usertype` (`id`, `usertype_name`, `parentID`, `create_date`, `update_date`, `isdeleted`) VALUES
(1, 'Admin', 0, '2019-05-15 20:37:16', '2019-05-15 20:37:16', 0),
(2, 'Donar', 0, '2019-05-15 20:37:16', '2019-05-15 20:37:16', 0),
(3, 'New Donar', 2, '2019-05-15 20:37:16', '2019-05-15 20:37:16', 0),
(4, 'ML Admin', 1, '2019-05-24 05:30:18', '2019-05-24 14:50:58', 0),
(5, 'HL Admin', 1, '2019-05-15 20:37:16', '2019-05-15 20:37:16', 0),
(6, 'LL Admin', 1, '2019-05-23 23:01:42', '2019-05-23 23:01:42', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rtb_option_payment_method`
--
ALTER TABLE `rtb_option_payment_method`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_methodID` (`payment_methodID`),
  ADD KEY `optionID` (`optionID`);

--
-- Indexes for table `rtb_option_usertype`
--
ALTER TABLE `rtb_option_usertype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `optionID` (`optionID`),
  ADD KEY `usertypeID` (`usertypeID`);

--
-- Indexes for table `rtb_page_component_usertype`
--
ALTER TABLE `rtb_page_component_usertype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usertypeID` (`usertypeID`),
  ADD KEY `page_componentID` (`page_componentID`);

--
-- Indexes for table `rtb_project_img`
--
ALTER TABLE `rtb_project_img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projectID` (`projectID`),
  ADD KEY `imgID` (`imgID`);

--
-- Indexes for table `rtb_req_donation_project`
--
ALTER TABLE `rtb_req_donation_project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `req_donationID` (`req_donationID`),
  ADD KEY `projectID` (`projectID`);

--
-- Indexes for table `rtb_usertype_page`
--
ALTER TABLE `rtb_usertype_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usertypeID` (`usertypeID`),
  ADD KEY `pageID` (`pageID`);

--
-- Indexes for table `rtb_usertype_theme`
--
ALTER TABLE `rtb_usertype_theme`
  ADD PRIMARY KEY (`id`),
  ADD KEY `themeID` (`themeID`),
  ADD KEY `userID` (`usertypeID`);

--
-- Indexes for table `rtb_user_project`
--
ALTER TABLE `rtb_user_project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projectID` (`projectID`),
  ADD KEY `roleID` (`roleID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `tb_address`
--
ALTER TABLE `tb_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_daily_donation`
--
ALTER TABLE `tb_daily_donation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projectCategoryID` (`projectCategoryID`);

--
-- Indexes for table `tb_data_log`
--
ALTER TABLE `tb_data_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_donation_reason`
--
ALTER TABLE `tb_donation_reason`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sendtoID` (`sendtoID`);

--
-- Indexes for table `tb_errors`
--
ALTER TABLE `tb_errors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `error_code` (`error_code`);

--
-- Indexes for table `tb_forget_password_data`
--
ALTER TABLE `tb_forget_password_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_gender`
--
ALTER TABLE `tb_gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_html`
--
ALTER TABLE `tb_html`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pageID` (`pageID`);

--
-- Indexes for table `tb_logins`
--
ALTER TABLE `tb_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `tb_main_page`
--
ALTER TABLE `tb_main_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usertypeID` (`usertypeID`);

--
-- Indexes for table `tb_messages`
--
ALTER TABLE `tb_messages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `message_code` (`message_code`);

--
-- Indexes for table `tb_nationality`
--
ALTER TABLE `tb_nationality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_options_payments`
--
ALTER TABLE `tb_options_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `typeID` (`typeID`);

--
-- Indexes for table `tb_options_usertypes`
--
ALTER TABLE `tb_options_usertypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `typeID` (`typeID`);

--
-- Indexes for table `tb_option_payment_values`
--
ALTER TABLE `tb_option_payment_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userID` (`userID`),
  ADD KEY `paymentID` (`paymentID`),
  ADD KEY `optionPaymentID` (`optionPaymentID`);

--
-- Indexes for table `tb_option_type`
--
ALTER TABLE `tb_option_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_option_user_values`
--
ALTER TABLE `tb_option_user_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `optionUserID` (`optionUserID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `userID_2` (`userID`);

--
-- Indexes for table `tb_pages`
--
ALTER TABLE `tb_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_page_components`
--
ALTER TABLE `tb_page_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_page_icon`
--
ALTER TABLE `tb_page_icon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pageID` (`pageID`);

--
-- Indexes for table `tb_payment_method`
--
ALTER TABLE `tb_payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_phone_numbers`
--
ALTER TABLE `tb_phone_numbers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `tb_profile_photo`
--
ALTER TABLE `tb_profile_photo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `tb_project`
--
ALTER TABLE `tb_project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projectcategoryID` (`projectcategoryID`),
  ADD KEY `projectcategoryID_2` (`projectcategoryID`);

--
-- Indexes for table `tb_project_category`
--
ALTER TABLE `tb_project_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_project_image`
--
ALTER TABLE `tb_project_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_reference_paper`
--
ALTER TABLE `tb_reference_paper`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserID` (`userID`);

--
-- Indexes for table `tb_request_donation`
--
ALTER TABLE `tb_request_donation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donationReasonID` (`donationReasonID`),
  ADD KEY `paymentMethodID` (`paymentMethodID`),
  ADD KEY `paymentMethodID_2` (`paymentMethodID`),
  ADD KEY `donationReasonID_2` (`donationReasonID`),
  ADD KEY `tb_request_donation_ibfk_3` (`projectCategoryID`),
  ADD KEY `tb_request_donation_ibfk_4` (`userID`);

--
-- Indexes for table `tb_role`
--
ALTER TABLE `tb_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_send_through`
--
ALTER TABLE `tb_send_through`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_send_to`
--
ALTER TABLE `tb_send_to`
  ADD PRIMARY KEY (`id`),
  ADD KEY `send_throughID` (`send_throughID`),
  ADD KEY `send_by` (`send_by`),
  ADD KEY `ref_id` (`ref_id`);

--
-- Indexes for table `tb_theme`
--
ALTER TABLE `tb_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_transaltion`
--
ALTER TABLE `tb_transaltion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usertypeID` (`usertypeID`);

--
-- Indexes for table `tb_usertype`
--
ALTER TABLE `tb_usertype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rtb_option_payment_method`
--
ALTER TABLE `rtb_option_payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rtb_option_usertype`
--
ALTER TABLE `rtb_option_usertype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rtb_page_component_usertype`
--
ALTER TABLE `rtb_page_component_usertype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rtb_project_img`
--
ALTER TABLE `rtb_project_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rtb_req_donation_project`
--
ALTER TABLE `rtb_req_donation_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `rtb_usertype_page`
--
ALTER TABLE `rtb_usertype_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rtb_usertype_theme`
--
ALTER TABLE `rtb_usertype_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rtb_user_project`
--
ALTER TABLE `rtb_user_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tb_address`
--
ALTER TABLE `tb_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `tb_daily_donation`
--
ALTER TABLE `tb_daily_donation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tb_data_log`
--
ALTER TABLE `tb_data_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=851;

--
-- AUTO_INCREMENT for table `tb_donation_reason`
--
ALTER TABLE `tb_donation_reason`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_errors`
--
ALTER TABLE `tb_errors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tb_forget_password_data`
--
ALTER TABLE `tb_forget_password_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_gender`
--
ALTER TABLE `tb_gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_html`
--
ALTER TABLE `tb_html`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_logins`
--
ALTER TABLE `tb_logins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `tb_main_page`
--
ALTER TABLE `tb_main_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_messages`
--
ALTER TABLE `tb_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_nationality`
--
ALTER TABLE `tb_nationality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `tb_options_payments`
--
ALTER TABLE `tb_options_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_options_usertypes`
--
ALTER TABLE `tb_options_usertypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_option_payment_values`
--
ALTER TABLE `tb_option_payment_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_option_type`
--
ALTER TABLE `tb_option_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_option_user_values`
--
ALTER TABLE `tb_option_user_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT for table `tb_pages`
--
ALTER TABLE `tb_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_page_components`
--
ALTER TABLE `tb_page_components`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_page_icon`
--
ALTER TABLE `tb_page_icon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_payment_method`
--
ALTER TABLE `tb_payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_phone_numbers`
--
ALTER TABLE `tb_phone_numbers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `tb_profile_photo`
--
ALTER TABLE `tb_profile_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_project`
--
ALTER TABLE `tb_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `tb_project_category`
--
ALTER TABLE `tb_project_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_project_image`
--
ALTER TABLE `tb_project_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_reference_paper`
--
ALTER TABLE `tb_reference_paper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `tb_request_donation`
--
ALTER TABLE `tb_request_donation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `tb_role`
--
ALTER TABLE `tb_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_send_through`
--
ALTER TABLE `tb_send_through`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_send_to`
--
ALTER TABLE `tb_send_to`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_theme`
--
ALTER TABLE `tb_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_transaltion`
--
ALTER TABLE `tb_transaltion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `tb_usertype`
--
ALTER TABLE `tb_usertype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rtb_option_payment_method`
--
ALTER TABLE `rtb_option_payment_method`
  ADD CONSTRAINT `rtb_option_payment_method_ibfk_1` FOREIGN KEY (`optionID`) REFERENCES `tb_options_payments` (`id`),
  ADD CONSTRAINT `rtb_option_payment_method_ibfk_2` FOREIGN KEY (`payment_methodID`) REFERENCES `tb_payment_method` (`id`);

--
-- Constraints for table `rtb_option_usertype`
--
ALTER TABLE `rtb_option_usertype`
  ADD CONSTRAINT `rtb_option_usertype_ibfk_1` FOREIGN KEY (`usertypeID`) REFERENCES `tb_usertype` (`id`),
  ADD CONSTRAINT `rtb_option_usertype_ibfk_2` FOREIGN KEY (`optionID`) REFERENCES `tb_options_usertypes` (`id`);

--
-- Constraints for table `rtb_page_component_usertype`
--
ALTER TABLE `rtb_page_component_usertype`
  ADD CONSTRAINT `rtb_page_component_usertype_ibfk_1` FOREIGN KEY (`usertypeID`) REFERENCES `tb_usertype` (`id`),
  ADD CONSTRAINT `rtb_page_component_usertype_ibfk_2` FOREIGN KEY (`page_componentID`) REFERENCES `tb_page_components` (`id`);

--
-- Constraints for table `rtb_project_img`
--
ALTER TABLE `rtb_project_img`
  ADD CONSTRAINT `rtb_project_img_ibfk_1` FOREIGN KEY (`projectID`) REFERENCES `tb_project` (`id`),
  ADD CONSTRAINT `rtb_project_img_ibfk_2` FOREIGN KEY (`imgID`) REFERENCES `tb_project_image` (`id`);

--
-- Constraints for table `rtb_req_donation_project`
--
ALTER TABLE `rtb_req_donation_project`
  ADD CONSTRAINT `tb_req_donation_project_ibfk_1` FOREIGN KEY (`projectID`) REFERENCES `tb_project` (`id`),
  ADD CONSTRAINT `tb_req_donation_project_ibfk_2` FOREIGN KEY (`req_donationID`) REFERENCES `tb_request_donation` (`id`);

--
-- Constraints for table `rtb_usertype_page`
--
ALTER TABLE `rtb_usertype_page`
  ADD CONSTRAINT `rtb_usertype_page_ibfk_1` FOREIGN KEY (`usertypeID`) REFERENCES `tb_usertype` (`id`),
  ADD CONSTRAINT `rtb_usertype_page_ibfk_2` FOREIGN KEY (`pageID`) REFERENCES `tb_pages` (`id`);

--
-- Constraints for table `rtb_usertype_theme`
--
ALTER TABLE `rtb_usertype_theme`
  ADD CONSTRAINT `rtb_usertype_theme_ibfk_1` FOREIGN KEY (`usertypeID`) REFERENCES `tb_usertype` (`id`),
  ADD CONSTRAINT `rtb_usertype_theme_ibfk_2` FOREIGN KEY (`themeID`) REFERENCES `tb_theme` (`id`);

--
-- Constraints for table `rtb_user_project`
--
ALTER TABLE `rtb_user_project`
  ADD CONSTRAINT `rtb_user_project_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `tb_users` (`id`),
  ADD CONSTRAINT `rtb_user_project_ibfk_2` FOREIGN KEY (`projectID`) REFERENCES `tb_project` (`id`),
  ADD CONSTRAINT `rtb_user_project_ibfk_3` FOREIGN KEY (`roleID`) REFERENCES `tb_role` (`id`);

--
-- Constraints for table `tb_daily_donation`
--
ALTER TABLE `tb_daily_donation`
  ADD CONSTRAINT `tb_daily_donation_ibfk_1` FOREIGN KEY (`projectCategoryID`) REFERENCES `tb_project_category` (`id`);

--
-- Constraints for table `tb_html`
--
ALTER TABLE `tb_html`
  ADD CONSTRAINT `tb_html_ibfk_1` FOREIGN KEY (`pageID`) REFERENCES `tb_pages` (`id`);

--
-- Constraints for table `tb_logins`
--
ALTER TABLE `tb_logins`
  ADD CONSTRAINT `tb_logins_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `tb_users` (`id`);

--
-- Constraints for table `tb_options_payments`
--
ALTER TABLE `tb_options_payments`
  ADD CONSTRAINT `tb_options_payments_ibfk_1` FOREIGN KEY (`typeID`) REFERENCES `tb_option_type` (`id`);

--
-- Constraints for table `tb_options_usertypes`
--
ALTER TABLE `tb_options_usertypes`
  ADD CONSTRAINT `tb_options_usertypes_ibfk_1` FOREIGN KEY (`typeID`) REFERENCES `tb_option_type` (`id`);

--
-- Constraints for table `tb_option_payment_values`
--
ALTER TABLE `tb_option_payment_values`
  ADD CONSTRAINT `tb_option_payment_values_ibfk_1` FOREIGN KEY (`optionPaymentID`) REFERENCES `rtb_option_payment_method` (`id`),
  ADD CONSTRAINT `tb_option_payment_values_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `tb_users` (`id`),
  ADD CONSTRAINT `tb_option_payment_values_ibfk_3` FOREIGN KEY (`paymentID`) REFERENCES `tb_payment_method` (`id`);

--
-- Constraints for table `tb_option_user_values`
--
ALTER TABLE `tb_option_user_values`
  ADD CONSTRAINT `tb_option_user_values_ibfk_1` FOREIGN KEY (`optionUserID`) REFERENCES `rtb_option_usertype` (`id`),
  ADD CONSTRAINT `tb_option_user_values_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `tb_users` (`id`);

--
-- Constraints for table `tb_page_icon`
--
ALTER TABLE `tb_page_icon`
  ADD CONSTRAINT `tb_page_icon_ibfk_1` FOREIGN KEY (`pageID`) REFERENCES `tb_pages` (`id`);

--
-- Constraints for table `tb_phone_numbers`
--
ALTER TABLE `tb_phone_numbers`
  ADD CONSTRAINT `tb_phone_numbers_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `tb_users` (`id`);

--
-- Constraints for table `tb_profile_photo`
--
ALTER TABLE `tb_profile_photo`
  ADD CONSTRAINT `tb_profile_photo_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `tb_users` (`id`);

--
-- Constraints for table `tb_project`
--
ALTER TABLE `tb_project`
  ADD CONSTRAINT `tb_project_ibfk_1` FOREIGN KEY (`projectcategoryID`) REFERENCES `tb_project_category` (`id`);

--
-- Constraints for table `tb_reference_paper`
--
ALTER TABLE `tb_reference_paper`
  ADD CONSTRAINT `tb_reference_paper_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `tb_users` (`id`);

--
-- Constraints for table `tb_request_donation`
--
ALTER TABLE `tb_request_donation`
  ADD CONSTRAINT `tb_request_donation_ibfk_1` FOREIGN KEY (`donationReasonID`) REFERENCES `tb_donation_reason` (`id`),
  ADD CONSTRAINT `tb_request_donation_ibfk_2` FOREIGN KEY (`paymentMethodID`) REFERENCES `tb_payment_method` (`id`),
  ADD CONSTRAINT `tb_request_donation_ibfk_3` FOREIGN KEY (`projectCategoryID`) REFERENCES `tb_project_category` (`id`),
  ADD CONSTRAINT `tb_request_donation_ibfk_4` FOREIGN KEY (`userID`) REFERENCES `tb_users` (`id`);

--
-- Constraints for table `tb_send_to`
--
ALTER TABLE `tb_send_to`
  ADD CONSTRAINT `tb_send_to_ibfk_1` FOREIGN KEY (`send_throughID`) REFERENCES `tb_send_through` (`id`),
  ADD CONSTRAINT `tb_send_to_ibfk_2` FOREIGN KEY (`send_by`) REFERENCES `tb_users` (`id`);

--
-- Constraints for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD CONSTRAINT `tb_users_ibfk_1` FOREIGN KEY (`usertypeID`) REFERENCES `tb_usertype` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
