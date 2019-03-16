-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 16, 2019 at 11:17 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

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
-- Table structure for table `rtb_option_donation_reason`
--

DROP TABLE IF EXISTS `rtb_option_donation_reason`;
CREATE TABLE IF NOT EXISTS `rtb_option_donation_reason` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `optionID` int(11) NOT NULL,
  `donationReasonID` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `optionID` (`optionID`),
  KEY `donationReasonID` (`donationReasonID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rtb_option_payment_type`
--

DROP TABLE IF EXISTS `rtb_option_payment_type`;
CREATE TABLE IF NOT EXISTS `rtb_option_payment_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `optionID` int(11) NOT NULL,
  `payment_typeID` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `optionID` (`optionID`),
  KEY `payment_typeID` (`payment_typeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rtb_option_projectcategory`
--

DROP TABLE IF EXISTS `rtb_option_projectcategory`;
CREATE TABLE IF NOT EXISTS `rtb_option_projectcategory` (
  `id` int(11) NOT NULL,
  `optionID` int(11) NOT NULL,
  `projectcategoryID` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0',
  KEY `projectcategoryID` (`projectcategoryID`),
  KEY `optionID` (`optionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rtb_option_usertype`
--

DROP TABLE IF EXISTS `rtb_option_usertype`;
CREATE TABLE IF NOT EXISTS `rtb_option_usertype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `optionID` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `optionID` (`optionID`),
  KEY `usertypeID` (`usertypeID`)
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

DROP TABLE IF EXISTS `rtb_user_project`;
CREATE TABLE IF NOT EXISTS `rtb_user_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `projectID` int(11) NOT NULL,
  `roleID` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `roleID` (`roleID`),
  KEY `projectID` (`projectID`),
  KEY `userID` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_address`
--

DROP TABLE IF EXISTS `tb_address`;
CREATE TABLE IF NOT EXISTS `tb_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address_name` varchar(300) NOT NULL,
  `parentID` int(11) NOT NULL DEFAULT '0',
  `isdeleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_donation_reason`
--

DROP TABLE IF EXISTS `tb_donation_reason`;
CREATE TABLE IF NOT EXISTS `tb_donation_reason` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reason` varchar(300) NOT NULL,
  `sendtoID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sendtoID` (`sendtoID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_event_type`
--

DROP TABLE IF EXISTS `tb_event_type`;
CREATE TABLE IF NOT EXISTS `tb_event_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_type_name` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_gender`
--

DROP TABLE IF EXISTS `tb_gender`;
CREATE TABLE IF NOT EXISTS `tb_gender` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gender_name` varchar(300) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_nationality`
--

DROP TABLE IF EXISTS `tb_nationality`;
CREATE TABLE IF NOT EXISTS `tb_nationality` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nationality_name` varchar(300) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_options`
--

DROP TABLE IF EXISTS `tb_options`;
CREATE TABLE IF NOT EXISTS `tb_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_name` varchar(300) NOT NULL,
  `option_type` varchar(300) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
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

DROP TABLE IF EXISTS `tb_option_donation_values`;
CREATE TABLE IF NOT EXISTS `tb_option_donation_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `optionDrID` int(11) NOT NULL,
  `value` varchar(300) NOT NULL,
  `donationID` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `donationID` (`donationID`),
  KEY `optionDrID` (`optionDrID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_option_payment_values`
--

DROP TABLE IF EXISTS `tb_option_payment_values`;
CREATE TABLE IF NOT EXISTS `tb_option_payment_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `optionPaymentID` int(11) NOT NULL,
  `value` varchar(300) NOT NULL,
  `paymentID` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `optionPaymentID` (`optionPaymentID`),
  KEY `paymentID` (`paymentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_option_project_values`
--

DROP TABLE IF EXISTS `tb_option_project_values`;
CREATE TABLE IF NOT EXISTS `tb_option_project_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `optionProjectID` int(11) NOT NULL,
  `value` varchar(300) NOT NULL,
  `projectID` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `projectcategoryID` (`optionProjectID`),
  KEY `projectID` (`projectID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_option_user_values`
--

DROP TABLE IF EXISTS `tb_option_user_values`;
CREATE TABLE IF NOT EXISTS `tb_option_user_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `optionUserID` int(11) NOT NULL,
  `value` varchar(300) NOT NULL,
  `userID` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userID` (`userID`),
  KEY `optionUserID` (`optionUserID`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_option_user_values`
--

INSERT INTO `tb_option_user_values` (`id`, `optionUserID`, `value`, `userID`, `isdeleted`) VALUES
(41, 1, 'Omar', 8, 0),
(42, 2, 'Atef', 8, 0),
(43, 3, 'admin@a.com', 8, 0),
(44, 4, 'admin', 8, 0),
(45, 5, '2018-11-20', 8, 0),
(46, 1, 'test', 9, 1),
(47, 1, 'test', 10, 1),
(48, 2, 'test', 9, 1),
(49, 2, 'test', 10, 1),
(50, 3, 'admint@a.com', 10, 1),
(51, 3, 'admint@a.com', 9, 1),
(52, 4, 'admin', 10, 1),
(53, 4, 'admin', 9, 1),
(54, 5, '2018-11-20', 10, 1),
(55, 5, '2018-11-20', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_payment_method`
--

DROP TABLE IF EXISTS `tb_payment_method`;
CREATE TABLE IF NOT EXISTS `tb_payment_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `pay_method_typeID` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pay_method_typeID` (`pay_method_typeID`),
  KEY `userID` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_payment_type`
--

DROP TABLE IF EXISTS `tb_payment_type`;
CREATE TABLE IF NOT EXISTS `tb_payment_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method_name` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_project`
--

DROP TABLE IF EXISTS `tb_project`;
CREATE TABLE IF NOT EXISTS `tb_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectcategoryID` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `projectcategoryID` (`projectcategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_project_category`
--

DROP TABLE IF EXISTS `tb_project_category`;
CREATE TABLE IF NOT EXISTS `tb_project_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(300) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_request_donation`
--

DROP TABLE IF EXISTS `tb_request_donation`;
CREATE TABLE IF NOT EXISTS `tb_request_donation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `donationReasonID` int(11) NOT NULL,
  `paymentMethodID` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userID` (`userID`),
  KEY `donationReasonID` (`donationReasonID`),
  KEY `paymentMethodID` (`paymentMethodID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_role`
--

DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE IF NOT EXISTS `tb_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(300) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_send_to`
--

DROP TABLE IF EXISTS `tb_send_to`;
CREATE TABLE IF NOT EXISTS `tb_send_to` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `receiver_name` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

DROP TABLE IF EXISTS `tb_users`;
CREATE TABLE IF NOT EXISTS `tb_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usertypeID` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `usertypeID` (`usertypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`id`, `usertypeID`, `isdeleted`) VALUES
(8, 5, 0),
(9, 5, 1),
(10, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_usertype`
--

DROP TABLE IF EXISTS `tb_usertype`;
CREATE TABLE IF NOT EXISTS `tb_usertype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usertype_name` varchar(300) NOT NULL,
  `parentID` int(11) DEFAULT '0',
  `isdeleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_usertype`
--

INSERT INTO `tb_usertype` (`id`, `usertype_name`, `parentID`, `isdeleted`) VALUES
(1, 'Admin', 0, 0),
(2, 'Donar', 0, 0),
(3, 'New Donar', 2, 0),
(4, 'VIP Donar', 2, 0),
(5, 'HL Admin', 1, 0),
(6, 'Tes', 1, 0),
(7, 'admin1', 1, 0),
(8, 'test', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_log`
--

DROP TABLE IF EXISTS `tb_user_log`;
CREATE TABLE IF NOT EXISTS `tb_user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `eventtypeID` int(11) NOT NULL,
  `createdTime` timestamp NOT NULL,
  `description` varchar(500) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `eventtypeID` (`eventtypeID`),
  KEY `userID` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Constraints for table `rtb_option_projectcategory`
--
ALTER TABLE `rtb_option_projectcategory`
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
