-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2019 at 02:34 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

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

CREATE TABLE `rtb_html_links` (
  `id` int(11) NOT NULL,
  `htmlID` int(11) NOT NULL,
  `linkID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rtb_option_payment`
--

CREATE TABLE `rtb_option_payment` (
  `id` int(11) NOT NULL,
  `optionID` int(11) NOT NULL,
  `paymentID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rtb_option_user`
--

CREATE TABLE `rtb_option_user` (
  `id` int(11) NOT NULL,
  `optionID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rtb_option_user`
--

INSERT INTO `rtb_option_user` (`id`, `optionID`, `usertypeID`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rtb_usertype_links`
--

CREATE TABLE `rtb_usertype_links` (
  `id` int(11) NOT NULL,
  `typeID` int(11) NOT NULL,
  `linkID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rtb_user_donation`
--

CREATE TABLE `rtb_user_donation` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `donationID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rtb_user_project`
--

CREATE TABLE `rtb_user_project` (
  `id` int(11) NOT NULL,
  `roleID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `projectID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_address`
--

CREATE TABLE `tb_address` (
  `id` int(11) NOT NULL,
  `address_name` varchar(255) DEFAULT NULL,
  `addresstypeID` int(11) DEFAULT NULL,
  `parentID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_address`
--

INSERT INTO `tb_address` (`id`, `address_name`, `addresstypeID`, `parentID`) VALUES
(1, 'Egypt', 1, 0),
(2, 'Alexandria', 3, 1),
(3, 'Aswan', 3, 1),
(4, 'Asyut', 3, 1),
(5, 'Beni Suef', 3, 1),
(6, 'Beheira', 3, 1),
(7, 'Cairo', 3, 1),
(8, 'Damietta', 3, 1),
(9, 'Dakahlia', 3, 1),
(10, 'El Wadi El Gedid', 3, 1),
(11, 'Faiyum', 3, 1),
(12, 'Gharbia', 3, 1),
(13, 'Giza', 3, 1),
(14, 'Ismailia', 3, 1),
(15, 'Kafr El Sheikh', 3, 1),
(16, 'Luxor', 3, 1),
(17, 'Monufia', 3, 1),
(18, 'Minya', 3, 1),
(19, 'Matruh', 3, 1),
(20, 'North Sinai', 3, 1),
(21, 'Port Said', 3, 1),
(22, 'Qena', 3, 1),
(23, 'Qalyubia', 3, 1),
(24, 'Red Sea', 3, 1),
(25, 'Suez', 3, 1),
(26, 'Sharqia', 3, 1),
(27, 'South Sinai', 3, 1),
(28, 'Sohag', 3, 1),
(31, 'Kafr al-Zayat', 2, 12),
(30, 'El Mahalla', 2, 12),
(29, 'Tanta', 2, 12),
(34, 'Port Said', 2, 21),
(35, 'Giza', 2, 13),
(63, 'Cairo', 2, 7),
(32, 'Zifta', 2, 12),
(33, 'Basyoun', 2, 12),
(36, 'Samannoud', 2, 12),
(37, 'Alexandria', 2, 2),
(38, 'Ismailia', 2, 14),
(39, 'At-Tall al-Kabir', 2, 14),
(40, 'Suez', 2, 25),
(41, 'Kom Ombo', 2, 3),
(42, 'Aswan', 2, 3),
(43, 'Edfu', 2, 3),
(44, 'El Kharga', 2, 10),
(45, 'El-Kanater al-Kyria', 2, 23),
(46, 'Banha', 2, 23),
(47, 'Shibin al-Qanater', 2, 23),
(48, 'Shubra el-Khema', 2, 23),
(49, 'Khusus', 2, 23),
(50, 'Qalyub', 2, 23),
(51, 'Khanka', 2, 23),
(52, 'El Ubour', 2, 23),
(53, 'Tukh', 2, 23),
(54, 'Kafr el-Dawwar', 2, 6),
(55, 'Rashed', 2, 6),
(56, 'Abul Matamir', 2, 6),
(57, 'Damanhur', 2, 6),
(58, 'Edko', 2, 6),
(59, 'Hosh Issa', 2, 6),
(60, 'Abu Hummus', 2, 6),
(61, 'El-Delengat', 2, 6),
(62, 'Etay el-Barud', 2, 6),
(64, '\r\nMarsa Matruh\r\n', 2, 19),
(65, 'Al-Hammam', 2, 19),
(66, 'Damietta', 2, 8),
(67, 'El-Matareya', 2, 9),
(68, 'Bilqas', 2, 9),
(69, 'Senbellawein', 2, 9),
(70, 'Talkha', 2, 9),
(71, 'Dikirnis', 2, 9),
(72, 'El-Gamalia', 2, 9),
(73, 'Sherbin', 2, 9),
(74, 'El Mansoura', 2, 9),
(75, 'Mit Ghamr', 2, 9),
(76, 'Manzala', 2, 9),
(77, 'Minyet al-Nasr', 2, 9),
(78, 'Luxor', 2, 16),
(79, 'Qus', 2, 22),
(80, 'Dishna', 2, 22),
(81, 'Farshut', 2, 22),
(82, 'Qena', 2, 22),
(83, 'Aja', 2, 9),
(84, 'Al-Kurdy', 2, 9),
(85, 'Bani Ubayd', 2, 9),
(86, 'Ma?allah Damanah', 2, 9),
(87, 'Mit Salsil', 2, 9),
(88, 'Nabaruh', 2, 9),
(89, 'Tama al-Amdid', 2, 9),
(90, 'As-Santah', 2, 12),
(91, 'Burj al-Arab', 2, 2),
(92, 'Qutur', 2, 12),
(93, '6th of October', 2, 13),
(94, 'Sheikh Zayed', 2, 13),
(95, 'El Hawamdeya', 2, 13),
(96, 'Al Badrashin', 2, 13),
(97, 'El-Saf', 2, 13),
(98, 'Atfih', 2, 13),
(99, 'Al Ayat', 2, 13),
(100, 'Abu an Numros', 2, 13),
(101, 'Bawiti', 2, 13),
(102, 'Awsim', 2, 13),
(104, 'Kirdasah', 2, 13),
(105, 'Madinat Burj al-Arab al-Jadidah ', 2, 2),
(103, 'Kafr Shukr', 2, 23),
(106, 'Qaha', 2, 23),
(107, 'Siwa', 2, 19),
(108, 'As-Sallum', 2, 19),
(109, 'Badr', 2, 6),
(110, 'Shubrakhit', 2, 6),
(111, 'Nasr City', 4, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tb_addresstype`
--

CREATE TABLE `tb_addresstype` (
  `id` int(11) NOT NULL,
  `addresstype_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_addresstype`
--

INSERT INTO `tb_addresstype` (`id`, `addresstype_name`) VALUES
(1, 'Country'),
(2, 'City'),
(3, 'Governorate'),
(4, 'District'),
(5, 'Street');

-- --------------------------------------------------------

--
-- Table structure for table `tb_donate_reason`
--

CREATE TABLE `tb_donate_reason` (
  `id` int(11) NOT NULL,
  `reason` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_donation`
--

CREATE TABLE `tb_donation` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `donationReasonID` int(11) NOT NULL,
  `PaymentypeID` int(11) NOT NULL,
  `projecttypeID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_html`
--

CREATE TABLE `tb_html` (
  `id` int(11) NOT NULL,
  `htmltext` varchar(400) DEFAULT NULL,
  `linkID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_links`
--

CREATE TABLE `tb_links` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_options`
--

CREATE TABLE `tb_options` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `type` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_options`
--

INSERT INTO `tb_options` (`id`, `name`, `type`) VALUES
(1, 'firstname', 'text'),
(2, 'lastname', 'text'),
(3, 'email', 'email'),
(5, 'password', 'password'),
(4, 'birthdate', 'date');

-- --------------------------------------------------------

--
-- Table structure for table `tb_option_payment_values`
--

CREATE TABLE `tb_option_payment_values` (
  `id` int(11) NOT NULL,
  `pmOptionID` int(11) NOT NULL,
  `value` varchar(300) NOT NULL,
  `donationID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_option_user_values`
--

CREATE TABLE `tb_option_user_values` (
  `id` int(11) NOT NULL,
  `optionUserID` int(11) NOT NULL,
  `value` varchar(300) NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_option_user_values`
--

INSERT INTO `tb_option_user_values` (`id`, `optionUserID`, `value`, `userID`) VALUES
(1, 1, 'habiba', 1),
(2, 2, 'hegazy', 1),
(3, 3, 'habiba@gmail.com', 1),
(4, 4, '08-05-1998', 1),
(5, 5, '123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_payment_method`
--

CREATE TABLE `tb_payment_method` (
  `id` int(11) NOT NULL,
  `method_name` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_project`
--

CREATE TABLE `tb_project` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `addressID` int(11) NOT NULL,
  `membercount` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_projecttype`
--

CREATE TABLE `tb_projecttype` (
  `id` int(11) NOT NULL,
  `projecttype_name` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_role`
--

CREATE TABLE `tb_role` (
  `id` int(11) NOT NULL,
  `rolename` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `id` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `addressID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`id`, `usertypeID`, `addressID`) VALUES
(1, 1, 111);

-- --------------------------------------------------------

--
-- Table structure for table `tb_usertype`
--

CREATE TABLE `tb_usertype` (
  `id` int(11) NOT NULL,
  `usertype_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_usertype`
--

INSERT INTO `tb_usertype` (`id`, `usertype_name`) VALUES
(1, 'Admin');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `rtb_usertype_links`
--
ALTER TABLE `rtb_usertype_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_address`
--
ALTER TABLE `tb_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `tb_addresstype`
--
ALTER TABLE `tb_addresstype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_usertype`
--
ALTER TABLE `tb_usertype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
