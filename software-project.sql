-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2019 at 02:33 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

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
  `payment_methodID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rtb_option_payment_method`
--

INSERT INTO `rtb_option_payment_method` (`id`, `optionID`, `payment_methodID`) VALUES
(1, 1, 2),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rtb_option_usertype`
--

CREATE TABLE `rtb_option_usertype` (
  `id` int(11) NOT NULL,
  `optionID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rtb_option_usertype`
--

INSERT INTO `rtb_option_usertype` (`id`, `optionID`, `usertypeID`, `isdeleted`) VALUES
(1, 1, 1, 0),
(2, 2, 1, 0),
(3, 3, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rtb_project_img`
--

CREATE TABLE `rtb_project_img` (
  `id` int(11) NOT NULL,
  `projectID` int(11) NOT NULL,
  `imgID` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rtb_usertype_page`
--

CREATE TABLE `rtb_usertype_page` (
  `id` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `pageID` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rtb_user_phone`
--

CREATE TABLE `rtb_user_phone` (
  `id` int(11) NOT NULL,
  `phone_numID` int(11) NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rtb_user_project`
--

CREATE TABLE `rtb_user_project` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `projectID` int(11) NOT NULL,
  `roleID` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_address`
--

CREATE TABLE `tb_address` (
  `id` int(11) NOT NULL,
  `address_name` varchar(300) NOT NULL,
  `parentID` int(11) NOT NULL DEFAULT '0',
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_address`
--

INSERT INTO `tb_address` (`id`, `address_name`, `parentID`, `isdeleted`) VALUES
(1, 'Egypt', 0, 0),
(2, 'Alexandria', 1, 0),
(3, 'Aswan', 1, 0),
(4, 'Asyut', 1, 0),
(5, 'Beni Suef', 1, 0),
(6, 'Beheira', 1, 0),
(7, 'Cairo', 1, 0),
(8, 'Damietta', 1, 0),
(9, 'Dakahlia', 1, 0),
(10, 'El Wadi El Gedid', 1, 0),
(11, 'Faiyum', 1, 0),
(12, 'Gharbia', 1, 0),
(13, 'Giza', 1, 0),
(14, 'Ismailia', 1, 0),
(15, 'Kafr El Sheikh', 1, 0),
(16, 'Luxor', 1, 0),
(17, 'Monufia', 1, 0),
(18, 'Minya', 1, 0),
(19, 'Matruh', 1, 0),
(20, 'North Sinai', 1, 0),
(21, 'Port Said', 1, 0),
(22, 'Qena', 1, 0),
(23, 'Qalyubia', 1, 0),
(24, 'Red Sea', 1, 0),
(25, 'Suez', 1, 0),
(26, 'Sharqia', 1, 0),
(27, 'South Sinai', 1, 0),
(28, 'Sohag', 1, 0),
(29, 'Tanta', 12, 0),
(30, 'El Mahalla', 12, 0),
(31, 'Kafr al-Zayat', 12, 0),
(32, 'Zifta', 12, 0),
(33, 'Basyoun', 12, 0),
(34, 'Port Said', 21, 0),
(35, 'Giza', 13, 0),
(36, 'Samannoud', 12, 0),
(37, 'Alexandria', 2, 0),
(38, 'Ismailia', 14, 0),
(39, 'At-Tall al-Kabir', 14, 0),
(40, 'Suez', 25, 0),
(41, 'Kom Ombo', 3, 0),
(42, 'Aswan', 3, 0),
(43, 'Edfu', 3, 0),
(44, 'El Kharga', 10, 0),
(45, 'El-Kanater al-Kyria', 23, 0),
(46, 'Banha', 23, 0),
(47, 'Shibin al-Qanater', 23, 0),
(48, 'Shubra el-Khema', 23, 0),
(49, 'Khusus', 23, 0),
(50, 'Qalyub', 23, 0),
(51, 'Khanka', 23, 0),
(52, 'El Ubour', 23, 0),
(53, 'Tukh', 23, 0),
(54, 'Kafr el-Dawwar', 6, 0),
(55, 'Rashed', 6, 0),
(56, 'Abul Matamir', 6, 0),
(57, 'Damanhur', 6, 0),
(58, 'Edko', 6, 0),
(59, 'Hosh Issa', 6, 0),
(60, 'Abu Hummus', 6, 0),
(61, 'El-Delengat', 6, 0),
(62, 'Etay el-Barud', 6, 0),
(63, 'Cairo', 7, 0),
(64, '\r\nMarsa Matruh\r\n', 19, 0),
(65, 'Al-Hammam', 19, 0),
(66, 'Damietta', 8, 0),
(67, 'El-Matareya', 9, 0),
(68, 'Bilqas', 9, 0),
(69, 'Senbellawein', 9, 0),
(70, 'Talkha', 9, 0),
(71, 'Dikirnis', 9, 0),
(72, 'El-Gamalia', 9, 0),
(73, 'Sherbin', 9, 0),
(74, 'El Mansoura', 9, 0),
(75, 'Mit Ghamr', 9, 0),
(76, 'Manzala', 9, 0),
(77, 'Minyet al-Nasr', 9, 0),
(78, 'Luxor', 16, 0),
(79, 'Qus', 22, 0),
(80, 'Dishna', 22, 0),
(81, 'Farshut', 22, 0),
(82, 'Qena', 22, 0),
(83, 'Aja', 9, 0),
(84, 'Al-Kurdy', 9, 0),
(85, 'Bani Ubayd', 9, 0),
(86, 'Ma?allah Damanah', 9, 0),
(87, 'Mit Salsil', 9, 0),
(88, 'Nabaruh', 9, 0),
(89, 'Tama al-Amdid', 9, 0),
(90, 'As-Santah', 12, 0),
(91, 'Burj al-Arab', 2, 0),
(92, 'Qutur', 12, 0),
(93, '6th of October', 13, 0),
(94, 'Sheikh Zayed', 13, 0),
(95, 'El Hawamdeya', 13, 0),
(96, 'Al Badrashin', 13, 0),
(97, 'El-Saf', 13, 0),
(98, 'Atfih', 13, 0),
(99, 'Al Ayat', 13, 0),
(100, 'Abu an Numros', 13, 0),
(101, 'Bawiti', 13, 0),
(102, 'Awsim', 13, 0),
(103, 'Kafr Shukr', 23, 0),
(104, 'Kirdasah', 13, 0),
(105, 'Madinat Burj al-Arab al-Jadidah ', 2, 0),
(106, 'Qaha', 23, 0),
(107, 'Siwa', 19, 0),
(108, 'As-Sallum', 19, 0),
(109, 'Badr', 6, 0),
(110, 'Shubrakhit', 6, 0),
(111, 'Nasr City', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_donation_reason`
--

CREATE TABLE `tb_donation_reason` (
  `id` int(11) NOT NULL,
  `reason` varchar(300) NOT NULL,
  `sendtoID` int(11) NOT NULL DEFAULT '0',
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_donation_reason`
--

INSERT INTO `tb_donation_reason` (`id`, `reason`, `sendtoID`, `isdeleted`) VALUES
(8, 'charity', 0, 0),
(9, 'gift', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_event_type`
--

CREATE TABLE `tb_event_type` (
  `id` int(11) NOT NULL,
  `event_type_name` varchar(255) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_event_type`
--

INSERT INTO `tb_event_type` (`id`, `event_type_name`, `isdeleted`) VALUES
(1, 'created', 0),
(2, 'updated', 0),
(3, 'modified', 0),
(4, 'removed', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_gender`
--

CREATE TABLE `tb_gender` (
  `id` int(11) NOT NULL,
  `gender_name` varchar(300) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_gender`
--

INSERT INTO `tb_gender` (`id`, `gender_name`, `isdeleted`) VALUES
(1, 'Female', 0),
(2, 'Male', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_html`
--

CREATE TABLE `tb_html` (
  `id` int(11) NOT NULL,
  `html` text NOT NULL,
  `pageID` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_logins`
--

CREATE TABLE `tb_logins` (
  `id` int(11) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `userID` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_logins`
--

INSERT INTO `tb_logins` (`id`, `email`, `password`, `userID`, `isdeleted`) VALUES
(1, 'omar@gmail.com', '123', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_nationality`
--

CREATE TABLE `tb_nationality` (
  `id` int(11) NOT NULL,
  `nationality_name` varchar(300) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_options_payments`
--

CREATE TABLE `tb_options_payments` (
  `id` int(11) NOT NULL,
  `option_name` varchar(300) NOT NULL,
  `typeID` int(11) NOT NULL,
  `isdeleted` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_options_payments`
--

INSERT INTO `tb_options_payments` (`id`, `option_name`, `typeID`, `isdeleted`) VALUES
(1, 'Bank_Account_Number', 1, 0),
(2, 'Bank_Name', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_options_usertypes`
--

CREATE TABLE `tb_options_usertypes` (
  `id` int(11) NOT NULL,
  `option_name` varchar(300) NOT NULL,
  `typeID` int(11) NOT NULL,
  `ref_table` varchar(300) DEFAULT 'none',
  `isdeleted` int(11) NOT NULL DEFAULT '0',
  `option_type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_options_usertypes`
--

INSERT INTO `tb_options_usertypes` (`id`, `option_name`, `typeID`, `ref_table`, `isdeleted`, `option_type`) VALUES
(1, 'First Name', 1, 'none', 0, 'text'),
(2, 'Last Name', 1, 'none', 0, 'text'),
(3, 'Birth Date', 2, 'none', 0, 'date'),
(4, 'Gender', 3, 'tb_gender', 0, 'select'),
(5, 'Nationality', 3, 'tb_nationality', 0, 'select'),
(6, 'Address', 3, 'tb_address', 0, 'select');

-- --------------------------------------------------------

--
-- Table structure for table `tb_option_payment_values`
--

CREATE TABLE `tb_option_payment_values` (
  `id` int(11) NOT NULL,
  `optionPaymentID` int(11) NOT NULL,
  `value` varchar(300) NOT NULL,
  `paymentID` int(11) NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_option_payment_values`
--

INSERT INTO `tb_option_payment_values` (`id`, `optionPaymentID`, `value`, `paymentID`, `userID`) VALUES
(1, 1, '15', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_option_type`
--

CREATE TABLE `tb_option_type` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_option_type`
--

INSERT INTO `tb_option_type` (`id`, `type`) VALUES
(1, 'text'),
(2, 'date'),
(3, 'select');

-- --------------------------------------------------------

--
-- Table structure for table `tb_option_user_values`
--

CREATE TABLE `tb_option_user_values` (
  `id` int(11) NOT NULL,
  `optionUserID` int(11) NOT NULL,
  `value` varchar(300) NOT NULL,
  `userID` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_option_user_values`
--

INSERT INTO `tb_option_user_values` (`id`, `optionUserID`, `value`, `userID`, `isdeleted`) VALUES
(1, 1, 'omar', 1, 0),
(2, 2, 'atef', 1, 0),
(3, 3, '2017-02-04', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pages`
--

CREATE TABLE `tb_pages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `class_name` varchar(100) NOT NULL,
  `parent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pages`
--

INSERT INTO `tb_pages` (`id`, `name`, `class_name`, `parent`) VALUES
(1, 'Dashboard', 'dashboard', 0),
(2, 'Foundation Members', 'foundation_members', 0),
(3, 'Insert Member', 'insert_member_form', 2),
(4, 'List Mmebers', 'list_members', 2),
(5, 'Update Member', 'update_member_form', 4),
(6, 'Logs', 'logg', 0),
(7, 'Emails', 'emails', 0),
(8, 'Emails List', 'emails_list', 7),
(9, 'Email Form', 'email_form', 8),
(10, 'Donation', 'donation', 0),
(11, 'Requested Donations', 'requested_donations', 10),
(12, 'Paid Donations', 'paid_donations', 10),
(13, 'Settings', 'settings', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_page_icon`
--

CREATE TABLE `tb_page_icon` (
  `id` int(11) NOT NULL,
  `icon_code` int(11) NOT NULL,
  `pageID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_payment_method`
--

CREATE TABLE `tb_payment_method` (
  `id` int(11) NOT NULL,
  `method_name` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_payment_method`
--

INSERT INTO `tb_payment_method` (`id`, `method_name`) VALUES
(1, 'cash'),
(2, 'Bank Transfer');

-- --------------------------------------------------------

--
-- Table structure for table `tb_phone_numbers`
--

CREATE TABLE `tb_phone_numbers` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_profile_photo`
--

CREATE TABLE `tb_profile_photo` (
  `id` int(11) NOT NULL,
  `img_url` varchar(512) NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_project`
--

CREATE TABLE `tb_project` (
  `id` int(11) NOT NULL,
  `project_name` varchar(300) NOT NULL,
  `project_budget` varchar(300) NOT NULL,
  `number_of_phases` int(11) NOT NULL,
  `current_phase` int(11) NOT NULL,
  `notes` varchar(500) NOT NULL,
  `projectcategoryID` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_project_category`
--

CREATE TABLE `tb_project_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(300) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_project_category`
--

INSERT INTO `tb_project_category` (`id`, `category_name`, `isdeleted`) VALUES
(1, 'Purification Station', 0),
(2, 'Africa Wells', 0),
(3, 'Water Links', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_project_image`
--

CREATE TABLE `tb_project_image` (
  `id` int(11) NOT NULL,
  `img_url` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_request_donation`
--

CREATE TABLE `tb_request_donation` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `projectCategory` varchar(30) NOT NULL,
  `donationReason` varchar(20) NOT NULL,
  `paymentMethod` varchar(20) NOT NULL,
  `donationValue` int(11) NOT NULL,
  `valueTaken` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_request_donation`
--

INSERT INTO `tb_request_donation` (`id`, `userID`, `projectCategory`, `donationReason`, `paymentMethod`, `donationValue`, `valueTaken`) VALUES
(1, 1, 'Purification Station', 'charity', 'cash', 8, 0),
(2, 1, 'Purification Station', 'charity', 'cash', 15, 0),
(3, 1, 'Purification Station', 'charity', 'cash', 66, 0),
(4, 1, 'Purification Station', 'charity', 'cash', 88, 0),
(5, 1, 'Purification Station', 'charity', 'cash', 33, 0),
(6, 1, 'Purification Station', 'charity', 'cash', 12, 0),
(7, 1, 'Purification Station', 'charity', 'cash', 45, 0),
(8, 1, 'Purification Station', 'charity', 'cash', 35, 0),
(19, 1, 'Purification Station', 'charity', 'cash', 92, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_role`
--

CREATE TABLE `tb_role` (
  `id` int(11) NOT NULL,
  `role_name` varchar(300) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_role`
--

INSERT INTO `tb_role` (`id`, `role_name`, `isdeleted`) VALUES
(1, 'Team Leader', 0),
(2, 'Member', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_send_through`
--

CREATE TABLE `tb_send_through` (
  `id` int(11) NOT NULL,
  `through_tech` varchar(150) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_send_through`
--

INSERT INTO `tb_send_through` (`id`, `through_tech`, `isdeleted`) VALUES
(1, 'WhatsApp', 0),
(2, 'Email', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_send_to`
--

CREATE TABLE `tb_send_to` (
  `id` int(11) NOT NULL,
  `receiver_name` varchar(300) NOT NULL,
  `receiver_mobile` varchar(11) NOT NULL,
  `receiver_Email` varchar(40) NOT NULL,
  `send_throughID` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_send_to`
--

INSERT INTO `tb_send_to` (`id`, `receiver_name`, `receiver_mobile`, `receiver_Email`, `send_throughID`, `isdeleted`) VALUES
(1, 'Shams Eldin', '01001234567', 'shams@gmail.com', 1, 0),
(9, 'vbn', 'dcfvbn', 'dfghj', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `id` int(11) NOT NULL,
  `rand_number` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`id`, `rand_number`, `usertypeID`, `isdeleted`) VALUES
(1, 2937, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_usertype`
--

CREATE TABLE `tb_usertype` (
  `id` int(11) NOT NULL,
  `usertype_name` varchar(300) NOT NULL,
  `parentID` int(11) DEFAULT '0',
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_usertype`
--

INSERT INTO `tb_usertype` (`id`, `usertype_name`, `parentID`, `isdeleted`) VALUES
(1, 'Admin', 0, 0),
(2, 'Donar', 0, 0),
(3, 'New Donar', 2, 0),
(4, 'VIP Donar', 2, 0),
(5, 'HL Admin', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_log`
--

CREATE TABLE `tb_user_log` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `eventtypeID` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for table `rtb_project_img`
--
ALTER TABLE `rtb_project_img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projectID` (`projectID`),
  ADD KEY `imgID` (`imgID`);

--
-- Indexes for table `rtb_usertype_page`
--
ALTER TABLE `rtb_usertype_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usertypeID` (`usertypeID`),
  ADD KEY `pageID` (`pageID`);

--
-- Indexes for table `rtb_user_phone`
--
ALTER TABLE `rtb_user_phone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phone_numID` (`phone_numID`),
  ADD KEY `userID` (`userID`);

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
-- Indexes for table `tb_donation_reason`
--
ALTER TABLE `tb_donation_reason`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sendtoID` (`sendtoID`);

--
-- Indexes for table `tb_event_type`
--
ALTER TABLE `tb_event_type`
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
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tb_request_donation`
--
ALTER TABLE `tb_request_donation`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `send_throughID` (`send_throughID`);

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
-- Indexes for table `tb_user_log`
--
ALTER TABLE `tb_user_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventtypeID` (`eventtypeID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `userID_2` (`userID`),
  ADD KEY `eventtypeID_2` (`eventtypeID`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rtb_project_img`
--
ALTER TABLE `rtb_project_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rtb_usertype_page`
--
ALTER TABLE `rtb_usertype_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rtb_user_phone`
--
ALTER TABLE `rtb_user_phone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rtb_user_project`
--
ALTER TABLE `rtb_user_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_address`
--
ALTER TABLE `tb_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `tb_donation_reason`
--
ALTER TABLE `tb_donation_reason`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_event_type`
--
ALTER TABLE `tb_event_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_gender`
--
ALTER TABLE `tb_gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_html`
--
ALTER TABLE `tb_html`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_logins`
--
ALTER TABLE `tb_logins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_nationality`
--
ALTER TABLE `tb_nationality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_option_type`
--
ALTER TABLE `tb_option_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_option_user_values`
--
ALTER TABLE `tb_option_user_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_pages`
--
ALTER TABLE `tb_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_page_icon`
--
ALTER TABLE `tb_page_icon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_payment_method`
--
ALTER TABLE `tb_payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_phone_numbers`
--
ALTER TABLE `tb_phone_numbers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_profile_photo`
--
ALTER TABLE `tb_profile_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_project`
--
ALTER TABLE `tb_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `tb_request_donation`
--
ALTER TABLE `tb_request_donation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tb_role`
--
ALTER TABLE `tb_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_send_through`
--
ALTER TABLE `tb_send_through`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_send_to`
--
ALTER TABLE `tb_send_to`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_usertype`
--
ALTER TABLE `tb_usertype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_user_log`
--
ALTER TABLE `tb_user_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- Constraints for table `rtb_project_img`
--
ALTER TABLE `rtb_project_img`
  ADD CONSTRAINT `rtb_project_img_ibfk_1` FOREIGN KEY (`projectID`) REFERENCES `tb_project` (`id`),
  ADD CONSTRAINT `rtb_project_img_ibfk_2` FOREIGN KEY (`imgID`) REFERENCES `tb_project_image` (`id`);

--
-- Constraints for table `rtb_usertype_page`
--
ALTER TABLE `rtb_usertype_page`
  ADD CONSTRAINT `rtb_usertype_page_ibfk_1` FOREIGN KEY (`usertypeID`) REFERENCES `tb_usertype` (`id`),
  ADD CONSTRAINT `rtb_usertype_page_ibfk_2` FOREIGN KEY (`pageID`) REFERENCES `tb_pages` (`id`);

--
-- Constraints for table `rtb_user_phone`
--
ALTER TABLE `rtb_user_phone`
  ADD CONSTRAINT `rtb_user_phone_ibfk_1` FOREIGN KEY (`phone_numID`) REFERENCES `tb_phone_numbers` (`id`),
  ADD CONSTRAINT `rtb_user_phone_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `tb_users` (`id`);

--
-- Constraints for table `rtb_user_project`
--
ALTER TABLE `rtb_user_project`
  ADD CONSTRAINT `rtb_user_project_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `tb_users` (`id`),
  ADD CONSTRAINT `rtb_user_project_ibfk_2` FOREIGN KEY (`projectID`) REFERENCES `tb_project` (`id`),
  ADD CONSTRAINT `rtb_user_project_ibfk_3` FOREIGN KEY (`roleID`) REFERENCES `tb_role` (`id`);

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
-- Constraints for table `tb_send_to`
--
ALTER TABLE `tb_send_to`
  ADD CONSTRAINT `tb_send_to_ibfk_1` FOREIGN KEY (`send_throughID`) REFERENCES `tb_send_through` (`id`);

--
-- Constraints for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD CONSTRAINT `tb_users_ibfk_1` FOREIGN KEY (`usertypeID`) REFERENCES `tb_usertype` (`id`);

--
-- Constraints for table `tb_user_log`
--
ALTER TABLE `tb_user_log`
  ADD CONSTRAINT `tb_user_log_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `tb_users` (`id`),
  ADD CONSTRAINT `tb_user_log_ibfk_2` FOREIGN KEY (`eventtypeID`) REFERENCES `tb_event_type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
