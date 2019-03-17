-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2019 at 03:58 PM
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
-- Table structure for table `rtb_option_form`
--

CREATE TABLE IF NOT EXISTS `rtb_option_form` (
  `id` int(11) NOT NULL,
  `formID` int(11) NOT NULL,
  `optionID` int(11) NOT NULL
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
(5, 5, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rtb_project_img`
--

CREATE TABLE IF NOT EXISTS `rtb_project_img` (
  `id` int(11) NOT NULL,
  `projectID` int(11) NOT NULL,
  `imgID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rtb_user_links`
--

CREATE TABLE IF NOT EXISTS `rtb_user_links` (
  `id` int(11) NOT NULL,
  `usertypeID` int(11) NOT NULL,
  `linkID` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rtb_user_links`
--

INSERT INTO `rtb_user_links` (`id`, `usertypeID`, `linkID`, `isdeleted`) VALUES
(1, 1, 5, 0);

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
-- Table structure for table `tb_forms`
--

CREATE TABLE IF NOT EXISTS `tb_forms` (
  `id` int(11) NOT NULL,
  `form_name` varchar(300) NOT NULL,
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
-- Table structure for table `tb_links`
--

CREATE TABLE IF NOT EXISTS `tb_links` (
  `id` int(11) NOT NULL,
  `page_name` varchar(300) NOT NULL,
  `HTML` text NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_links`
--

INSERT INTO `tb_links` (`id`, `page_name`, `HTML`, `isdeleted`) VALUES
(5, 'Admin Page', '<!DOCTYPE html>\n<html lang="en">\n\n<head>\n\n  <meta charset="utf-8">\n  <meta http-equiv="X-UA-Compatible" content="IE=edge">\n  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">\n  <meta name="description" content="">\n  <meta name="author" content="">\n\n  <title> Life from Water Foundation </title>\n\n  <!-- Ajax Link -->\n  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>\n\n  <!-- Custom fonts for this template -->\n  <link href="../../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">\n  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">\n\n  <!-- Custom styles for this template -->\n  <link href="../../css/sb-admin-2.min.css" rel="stylesheet">\n\n  <!-- Custom styles for this page -->\n  <link href="../../vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">\n\n  <!-- Extra css Files -->\n  <link href="../../css/extra/sendEmailForm.css" rel="stylesheet">\n\n</head>\n\n<body id="page-top">\n\n  <!-- Page Wrapper -->\n  <div id="wrapper">\n\n    <!-- Sidebar -->\n    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">\n\n      <!-- Sidebar - Brand -->\n      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="login.html">\n        <div class="sidebar-brand-icon rotate-n-15">\n          <i class="fas fa-laugh-wink"></i>\n        </div>\n        <div class="sidebar-brand-text mx-3">Foundation</div>\n      </a>\n\n      <!-- Divider -->\n      <hr class="sidebar-divider my-0">\n\n      <!-- Nav Item - Dashboard -->\n      <li class="nav-item active">\n        <a class="nav-link" href="dashboard.html">\n          <i class="fas fa-fw fa-tachometer-alt"></i>\n          <span>Dashboard</span></a>\n      </li>\n\n      <!-- Divider -->\n      <hr class="sidebar-divider">\n\n      <!-- Heading -->\n      <div class="sidebar-heading">\n        Interface\n      </div>\n\n      <!-- Nav Item - Pages Collapse Menu -->\n      <li class="nav-item">\n        <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseTwo">\n          <i class="fas fa fa-users"></i>\n          <span> Foundation Members </span>\n        </a>\n        <div id="collapseOne" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordionSidebar">\n          <div class="bg-white py-2 collapse-inner rounded">\n            <h6 class="collapse-header"> Members Interface :</h6>\n            <a class="collapse-item" id="addMemBtn" href=""> Add a Member</a>\n            <a class="collapse-item" id="list_edit_btn" href="">List and Edit </a>\n          </div>\n        </div>\n      </li>\n\n      <li class="nav-item">\n        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">\n          <i class="fa fa-envelope-open"></i>\n          <span>Emails</span>\n        </a>\n        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">\n          <div class="bg-white py-2 collapse-inner rounded">\n            <h6 class="collapse-header">Messages Interface :</h6>\n            <a class="collapse-item" href="#" id="multiMsg"> Multi Message </a>\n          </div>\n        </div>\n      </li>\n\n      <li class="nav-item">\n        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseFour" aria-expanded="true" aria-controls="collapseTwo">\n          <i class="fas fa-fw fa-cog"></i>\n          <span>Settings</span>\n        </a>\n        <div id="collapseFour" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">\n          <div class="bg-white py-2 collapse-inner rounded">\n            <!-- <h6 class="collapse-header">... :</h6> -->\n            <a class="collapse-item" href="Settings.html"> Settings </a>\n          </div>\n        </div>\n      </li>\n\n      <!-- Divider -->\n      <hr class="sidebar-divider">\n\n      <!-- Heading -->\n      <div class="sidebar-heading">\n        Addons\n      </div>\n\n      <!-- Nav Item - Pages Collapse Menu -->\n      <li class="nav-item">\n        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">\n          <i class="fas fa-fw fa-folder"></i>\n          <span>Pages</span>\n        </a>\n        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">\n          <div class="bg-white py-2 collapse-inner rounded">\n            <h6 class="collapse-header">Login Screens:</h6>\n            <a class="collapse-item" href="login.html">Login</a>\n            <a class="collapse-item" href="register.html">Register</a>\n            <a class="collapse-item" href="forgot-password.html">Forgot Password</a>\n            <div class="collapse-divider"></div>\n            <h6 class="collapse-header">Other Pages:</h6>\n            <a class="collapse-item" href="404.html">404 Page</a>\n            <a class="collapse-item" href="blank.html">Blank Page</a>\n          </div>\n        </div>\n      </li>\n\n      <!-- Divider -->\n      <hr class="sidebar-divider d-none d-md-block">\n\n      <!-- Sidebar Toggler (Sidebar) -->\n      <div class="text-center d-none d-md-inline">\n        <button class="rounded-circle border-0" id="sidebarToggle"></button>\n      </div>\n\n    </ul>\n    <!-- End of Sidebar -->\n\n    <!-- Content Wrapper -->\n    <div id="content-wrapper" class="d-flex flex-column">\n\n      <!-- Main Content -->\n      <div id="content">\n\n        <!-- Topbar -->\n        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">\n\n          <!-- Sidebar Toggle (Topbar) -->\n          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">\n            <i class="fa fa-bars"></i>\n          </button>\n\n          <!-- Topbar Search -->\n          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">\n            <div class="input-group">\n              <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">\n              <div class="input-group-append">\n                <button class="btn btn-primary" type="button">\n                  <i class="fas fa-search fa-sm"></i>\n                </button>\n              </div>\n            </div>\n          </form>\n\n          <!-- Topbar Navbar -->\n          <ul class="navbar-nav ml-auto">\n\n            <!-- Nav Item - Search Dropdown (Visible Only XS) -->\n            <li class="nav-item dropdown no-arrow d-sm-none">\n              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">\n                <i class="fas fa-search fa-fw"></i>\n              </a>\n              <!-- Dropdown - Messages -->\n              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">\n                <form class="form-inline mr-auto w-100 navbar-search">\n                  <div class="input-group">\n                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">\n                    <div class="input-group-append">\n                      <button class="btn btn-primary" type="button">\n                        <i class="fas fa-search fa-sm"></i>\n                      </button>\n                    </div>\n                  </div>\n                </form>\n              </div>\n            </li>\n\n            <!-- Nav Item - Alerts -->\n            <li class="nav-item dropdown no-arrow mx-1">\n              <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">\n                <i class="fas fa-bell fa-fw"></i>\n                <!-- Counter - Alerts -->\n                <span class="badge badge-danger badge-counter">3+</span>\n              </a>\n              <!-- Dropdown - Alerts -->\n              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">\n                <h6 class="dropdown-header">\n                  Alerts Center\n                </h6>\n                <a class="dropdown-item d-flex align-items-center" href="#">\n                  <div class="mr-3">\n                    <div class="icon-circle bg-primary">\n                      <i class="fas fa-file-alt text-white"></i>\n                    </div>\n                  </div>\n                  <div>\n                    <div class="small text-gray-500">December 12, 2019</div>\n                    <span class="font-weight-bold">A new monthly report is ready to download!</span>\n                  </div>\n                </a>\n                <a class="dropdown-item d-flex align-items-center" href="#">\n                  <div class="mr-3">\n                    <div class="icon-circle bg-success">\n                      <i class="fas fa-donate text-white"></i>\n                    </div>\n                  </div>\n                  <div>\n                    <div class="small text-gray-500">December 7, 2019</div>\n                    $290.29 has been deposited into your account!\n                  </div>\n                </a>\n                <a class="dropdown-item d-flex align-items-center" href="#">\n                  <div class="mr-3">\n                    <div class="icon-circle bg-warning">\n                      <i class="fas fa-exclamation-triangle text-white"></i>\n                    </div>\n                  </div>\n                  <div>\n                    <div class="small text-gray-500">December 2, 2019</div>\n                    Spending Alert: We have noticed unusually high spending for your account.\n                  </div>\n                </a>\n                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>\n              </div>\n            </li>\n\n            <!-- Nav Item - Messages -->\n            <li class="nav-item dropdown no-arrow mx-1">\n              <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">\n                <i class="fas fa-envelope fa-fw"></i>\n                <!-- Counter - Messages -->\n                <span class="badge badge-danger badge-counter">7</span>\n              </a>\n              <!-- Dropdown - Messages -->\n              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">\n                <h6 class="dropdown-header">\n                  Message Center\n                </h6>\n                <a class="dropdown-item d-flex align-items-center" href="#">\n                  <div class="dropdown-list-image mr-3">\n                    <img class="rounded-circle" src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="">\n                    <div class="status-indicator bg-success"></div>\n                  </div>\n                  <div class="font-weight-bold">\n                    <div class="text-truncate">Hi there! I am wondering if you can help me with a problem I have been having.</div>\n                    <div class="small text-gray-500">Emily Fowler Â· 58m</div>\n                  </div>\n                </a>\n                <a class="dropdown-item d-flex align-items-center" href="#">\n                  <div class="dropdown-list-image mr-3">\n                    <img class="rounded-circle" src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">\n                    <div class="status-indicator"></div>\n                  </div>\n                  <div>\n                    <div class="text-truncate">I have the photos that you ordered last month, how would you like them sent to you?</div>\n                    <div class="small text-gray-500">Jae Chun Â· 1d</div>\n                  </div>\n                </a>\n                <a class="dropdown-item d-flex align-items-center" href="#">\n                  <div class="dropdown-list-image mr-3">\n                    <img class="rounded-circle" src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">\n                    <div class="status-indicator bg-warning"></div>\n                  </div>\n                  <div>\n                    <div class="text-truncate">Last month report looks great, I am very happy with the progress so far, keep up the good work!</div>\n                    <div class="small text-gray-500">Morgan Alvarez Â· 2d</div>\n                  </div>\n                </a>\n                <a class="dropdown-item d-flex align-items-center" href="#">\n                  <div class="dropdown-list-image mr-3">\n                    <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">\n                    <div class="status-indicator bg-success"></div>\n                  </div>\n                  <div>\n                    <div class="text-truncate">Am I a good boy? The reason I ask is because someone told me that people say this to all dogs, even if they are not good...</div>\n                    <div class="small text-gray-500">Chicken the Dog Â· 2w</div>\n                  </div>\n                </a>\n                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>\n              </div>\n            </li>\n\n            <div class="topbar-divider d-none d-sm-block"></div>\n\n            <!-- Nav Item - User Information -->\n            <li class="nav-item dropdown no-arrow">\n              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">\n                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Valerie Luna</span>\n                <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">\n              </a>\n              <!-- Dropdown - User Information -->\n              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">\n                <a class="dropdown-item" href="#">\n                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>\n                  Profile\n                </a>\n                <a class="dropdown-item" href="#">\n                  <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>\n                  Settings\n                </a>\n                <a class="dropdown-item" href="#">\n                  <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>\n                  Activity Log\n                </a>\n                <div class="dropdown-divider"></div>\n                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">\n                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>\n                  Logout\n                </a>\n              </div>\n            </li>\n\n          </ul>\n\n        </nav>\n        <!-- End of Topbar -->\n\n        <!-- Main Content -->\n\n        <div id="errormsg">\n        </div>\n\n        <div id="foundationMembers" class="card shadow mb-4">\n          <div class="card-header py-3">\n            <h6 class="m-0 font-weight-bold text-primary"> Foundation Members</h6>\n          </div>\n          <div class="card-body">\n            <div id="sucess_div" class="alert alert-success" style="display: none"> Record was updated. </div>\n            <div id="error_div" class="alert alert-danger" style="display: none"> Something Wrong Happend. </div>\n\n            <div id="tablediv">\n              <div class="row">\n                <div class="dropdown mb-4 col-sm-2">\n                  <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">\n                    Type L1\n                  </button>\n\n                  <div id="dropdown-usertype-table1" class="dropdown-menu animated--fade-in" aria-labelledby="dropdownMenuButton" x-placement="top-start" style="position: absolute; transform: translate3d(0px, -105px, 0px); top: 0px; left: 0px; will-change: transform;">\n                  </div>\n                </div>\n\n                <div class="dropdown mb-4 col-sm-2">\n                  <button class="t2 btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">\n                    Type L2\n                  </button>\n\n                  <div id="dropdown-usertype-table2" class="dropdown-menu animated--fade-in" aria-labelledby="dropdownMenuButton" x-placement="top-start" style="position: absolute; transform: translate3d(0px, -105px, 0px); top: 0px; left: 0px; will-change: transform;">\n                  </div>\n                </div>\n              </div>\n              <div id="theTable"></div>\n            </div>\n            <div id="update_form_div"></div>\n            <div id="insert_form_div">\n              <div class="row">\n                <div class="dropdown mb-4 col-sm-2">\n                  <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">\n                    Choose1\n                  </button>\n\n                  <div id="dropdown-usertype-insert" class="dropdown-menu animated--fade-in" aria-labelledby="dropdownMenuButton" x-placement="top-start" style="position: absolute; transform: translate3d(0px, -105px, 0px); top: 0px; left: 0px; will-change: transform;">\n                  </div>\n                </div>\n\n                <div class="dropdown mb-4 col-sm-2">\n                  <button class="i2 btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">\n                    Choose2\n                  </button>\n\n                  <div id="dropdown-usertype-insert2" class="dropdown-menu animated--fade-in" aria-labelledby="dropdownMenuButton" x-placement="top-start" style="position: absolute; transform: translate3d(0px, -105px, 0px); top: 0px; left: 0px; will-change: transform;">\n                  </div>\n                </div>\n              </div>\n              <div id="insert_form"></div>\n            </div>\n			\n            <div class="dropdown mb-4">\n            </div>\n          </div>\n        </div>\n      </div>\n\n      <div id="emails" class="card shadow mb-4">  \n        <div class="card-header py-3">\n          <h6 class="m-0 font-weight-bold text-primary"> Emails </h6>\n        </div>\n        <div class="card-body">\n          <div class="hide_to_send_email">\n            <div class="dropdown mb-4">\n              <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">\n                Choose\n              </button>\n\n              <div id="dropdown-email-table" class="dropdown-menu animated--fade-in" aria-labelledby="dropdownMenuButton" x-placement="top-start" style="position: absolute; transform: translate3d(0px, -105px, 0px); top: 0px; left: 0px; will-change: transform;">\n              </div>\n            </div>\n            <div id="table_email_list">\n\n              <h6 class="m-0 font-weight-bold text-primary" style="display: inline;">Select Users You Would Like to Send email to</h6>\n              <a href="#" class="btn btn-primary btn-icon-split" id="tosendform" style="float: right;margin-right: 20px;">\n                <span class="icon text-white-50">\n                  <i class="fas fa-arrow-right"></i>\n                </span>\n                <span class="text">write email</span>\n              </a>\n            </div>\n          </div>\n          <div id="emailForm">\n            <div id="sucess_div" class="alert alert-success" style="display: none"> Message was Send </div>\n            <a href="#" class="btn btn-primary btn-icon-split" id="back_to_email_list">\n              <span class="icon text-white-50">\n                <i class="fas fa-arrow-left"></i>\n              </span>\n              <span class="text">Back</span>\n            </a>\n            <form method="post" id="reused_form">\n              <label for="sendto">Send to:</label>\n              <input id="sendto" type="text" name="Name" required maxlength="50">\n              <br>\n              <label for="fromwhom">From: </label>\n              <input id="fromwhom" type="email" name="Email" required maxlength="50">\n              <br>\n              <label for="message">Message:</label>\n              <textarea id="message" name="Message" rows="10" maxlength="6000" required></textarea>\n              <br>\n              <!-- <button class="button-primary" type="submit" >Send</button> -->\n              <a href="#" class="btn btn-facebook btn-block" id="SendEmailBtn"> Send</a>\n            </form>\n\n          </div>\n        </div>\n      </div>\n\n      <div id="settingsPage" class="container-fluid">\n        <div class="row">\n\n          <!-- Area Chart -->\n          <div class="col-xl-6 col-lg-6">\n            <div class="card shadow mb-4">\n              <!-- Card Header - Dropdown -->\n              <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">\n                <h6 class="m-0 font-weight-bold text-primary">Members Categories Control</h6>\n                <div class="dropdown no-arrow">\n                  <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">\n                    <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>\n                  </a>\n                  <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">\n                    <div class="dropdown-header">Dropdown Header:</div>\n                    <a class="dropdown-item" href="#" id="ShowAddTypeSettingsBtn">Add</a>\n                    <a class="dropdown-item" href="#" id="ShowListTypeSettingsBtn">List</a>\n                    <a class="dropdown-item" href="#">Delete</a>\n                    <div class="dropdown-divider"></div>\n                    <a class="dropdown-item" href="#">Something else here</a>\n                  </div>\n                </div>\n              </div>\n              <!-- Card Body -->\n              <div id="AddTypeSettings" class="card-body">\n                <div>\n                  <input type="Button" class="btn btn-primary" id="MainTypeFormBtn" name="MainTypeFormBtn" value="Main Type" />\n                  <br />\n                  <br />\n                  <input type="Button" class="btn btn-primary" id="SubTypeFormBtn" name="SubTypeFormBtn" value="Sub Type" />\n\n                  <div id="sucessType_div" class="alert alert-success" style="display: none"> Record was updated. </div>\n                  <div id="errorType_div" class="alert alert-danger" style="display: none"> Something Wrong Happend. </div>\n\n                  <div id="AddUserMainTypeForm" style="display: none">\n                    <form id="insertUserMainTypeForm" method="post">\n                      <div class="table-responsive">\n                        <table class="table table-hover table-bordered">\n                          <tbody>\n                            <tr>\n                              <td> Type Name: </td>\n                              <td>\n                                <input type="text" name="TypeName" class="form=control" />\n                              </td>\n                            </tr>\n                            <tr>\n                              <td> Option Name: </td>\n                              <td>\n                                <input type="text" name="ParentType" class="form=control" />\n                                <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">\n                                  Type\n                                </button>\n                                <div id="dropdown-OptionType" class="dropdown-menu animated--fade-in" aria-labelledby="dropdownMenuButton" x-placement="top-start" style="position: absolute; transform: translate3d(0px, -105px, 0px); top: 0px; left: 0px; will-change: transform;">\n                                  <a class="dropdown1 dropdown-item">Text</a>\n                                  <a class="dropdown1 dropdown-item">Email</a>\n                                  <a class="dropdown1 dropdown-item">Password</a>\n                                  <a class="dropdown1 dropdown-item">Integer</a>\n                                </div>\n                              </td>\n                            </tr>\n                          </tbody>\n                        </table>\n                      </div>\n                    </form>\n                  </div> <!-- end of main type form -->\n\n                  <div id="AddUserSubTypeForm" style="display: none">\n                    <form id="insertUserSubTypeForm" method="post">\n                      <div class="table-responsive">\n                        <table class="table table-hover table-bordered">\n                          <tbody>\n                            <tr>\n                              <td> Type Name: </td>\n                              <td>\n                                <input type="text" name="TypeName" class="form=control" />\n                              </td>\n                            </tr>\n                            <tr>\n                              <td> Parent Type: </td>\n                              <td>\n                                <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">\n                                  Type\n                                </button>\n                                <div id="dropdown-MainUserType" class="dropdown-menu animated--fade-in" aria-labelledby="dropdownMenuButton" x-placement="top-start" style="position: absolute; transform: translate3d(0px, -105px, 0px); top: 0px; left: 0px; will-change: transform;">\n                                </div>\n                              </td>\n                            </tr>\n                            <tr>\n                              <td></td>\n                              <td>\n                                <input id="addSubTypeBtn" type="submit" value="Add Type" class="btn btn-primary" name="addSubTypeBtn" />\n                              </td>\n                            </tr>\n                          </tbody>\n                        </table>\n                      </div>\n                    </form>\n                  </div> <!-- end of sub type form -->\n                </div>\n              </div>\n\n              <div id="allTypesTable">\n\n              </div>\n\n            </div>\n          </div> <!-- end of col -->\n\n          <div class="col-xl-6 col-lg-6">\n            <div class="card shadow mb-4">\n              <!-- Card Header - Dropdown -->\n              <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">\n                <h6 class="m-0 font-weight-bold text-primary">Address Control</h6>\n                <div class="dropdown no-arrow">\n                  <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">\n                    <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>\n                  </a>\n                  <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">\n                    <div class="dropdown-header">Dropdown Header:</div>\n                    <a class="dropdown-item" href="#">Add</a>\n                    <a class="dropdown-item" href="#">Update</a>\n                    <a class="dropdown-item" href="#">Delete</a>\n                    <div class="dropdown-divider"></div>\n                    <a class="dropdown-item" href="#">Something else here</a>\n                  </div>\n                </div>\n              </div>\n              <!-- Card Body -->\n              <div class="card-body">\n                <div class="chart-pie pt-4 pb-2">\n                  <div style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;" class="chartjs-size-monitor">\n                    <div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">\n                      <div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div>\n                    </div>\n                    <div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">\n                      <div style="position:absolute;width:200%;height:200%;left:0; top:0"></div>\n                    </div>\n                  </div>\n                  <canvas id="myPieChart" style="display: block; width: 380px; height: 245px;" width="380" height="245" class="chartjs-render-monitor"></canvas>\n                </div>\n              </div>\n            </div>\n          </div>\n\n        </div><!-- end of row -->\n      </div><!-- end of settings -->\n\n	  \n	  <!-- End of Main Content -->\n\n      <!-- Footer -->\n      <footer class="sticky-footer bg-white">\n        <div class="container my-auto">\n          <div class="copyright text-center my-auto">\n            <span>Copyright &copy; MIU Students spring-2019</span>\n          </div>\n        </div>\n      </footer>\n      <!-- End of Footer -->\n\n    </div>\n    <!-- End of Content Wrapper -->\n\n  </div>\n  <!-- End of Page Wrapper -->\n\n  <!-- Scroll to Top Button-->\n  <a class="scroll-to-top rounded" href="#page-top">\n    <i class="fas fa-angle-up"></i>\n  </a>\n\n  <!-- Logout Modal-->\n  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">\n    <div class="modal-dialog" role="document">\n      <div class="modal-content">\n        <div class="modal-header">\n          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>\n          <button class="close" type="button" data-dismiss="modal" aria-label="Close">\n            <span aria-hidden="true">Ã—</span>\n          </button>\n        </div>\n        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>\n        <div class="modal-footer">\n          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>\n          <a class="btn btn-primary" href="login.html">Logout</a>\n        </div>\n        </div>\n      </div>\n    </div>\n  </div>\n\n  <!-- Ajax -->\n  <script src="../Controller/user.js"></script>\n  <script src="../Controller/emails.js"></script>\n\n  <!-- Bootstrap core JavaScript-->\n  <script src="../../vendor/jquery/jquery.min.js"></script>\n  <script src="../../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>\n\n  <!-- Core plugin JavaScript-->\n  <script src="../../vendor/jquery-easing/jquery.easing.min.js"></script>\n\n  <!-- Custom scripts for all pages-->\n  <script src="../../js/sb-admin-2.min.js"></script>\n\n  <!-- Page level plugins -->\n  <script src="../../vendor/datatables/jquery.dataTables.min.js"></script>\n  <script src="../../vendor/datatables/dataTables.bootstrap4.min.js"></script>\n\n</body>\n\n</html>\n', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_logins`
--

CREATE TABLE IF NOT EXISTS `tb_logins` (
  `id` int(11) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `userID` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_logins`
--

INSERT INTO `tb_logins` (`id`, `email`, `password`, `userID`, `isdeleted`) VALUES
(1, 'omar@gmail.com', '123', 12, 0);

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
-- Table structure for table `tb_options_donations`
--

CREATE TABLE IF NOT EXISTS `tb_options_donations` (
  `id` int(11) NOT NULL,
  `option_name` varchar(300) NOT NULL,
  `option_type` varchar(300) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_options_payments`
--

CREATE TABLE IF NOT EXISTS `tb_options_payments` (
  `id` int(11) NOT NULL,
  `option_name` varchar(300) NOT NULL,
  `option_type` varchar(300) NOT NULL,
  `isdeleted` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_options_usertypes`
--

CREATE TABLE IF NOT EXISTS `tb_options_usertypes` (
  `id` int(11) NOT NULL,
  `option_name` varchar(300) NOT NULL,
  `option_type` varchar(300) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_options_usertypes`
--

INSERT INTO `tb_options_usertypes` (`id`, `option_name`, `option_type`, `isdeleted`) VALUES
(1, 'First Name', 'text', 0),
(2, 'Last Name', 'text', 0),
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
-- Table structure for table `tb_option_user_values`
--

CREATE TABLE IF NOT EXISTS `tb_option_user_values` (
  `id` int(11) NOT NULL,
  `optionUserID` int(11) NOT NULL,
  `value` varchar(300) NOT NULL,
  `userID` int(11) NOT NULL,
  `isdeleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_option_user_values`
--

INSERT INTO `tb_option_user_values` (`id`, `optionUserID`, `value`, `userID`, `isdeleted`) VALUES
(41, 1, 'omar', 12, 0),
(42, 2, 'atef', 12, 0),
(45, 5, '2017-02-04', 12, 0),
(86, 1, 'habiba', 22, 1),
(87, 2, 'hegazy', 22, 1),
(90, 5, '2019-03-05', 22, 1);

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
  `prject_name` varchar(300) NOT NULL,
  `project_budget` varchar(300) NOT NULL,
  `notes` varchar(500) NOT NULL,
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
-- Table structure for table `tb_project_image`
--

CREATE TABLE IF NOT EXISTS `tb_project_image` (
  `id` int(11) NOT NULL,
  `img` mediumblob NOT NULL
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`id`, `usertypeID`, `isdeleted`) VALUES
(12, 5, 0),
(22, 5, 1);

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
-- Indexes for table `rtb_option_form`
--
ALTER TABLE `rtb_option_form`
  ADD PRIMARY KEY (`id`),
  ADD KEY `optionID` (`optionID`),
  ADD KEY `formID` (`formID`);

--
-- Indexes for table `rtb_option_payment_type`
--
ALTER TABLE `rtb_option_payment_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `optionID` (`optionID`),
  ADD KEY `payment_typeID` (`payment_typeID`);

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
  ADD KEY `imgID` (`imgID`),
  ADD KEY `projectID` (`projectID`);

--
-- Indexes for table `rtb_user_links`
--
ALTER TABLE `rtb_user_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userID` (`usertypeID`),
  ADD KEY `linkID` (`linkID`);

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
-- Indexes for table `tb_forms`
--
ALTER TABLE `tb_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_gender`
--
ALTER TABLE `tb_gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_links`
--
ALTER TABLE `tb_links`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `tb_options_donations`
--
ALTER TABLE `tb_options_donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_options_payments`
--
ALTER TABLE `tb_options_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_options_usertypes`
--
ALTER TABLE `tb_options_usertypes`
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
-- Indexes for table `tb_project_image`
--
ALTER TABLE `tb_project_image`
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
-- AUTO_INCREMENT for table `rtb_option_form`
--
ALTER TABLE `rtb_option_form`
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
-- AUTO_INCREMENT for table `rtb_project_img`
--
ALTER TABLE `rtb_project_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rtb_user_links`
--
ALTER TABLE `rtb_user_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
-- AUTO_INCREMENT for table `tb_forms`
--
ALTER TABLE `tb_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_gender`
--
ALTER TABLE `tb_gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_links`
--
ALTER TABLE `tb_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_logins`
--
ALTER TABLE `tb_logins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_nationality`
--
ALTER TABLE `tb_nationality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_options_donations`
--
ALTER TABLE `tb_options_donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_options_payments`
--
ALTER TABLE `tb_options_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_options_usertypes`
--
ALTER TABLE `tb_options_usertypes`
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
-- AUTO_INCREMENT for table `tb_option_user_values`
--
ALTER TABLE `tb_option_user_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=91;
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
-- AUTO_INCREMENT for table `tb_project_image`
--
ALTER TABLE `tb_project_image`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
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
  ADD CONSTRAINT `rtb_option_donation_reason_ibfk_1` FOREIGN KEY (`donationReasonID`) REFERENCES `tb_donation_reason` (`id`),
  ADD CONSTRAINT `rtb_option_donation_reason_ibfk_2` FOREIGN KEY (`optionID`) REFERENCES `tb_options_donations` (`id`);

--
-- Constraints for table `rtb_option_form`
--
ALTER TABLE `rtb_option_form`
  ADD CONSTRAINT `rtb_option_form_ibfk_1` FOREIGN KEY (`formID`) REFERENCES `tb_forms` (`id`),
  ADD CONSTRAINT `rtb_option_form_ibfk_2` FOREIGN KEY (`optionID`) REFERENCES `tb_options_usertypes` (`id`);

--
-- Constraints for table `rtb_option_payment_type`
--
ALTER TABLE `rtb_option_payment_type`
  ADD CONSTRAINT `rtb_option_payment_type_ibfk_1` FOREIGN KEY (`optionID`) REFERENCES `tb_options_payments` (`id`),
  ADD CONSTRAINT `rtb_option_payment_type_ibfk_2` FOREIGN KEY (`payment_typeID`) REFERENCES `tb_payment_type` (`id`);

--
-- Constraints for table `rtb_option_usertype`
--
ALTER TABLE `rtb_option_usertype`
  ADD CONSTRAINT `rtb_option_usertype_ibfk_1` FOREIGN KEY (`optionID`) REFERENCES `tb_options_usertypes` (`id`),
  ADD CONSTRAINT `rtb_option_usertype_ibfk_2` FOREIGN KEY (`usertypeID`) REFERENCES `tb_usertype` (`id`);

--
-- Constraints for table `rtb_project_img`
--
ALTER TABLE `rtb_project_img`
  ADD CONSTRAINT `rtb_project_img_ibfk_1` FOREIGN KEY (`imgID`) REFERENCES `tb_project_image` (`id`),
  ADD CONSTRAINT `rtb_project_img_ibfk_2` FOREIGN KEY (`projectID`) REFERENCES `tb_project` (`id`);

--
-- Constraints for table `rtb_user_links`
--
ALTER TABLE `rtb_user_links`
  ADD CONSTRAINT `rtb_user_links_ibfk_1` FOREIGN KEY (`usertypeID`) REFERENCES `tb_usertype` (`id`),
  ADD CONSTRAINT `rtb_user_links_ibfk_2` FOREIGN KEY (`linkID`) REFERENCES `tb_links` (`id`);

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
-- Constraints for table `tb_logins`
--
ALTER TABLE `tb_logins`
  ADD CONSTRAINT `tb_logins_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `tb_users` (`id`);

--
-- Constraints for table `tb_option_donation_values`
--
ALTER TABLE `tb_option_donation_values`
  ADD CONSTRAINT `tb_option_donation_values_ibfk_1` FOREIGN KEY (`donationID`) REFERENCES `tb_request_donation` (`id`);

--
-- Constraints for table `tb_option_payment_values`
--
ALTER TABLE `tb_option_payment_values`
  ADD CONSTRAINT `tb_option_payment_values_ibfk_1` FOREIGN KEY (`optionPaymentID`) REFERENCES `rtb_option_payment_type` (`id`),
  ADD CONSTRAINT `tb_option_payment_values_ibfk_2` FOREIGN KEY (`paymentID`) REFERENCES `tb_payment_method` (`id`);

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
-- Constraints for table `tb_project`
--
ALTER TABLE `tb_project`
  ADD CONSTRAINT `tb_project_ibfk_1` FOREIGN KEY (`projectcategoryID`) REFERENCES `tb_project_category` (`id`);

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
