-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2019 at 04:25 PM
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
-- Table structure for table `rtb_option_donation_reason`
--

CREATE TABLE IF NOT EXISTS `rtb_option_donation_reason` (
  `id` int(11) NOT NULL,
  `optionID` int(11) NOT NULL,
  `donationReasonID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rtb_option_payment_type`
--

CREATE TABLE IF NOT EXISTS `rtb_option_payment_type` (
  `id` int(11) NOT NULL,
  `optionID` int(11) NOT NULL,
  `payment_typeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rtb_option_projectCategory`
--

CREATE TABLE IF NOT EXISTS `rtb_option_projectCategory` (
  `id` int(11) NOT NULL,
  `optionID` int(11) NOT NULL,
  `projectcategoryID` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rtb_option_usertype`
--

CREATE TABLE IF NOT EXISTS `rtb_option_usertype` (
  `id` int(11) NOT NULL,
  `optionID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rtb_option_usertype`
--

INSERT INTO `rtb_option_usertype` (`id`, `optionID`, `usertypeID`, `isdeleted`) VALUES
(1, 1, 1, 0),
(2, 2, 1, 0),
(3, 3, 1, 0),
(4, 4, 1, 0),
(5, 5, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rtb_user_project`
--

CREATE TABLE IF NOT EXISTS `rtb_user_project` (
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

CREATE TABLE IF NOT EXISTS `tb_address` (
  `id` int(11) NOT NULL,
  `address_name` varchar(300) NOT NULL,
  `parentID` int(11) NOT NULL DEFAULT '0',
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_donation_reason`
--

CREATE TABLE IF NOT EXISTS `tb_donation_reason` (
  `id` int(11) NOT NULL,
  `reason` varchar(300) NOT NULL,
  `sendtoID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_event_type`
--

CREATE TABLE IF NOT EXISTS `tb_event_type` (
  `id` int(11) NOT NULL,
  `event_type_name` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_gender`
--

CREATE TABLE IF NOT EXISTS `tb_gender` (
  `id` int(11) NOT NULL,
  `gender_name` varchar(300) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_nationality`
--

CREATE TABLE IF NOT EXISTS `tb_nationality` (
  `id` int(11) NOT NULL,
  `nationality_name` varchar(300) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_options`
--

CREATE TABLE IF NOT EXISTS `tb_options` (
  `id` int(11) NOT NULL,
  `option_name` varchar(300) NOT NULL,
  `option_type` varchar(300) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_options`
--

INSERT INTO `tb_options` (`id`, `option_name`, `option_type`, `isdeleted`) VALUES
(1, 'First Name', 'text', 0),
(2, 'Last Name', 'text', 0),
(3, 'Email', 'email', 0),
(4, 'Password', 'password', 0),
(5, 'Birth Date', 'date', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_option_donation_values`
--

CREATE TABLE IF NOT EXISTS `tb_option_donation_values` (
  `id` int(11) NOT NULL,
  `optionDrID` int(11) NOT NULL,
  `value` varchar(300) NOT NULL,
  `donationID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_option_payment_values`
--

CREATE TABLE IF NOT EXISTS `tb_option_payment_values` (
  `id` int(11) NOT NULL,
  `optionPaymentID` int(11) NOT NULL,
  `value` varchar(300) NOT NULL,
  `paymentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_option_project_values`
--

CREATE TABLE IF NOT EXISTS `tb_option_project_values` (
  `id` int(11) NOT NULL,
  `optionProjectID` int(11) NOT NULL,
  `value` varchar(300) NOT NULL,
  `projectID` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_option_user_values`
--

CREATE TABLE IF NOT EXISTS `tb_option_user_values` (
  `id` int(11) NOT NULL,
  `optionUserID` int(11) NOT NULL,
  `value` varchar(300) NOT NULL,
  `userID` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_payment_method`
--

CREATE TABLE IF NOT EXISTS `tb_payment_method` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `pay_method_typeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_payment_type`
--

CREATE TABLE IF NOT EXISTS `tb_payment_type` (
  `id` int(11) NOT NULL,
  `method_name` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_project`
--

CREATE TABLE IF NOT EXISTS `tb_project` (
  `id` int(11) NOT NULL,
  `projectcategoryID` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_project_category`
--

CREATE TABLE IF NOT EXISTS `tb_project_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(300) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_request_donation`
--

CREATE TABLE IF NOT EXISTS `tb_request_donation` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `donationReasonID` int(11) NOT NULL,
  `paymentMethodID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_role`
--

CREATE TABLE IF NOT EXISTS `tb_role` (
  `id` int(11) NOT NULL,
  `role_name` varchar(300) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_send_to`
--

CREATE TABLE IF NOT EXISTS `tb_send_to` (
  `id` int(11) NOT NULL,
  `receiver_name` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE IF NOT EXISTS `tb_users` (
  `id` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_usertype`
--

CREATE TABLE IF NOT EXISTS `tb_usertype` (
  `id` int(11) NOT NULL,
  `usertype_name` varchar(300) NOT NULL,
  `parentID` int(11) DEFAULT '0',
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

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

CREATE TABLE IF NOT EXISTS `tb_user_log` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `eventtypeID` int(11) NOT NULL,
  `createdTime` timestamp NOT NULL,
  `description` varchar(500) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rtb_option_donation_reason`
--
ALTER TABLE `rtb_option_donation_reason`
  ADD PRIMARY KEY (`id`),
  ADD KEY `optionID` (`optionID`),
  ADD KEY `donationReasonID` (`donationReasonID`);

--
-- Indexes for table `rtb_option_payment_type`
--
ALTER TABLE `rtb_option_payment_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `optionID` (`optionID`),
  ADD KEY `payment_typeID` (`payment_typeID`);

--
-- Indexes for table `rtb_option_projectCategory`
--
ALTER TABLE `rtb_option_projectCategory`
  ADD KEY `projectcategoryID` (`projectcategoryID`),
  ADD KEY `optionID` (`optionID`);

--
-- Indexes for table `rtb_option_usertype`
--
ALTER TABLE `rtb_option_usertype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `optionID` (`optionID`),
  ADD KEY `usertypeID` (`usertypeID`);

--
-- Indexes for table `rtb_user_project`
--
ALTER TABLE `rtb_user_project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roleID` (`roleID`),
  ADD KEY `projectID` (`projectID`),
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
-- Indexes for table `tb_nationality`
--
ALTER TABLE `tb_nationality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_options`
--
ALTER TABLE `tb_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_option_donation_values`
--
ALTER TABLE `tb_option_donation_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donationID` (`donationID`),
  ADD KEY `optionDrID` (`optionDrID`);

--
-- Indexes for table `tb_option_payment_values`
--
ALTER TABLE `tb_option_payment_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `optionPaymentID` (`optionPaymentID`),
  ADD KEY `paymentID` (`paymentID`);

--
-- Indexes for table `tb_option_project_values`
--
ALTER TABLE `tb_option_project_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projectcategoryID` (`optionProjectID`),
  ADD KEY `projectID` (`projectID`);

--
-- Indexes for table `tb_option_user_values`
--
ALTER TABLE `tb_option_user_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userID` (`userID`),
  ADD KEY `optionUserID` (`optionUserID`);

--
-- Indexes for table `tb_payment_method`
--
ALTER TABLE `tb_payment_method`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_method_typeID` (`pay_method_typeID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `tb_payment_type`
--
ALTER TABLE `tb_payment_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_project`
--
ALTER TABLE `tb_project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projectcategoryID` (`projectcategoryID`);

--
-- Indexes for table `tb_project_category`
--
ALTER TABLE `tb_project_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_request_donation`
--
ALTER TABLE `tb_request_donation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userID` (`userID`),
  ADD KEY `donationReasonID` (`donationReasonID`),
  ADD KEY `paymentMethodID` (`paymentMethodID`);

--
-- Indexes for table `tb_role`
--
ALTER TABLE `tb_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_send_to`
--
ALTER TABLE `tb_send_to`
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
-- Indexes for table `tb_user_log`
--
ALTER TABLE `tb_user_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventtypeID` (`eventtypeID`),
  ADD KEY `userID` (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rtb_option_donation_reason`
--
ALTER TABLE `rtb_option_donation_reason`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rtb_option_payment_type`
--
ALTER TABLE `rtb_option_payment_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rtb_option_usertype`
--
ALTER TABLE `rtb_option_usertype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `rtb_user_project`
--
ALTER TABLE `rtb_user_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_address`
--
ALTER TABLE `tb_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_donation_reason`
--
ALTER TABLE `tb_donation_reason`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_event_type`
--
ALTER TABLE `tb_event_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_gender`
--
ALTER TABLE `tb_gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_nationality`
--
ALTER TABLE `tb_nationality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_options`
--
ALTER TABLE `tb_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_option_donation_values`
--
ALTER TABLE `tb_option_donation_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_option_payment_values`
--
ALTER TABLE `tb_option_payment_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_option_project_values`
--
ALTER TABLE `tb_option_project_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_option_user_values`
--
ALTER TABLE `tb_option_user_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `tb_payment_method`
--
ALTER TABLE `tb_payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_payment_type`
--
ALTER TABLE `tb_payment_type`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_request_donation`
--
ALTER TABLE `tb_request_donation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_role`
--
ALTER TABLE `tb_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_send_to`
--
ALTER TABLE `tb_send_to`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tb_usertype`
--
ALTER TABLE `tb_usertype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_user_log`
--
ALTER TABLE `tb_user_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `rtb_option_donation_reason`
--
ALTER TABLE `rtb_option_donation_reason`
  ADD CONSTRAINT `rtb_option_donation_reason_ibfk_1` FOREIGN KEY (`optionID`) REFERENCES `tb_options` (`id`),
  ADD CONSTRAINT `rtb_option_donation_reason_ibfk_2` FOREIGN KEY (`donationReasonID`) REFERENCES `tb_donation_reason` (`id`);

--
-- Constraints for table `rtb_option_payment_type`
--
ALTER TABLE `rtb_option_payment_type`
  ADD CONSTRAINT `rtb_option_payment_type_ibfk_1` FOREIGN KEY (`optionID`) REFERENCES `tb_options` (`id`),
  ADD CONSTRAINT `rtb_option_payment_type_ibfk_2` FOREIGN KEY (`payment_typeID`) REFERENCES `tb_payment_type` (`id`);

--
-- Constraints for table `rtb_option_projectCategory`
--
ALTER TABLE `rtb_option_projectCategory`
  ADD CONSTRAINT `rtb_option_projectcategory_ibfk_1` FOREIGN KEY (`optionID`) REFERENCES `tb_options` (`id`),
  ADD CONSTRAINT `rtb_option_projectcategory_ibfk_2` FOREIGN KEY (`projectcategoryID`) REFERENCES `tb_project_category` (`id`);

--
-- Constraints for table `rtb_option_usertype`
--
ALTER TABLE `rtb_option_usertype`
  ADD CONSTRAINT `rtb_option_usertype_ibfk_1` FOREIGN KEY (`optionID`) REFERENCES `tb_options` (`id`),
  ADD CONSTRAINT `rtb_option_usertype_ibfk_2` FOREIGN KEY (`usertypeID`) REFERENCES `tb_usertype` (`id`);

--
-- Constraints for table `rtb_user_project`
--
ALTER TABLE `rtb_user_project`
  ADD CONSTRAINT `rtb_user_project_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `tb_users` (`id`),
  ADD CONSTRAINT `rtb_user_project_ibfk_2` FOREIGN KEY (`projectID`) REFERENCES `tb_project` (`id`),
  ADD CONSTRAINT `rtb_user_project_ibfk_3` FOREIGN KEY (`roleID`) REFERENCES `tb_role` (`id`);

--
-- Constraints for table `tb_donation_reason`
--
ALTER TABLE `tb_donation_reason`
  ADD CONSTRAINT `tb_donation_reason_ibfk_1` FOREIGN KEY (`sendtoID`) REFERENCES `tb_send_to` (`id`);

--
-- Constraints for table `tb_option_payment_values`
--
ALTER TABLE `tb_option_payment_values`
  ADD CONSTRAINT `tb_option_payment_values_ibfk_1` FOREIGN KEY (`optionPaymentID`) REFERENCES `rtb_option_payment_type` (`id`),
  ADD CONSTRAINT `tb_option_payment_values_ibfk_2` FOREIGN KEY (`paymentID`) REFERENCES `tb_payment_method` (`id`);

--
-- Constraints for table `tb_option_project_values`
--
ALTER TABLE `tb_option_project_values`
  ADD CONSTRAINT `tb_option_project_values_ibfk_1` FOREIGN KEY (`optionProjectID`) REFERENCES `tb_options` (`id`),
  ADD CONSTRAINT `tb_option_project_values_ibfk_2` FOREIGN KEY (`projectID`) REFERENCES `tb_project` (`id`);

--
-- Constraints for table `tb_option_user_values`
--
ALTER TABLE `tb_option_user_values`
  ADD CONSTRAINT `tb_option_user_values_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `tb_users` (`id`),
  ADD CONSTRAINT `tb_option_user_values_ibfk_2` FOREIGN KEY (`optionUserID`) REFERENCES `rtb_option_usertype` (`id`);

--
-- Constraints for table `tb_payment_method`
--
ALTER TABLE `tb_payment_method`
  ADD CONSTRAINT `tb_payment_method_ibfk_1` FOREIGN KEY (`pay_method_typeID`) REFERENCES `tb_payment_type` (`id`),
  ADD CONSTRAINT `tb_payment_method_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `tb_users` (`id`);

--
-- Constraints for table `tb_request_donation`
--
ALTER TABLE `tb_request_donation`
  ADD CONSTRAINT `tb_request_donation_ibfk_1` FOREIGN KEY (`donationReasonID`) REFERENCES `tb_donation_reason` (`id`),
  ADD CONSTRAINT `tb_request_donation_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `tb_users` (`id`),
  ADD CONSTRAINT `tb_request_donation_ibfk_3` FOREIGN KEY (`paymentMethodID`) REFERENCES `tb_payment_method` (`id`);

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
