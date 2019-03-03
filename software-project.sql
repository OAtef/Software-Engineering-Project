-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2019 at 07:42 PM
-- Server version: 5.6.37
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `rtb_html_links`
--

CREATE TABLE IF NOT EXISTS `rtb_html_links` (
  `id` int(11) NOT NULL,
  `htmlID` int(11) NOT NULL,
  `linkID` int(11) NOT NULL,
  `createdTime` timestamp NOT NULL,
  `updatedTime` timestamp NOT NULL,
  `isdeleted` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rtb_option_payment`
--

CREATE TABLE IF NOT EXISTS `rtb_option_payment` (
  `id` int(11) NOT NULL,
  `optionID` int(11) NOT NULL,
  `paymentID` int(11) NOT NULL,
  `createdTime` timestamp NOT NULL,
  `updatedTime` timestamp NOT NULL,
  `isdeleted` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rtb_option_user`
--

CREATE TABLE IF NOT EXISTS `rtb_option_user` (
  `id` int(11) NOT NULL,
  `optionID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `createdTime` timestamp NOT NULL,
  `updatedTime` timestamp NOT NULL,
  `isdeleted` bit(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rtb_option_user`
--

INSERT INTO `rtb_option_user` (`id`, `optionID`, `usertypeID`, `createdTime`, `updatedTime`, `isdeleted`) VALUES
(1, 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(2, 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(3, 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(4, 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(5, 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `rtb_usertype_links`
--

CREATE TABLE IF NOT EXISTS `rtb_usertype_links` (
  `id` int(11) NOT NULL,
  `typeID` int(11) NOT NULL,
  `linkID` int(11) NOT NULL,
  `createdTime` timestamp NOT NULL,
  `updatedTime` timestamp NOT NULL,
  `isdeleted` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rtb_user_donation`
--

CREATE TABLE IF NOT EXISTS `rtb_user_donation` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `donationID` int(11) NOT NULL,
  `createdTime` timestamp NOT NULL,
  `updatedTime` timestamp NOT NULL,
  `isdeleted` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rtb_user_project`
--

CREATE TABLE IF NOT EXISTS `rtb_user_project` (
  `id` int(11) NOT NULL,
  `roleID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `projectID` int(11) NOT NULL,
  `createdTime` timestamp NOT NULL,
  `updatedTime` timestamp NOT NULL,
  `isdeleted` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_address`
--

CREATE TABLE IF NOT EXISTS `tb_address` (
  `id` int(11) NOT NULL,
  `address_name` varchar(255) DEFAULT NULL,
  `addresstypeID` int(11) DEFAULT NULL,
  `parentID` int(11) DEFAULT NULL,
  `createdTime` timestamp NOT NULL,
  `updatedTime` timestamp NOT NULL,
  `isdeleted` bit(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_address`
--

INSERT INTO `tb_address` (`id`, `address_name`, `addresstypeID`, `parentID`, `createdTime`, `updatedTime`, `isdeleted`) VALUES
(1, 'Egypt', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(2, 'Alexandria', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(3, 'Aswan', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(4, 'Asyut', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(5, 'Beni Suef', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(6, 'Beheira', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(7, 'Cairo', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(8, 'Damietta', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(9, 'Dakahlia', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(10, 'El Wadi El Gedid', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(11, 'Faiyum', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(12, 'Gharbia', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(13, 'Giza', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(14, 'Ismailia', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(15, 'Kafr El Sheikh', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(16, 'Luxor', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(17, 'Monufia', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(18, 'Minya', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(19, 'Matruh', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(20, 'North Sinai', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(21, 'Port Said', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(22, 'Qena', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(23, 'Qalyubia', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(24, 'Red Sea', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(25, 'Suez', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(26, 'Sharqia', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(27, 'South Sinai', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(28, 'Sohag', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(31, 'Kafr al-Zayat', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(30, 'El Mahalla', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(29, 'Tanta', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(34, 'Port Said', 2, 21, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(35, 'Giza', 2, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(63, 'Cairo', 2, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(32, 'Zifta', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(33, 'Basyoun', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(36, 'Samannoud', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(37, 'Alexandria', 2, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(38, 'Ismailia', 2, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(39, 'At-Tall al-Kabir', 2, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(40, 'Suez', 2, 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(41, 'Kom Ombo', 2, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(42, 'Aswan', 2, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(43, 'Edfu', 2, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(44, 'El Kharga', 2, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(45, 'El-Kanater al-Kyria', 2, 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(46, 'Banha', 2, 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(47, 'Shibin al-Qanater', 2, 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(48, 'Shubra el-Khema', 2, 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(49, 'Khusus', 2, 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(50, 'Qalyub', 2, 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(51, 'Khanka', 2, 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(52, 'El Ubour', 2, 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(53, 'Tukh', 2, 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(54, 'Kafr el-Dawwar', 2, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(55, 'Rashed', 2, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(56, 'Abul Matamir', 2, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(57, 'Damanhur', 2, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(58, 'Edko', 2, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(59, 'Hosh Issa', 2, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(60, 'Abu Hummus', 2, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(61, 'El-Delengat', 2, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(62, 'Etay el-Barud', 2, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(64, '\r\nMarsa Matruh\r\n', 2, 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(65, 'Al-Hammam', 2, 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(66, 'Damietta', 2, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(67, 'El-Matareya', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(68, 'Bilqas', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(69, 'Senbellawein', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(70, 'Talkha', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(71, 'Dikirnis', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(72, 'El-Gamalia', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(73, 'Sherbin', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(74, 'El Mansoura', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(75, 'Mit Ghamr', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(76, 'Manzala', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(77, 'Minyet al-Nasr', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(78, 'Luxor', 2, 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(79, 'Qus', 2, 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(80, 'Dishna', 2, 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(81, 'Farshut', 2, 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(82, 'Qena', 2, 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(83, 'Aja', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(84, 'Al-Kurdy', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(85, 'Bani Ubayd', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(86, 'Ma?allah Damanah', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(87, 'Mit Salsil', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(88, 'Nabaruh', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(89, 'Tama al-Amdid', 2, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(90, 'As-Santah', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(91, 'Burj al-Arab', 2, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(92, 'Qutur', 2, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(93, '6th of October', 2, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(94, 'Sheikh Zayed', 2, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(95, 'El Hawamdeya', 2, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(96, 'Al Badrashin', 2, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(97, 'El-Saf', 2, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(98, 'Atfih', 2, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(99, 'Al Ayat', 2, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(100, 'Abu an Numros', 2, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(101, 'Bawiti', 2, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(102, 'Awsim', 2, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(104, 'Kirdasah', 2, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(105, 'Madinat Burj al-Arab al-Jadidah ', 2, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(103, 'Kafr Shukr', 2, 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(106, 'Qaha', 2, 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(107, 'Siwa', 2, 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(108, 'As-Sallum', 2, 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(109, 'Badr', 2, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(110, 'Shubrakhit', 2, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(111, 'Nasr City', 4, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_addresstype`
--

CREATE TABLE IF NOT EXISTS `tb_addresstype` (
  `id` int(11) NOT NULL,
  `addresstype_name` varchar(255) NOT NULL,
  `createdTime` timestamp NOT NULL,
  `updatedTime` timestamp NOT NULL,
  `isdeleted` bit(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_addresstype`
--

INSERT INTO `tb_addresstype` (`id`, `addresstype_name`, `createdTime`, `updatedTime`, `isdeleted`) VALUES
(1, 'Country', '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(2, 'City', '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(3, 'Governorate', '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(4, 'District', '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(5, 'Street', '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_donate_reason`
--

CREATE TABLE IF NOT EXISTS `tb_donate_reason` (
  `id` int(11) NOT NULL,
  `reason` varchar(300) NOT NULL,
  `createdTime` timestamp NOT NULL,
  `updatedTime` timestamp NOT NULL,
  `isdeleted` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_donation`
--

CREATE TABLE IF NOT EXISTS `tb_donation` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `donationReasonID` int(11) NOT NULL,
  `PaymentypeID` int(11) NOT NULL,
  `projecttypeID` int(11) NOT NULL,
  `createdTime` timestamp NOT NULL,
  `updatedTime` timestamp NOT NULL,
  `isdeleted` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_html`
--

CREATE TABLE IF NOT EXISTS `tb_html` (
  `id` int(11) NOT NULL,
  `htmltext` varchar(400) DEFAULT NULL,
  `linkID` int(11) NOT NULL,
  `createdTime` timestamp NOT NULL,
  `updatedTime` timestamp NOT NULL,
  `isdeleted` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_links`
--

CREATE TABLE IF NOT EXISTS `tb_links` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `createdTime` timestamp NOT NULL,
  `updatedTime` timestamp NOT NULL,
  `isdeleted` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_options`
--

CREATE TABLE IF NOT EXISTS `tb_options` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `type` varchar(300) NOT NULL,
  `createdTime` timestamp NOT NULL,
  `updatedTime` timestamp NOT NULL,
  `isdeleted` bit(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_options`
--

INSERT INTO `tb_options` (`id`, `name`, `type`, `createdTime`, `updatedTime`, `isdeleted`) VALUES
(1, 'First Name', 'text', '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(2, 'Last Name', 'text', '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(3, 'Email', 'email', '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(5, 'Password', 'password', '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(4, 'Birth Date', 'date', '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_option_payment_values`
--

CREATE TABLE IF NOT EXISTS `tb_option_payment_values` (
  `id` int(11) NOT NULL,
  `pmOptionID` int(11) NOT NULL,
  `value` varchar(300) NOT NULL,
  `donationID` int(11) NOT NULL,
  `createdTime` timestamp NOT NULL,
  `updatedTime` timestamp NOT NULL,
  `isdeleted` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_option_user_values`
--

CREATE TABLE IF NOT EXISTS `tb_option_user_values` (
  `id` int(11) NOT NULL,
  `optionUserID` int(11) NOT NULL,
  `value` varchar(300) NOT NULL,
  `userID` int(11) NOT NULL,
  `createdTime` timestamp NOT NULL,
  `updatedTime` timestamp NOT NULL,
  `isdeleted` bit(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_option_user_values`
--

INSERT INTO `tb_option_user_values` (`id`, `optionUserID`, `value`, `userID`, `createdTime`, `updatedTime`, `isdeleted`) VALUES
(1, 1, 'habiba', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(2, 2, 'hegazy', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(3, 3, 'habiba@gmail.com', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(4, 4, '2008-11-11', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(5, 5, '123', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(12, 2, 'atef', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'1'),
(13, 3, 'omar@gmail.com', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'1'),
(14, 4, '2017-01-31', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'1'),
(11, 1, 'omar', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'1'),
(15, 5, '123', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_payment_method`
--

CREATE TABLE IF NOT EXISTS `tb_payment_method` (
  `id` int(11) NOT NULL,
  `method_name` varchar(300) NOT NULL,
  `createdTime` timestamp NOT NULL,
  `updatedTime` timestamp NOT NULL,
  `isdeleted` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_project`
--

CREATE TABLE IF NOT EXISTS `tb_project` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `addressID` int(11) NOT NULL,
  `membercount` int(11) DEFAULT NULL,
  `createdTime` timestamp NOT NULL,
  `updatedTime` timestamp NOT NULL,
  `isdeleted` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_projecttype`
--

CREATE TABLE IF NOT EXISTS `tb_projecttype` (
  `id` int(11) NOT NULL,
  `projecttype_name` varchar(300) NOT NULL,
  `createdTime` timestamp NOT NULL,
  `updatedTime` timestamp NOT NULL,
  `isdeleted` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_role`
--

CREATE TABLE IF NOT EXISTS `tb_role` (
  `id` int(11) NOT NULL,
  `rolename` varchar(300) NOT NULL,
  `createdTime` timestamp NOT NULL,
  `updatedTime` timestamp NOT NULL,
  `isdeleted` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE IF NOT EXISTS `tb_users` (
  `id` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `addressID` int(11) NOT NULL,
  `createdTime` timestamp NOT NULL,
  `updatedTime` timestamp NOT NULL,
  `isdeleted` bit(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`id`, `usertypeID`, `addressID`, `createdTime`, `updatedTime`, `isdeleted`) VALUES
(1, 1, 111, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0'),
(10, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_usertype`
--

CREATE TABLE IF NOT EXISTS `tb_usertype` (
  `id` int(11) NOT NULL,
  `usertype_name` varchar(255) NOT NULL,
  `createdTime` timestamp NOT NULL,
  `updatedTime` timestamp NOT NULL,
  `isdeleted` bit(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_usertype`
--

INSERT INTO `tb_usertype` (`id`, `usertype_name`, `createdTime`, `updatedTime`, `isdeleted`) VALUES
(1, 'Admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00', b'0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rtb_html_links`
--
ALTER TABLE `rtb_html_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rtb_option_payment`
--
ALTER TABLE `rtb_option_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rtb_option_user`
--
ALTER TABLE `rtb_option_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rtb_usertype_links`
--
ALTER TABLE `rtb_usertype_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `typeID` (`typeID`),
  ADD KEY `LinkID` (`linkID`);

--
-- Indexes for table `tb_address`
--
ALTER TABLE `tb_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentID` (`parentID`);

--
-- Indexes for table `tb_addresstype`
--
ALTER TABLE `tb_addresstype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_donate_reason`
--
ALTER TABLE `tb_donate_reason`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_donation`
--
ALTER TABLE `tb_donation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_html`
--
ALTER TABLE `tb_html`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_links`
--
ALTER TABLE `tb_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_options`
--
ALTER TABLE `tb_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_option_payment_values`
--
ALTER TABLE `tb_option_payment_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_option_user_values`
--
ALTER TABLE `tb_option_user_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_payment_method`
--
ALTER TABLE `tb_payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_project`
--
ALTER TABLE `tb_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_role`
--
ALTER TABLE `tb_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_usertype`
--
ALTER TABLE `tb_usertype`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rtb_html_links`
--
ALTER TABLE `rtb_html_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rtb_option_payment`
--
ALTER TABLE `rtb_option_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rtb_option_user`
--
ALTER TABLE `rtb_option_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `rtb_usertype_links`
--
ALTER TABLE `rtb_usertype_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_address`
--
ALTER TABLE `tb_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `tb_addresstype`
--
ALTER TABLE `tb_addresstype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_donation`
--
ALTER TABLE `tb_donation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_html`
--
ALTER TABLE `tb_html`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_links`
--
ALTER TABLE `tb_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_options`
--
ALTER TABLE `tb_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_option_user_values`
--
ALTER TABLE `tb_option_user_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tb_payment_method`
--
ALTER TABLE `tb_payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_project`
--
ALTER TABLE `tb_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tb_usertype`
--
ALTER TABLE `tb_usertype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
