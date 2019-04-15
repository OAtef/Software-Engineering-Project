<?php

require_once '../Model/login.php';
require_once '../Model/usertypes.php';
include_once '../Model/pages.php';


$emptyArr = array();

$ut = new usertypes(null);
$p = new page(null);


session_start();
if ($_SESSION['user-id'] != -1) {
    $userID = $_SESSION['user-id'];
} else {
    header("location:../View/index.php");
}


$data = array($userID);
$type_id = $ut->get_usertype($data);

$data = array($type_id);
$menu = $p->_read($data, $emptyArr);

?>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <title> Life from Water Foundation </title>

  <!-- Ajax Link -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

  <!-- Custom fonts for this template -->
  <link href="../../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="../../css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="../../vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

  <!-- Extra css Files -->
  <link href="../../css/extra/sendEmailForm.css" rel="stylesheet">
  <link href="../../css/extra/log.css" rel="stylesheet">

  <style>

	.aa {
	text-decoration: none;
	display: inline-block;
	padding: 8px 16px;
	}

	.aa:hover {
	background-color: #ddd;
	color: black;
	}

	.previous {
	background-color: #f1f1f1;
	color: black;
	}

	.next {
	background-color: #466BD9;
	color: white;
	}

  </style>

</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="login.html">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3"> Foundation </div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" id="dashboardbtn" href="#">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>
          
      <li class="nav-item active">
        <a class="nav-link" id="logbtn" href="#">
          <i class="fas fa-cog fa-pulse"></i>
          <span>Logs</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Interface
      </div>

      <!-- Nav Items - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa fa-users"></i>
          <span> Foundation Members </span>
        </a>
        <div id="collapseOne" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" id="addMemBtn" href=""> Add a Member</a>
            <a class="collapse-item" id="list_edit_btn" href=""> List and Edit </a>
          </div>
        </div>
      </li>

      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fa fa-envelope-open"></i>
          <span>Emails</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="#" id='multiMsg'> Multi Message </a>
          </div>
        </div>
      </li>

      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fa fa-tasks"></i>
          <span> Projects </span>
        </a>
        <div id="collapseThree" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="#" id='list_project_Btn'> List Project </a>
            <a class="collapse-item" href="#" id='insert_project_Btn'> Insert Project </a>
          </div>
        </div>
      </li>

      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseFour" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-donate"></i>
          <span> Donations </span>
        </a>
        <div id="collapseFour" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="#" id='reqDonationBtn'> Requested Donations </a>

          </div>
        </div>
      </li>

      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseFive" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span>Settings</span>
        </a>
        <div id="collapseFive" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="#" id='settingsBtn'> Settings </a>
          </div>
        </div>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>

            <!-- Nav Item - Alerts -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-bell fa-fw"></i>
                <!-- Counter - Alerts -->
                <span class="badge badge-danger badge-counter">3+</span>
              </a>
              <!-- Dropdown - Alerts -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                <h6 class="dropdown-header">
                  Alerts Center
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-primary">
                      <i class="fas fa-file-alt text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 12, 2019</div>
                    <span class="font-weight-bold">A new monthly report is ready to download!</span>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-success">
                      <i class="fas fa-donate text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 7, 2019</div>
                    $290.29 has been deposited into your account!
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-warning">
                      <i class="fas fa-exclamation-triangle text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 2, 2019</div>
                    Spending Alert: We've noticed unusually high spending for your account.
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
              </div>
            </li>

            <!-- Nav Item - Messages -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-envelope fa-fw"></i>
                <!-- Counter - Messages -->
                <span class="badge badge-danger badge-counter">7</span>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
                <h6 class="dropdown-header">
                  Message Center
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div class="font-weight-bold">
                    <div class="text-truncate">Hi there! I am wondering if you can help me with a problem I've been having.</div>
                    <div class="small text-gray-500">Emily Fowler Â· 58m</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">
                    <div class="status-indicator"></div>
                  </div>
                  <div>
                    <div class="text-truncate">I have the photos that you ordered last month, how would you like them sent to you?</div>
                    <div class="small text-gray-500">Jae Chun Â· 1d</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">
                    <div class="status-indicator bg-warning"></div>
                  </div>
                  <div>
                    <div class="text-truncate">Last month's report looks great, I am very happy with the progress so far, keep up the good work!</div>
                    <div class="small text-gray-500">Morgan Alvarez Â· 2d</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div>
                    <div class="text-truncate">Am I a good boy? The reason I ask is because someone told me that people say this to all dogs, even if they aren't good...</div>
                    <div class="small text-gray-500">Chicken the Dog Â· 2w</div>
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
              </div>
            </li>

            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Valerie Luna</span>
                <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                  Settings
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                  Activity Log
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

        	</ul>
		<!-- End of Topbar -->

		</nav>
       

        <!-- Main Content -->

        <div id="errormsg">
        </div> <!-- end of error msg div -->

        <div id="dashboard">
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary"> Dashboard </h6>
            </div>
            <div class="card-body">

              <div class="container-fluid">

                <!-- Page Heading -->
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                  <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i>
                    Generate Report</a>
                </div>

                <!-- Content Row -->
                <div class="row">

                  <!-- Earnings (Monthly) Card Example -->
                  <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-primary shadow h-100 py-2">
                      <div class="card-body">
                        <div class="row no-gutters align-items-center">
                          <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Earnings (Monthly)</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">$40,000</div>
                          </div>
                          <div class="col-auto">
                            <i class="fas fa-calendar fa-2x text-gray-300"></i>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <!-- Earnings (Monthly) Card Example -->
                  <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-success shadow h-100 py-2">
                      <div class="card-body">
                        <div class="row no-gutters align-items-center">
                          <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Earnings (Annual)</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">$215,000</div>
                          </div>
                          <div class="col-auto">
                            <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <!-- Earnings (Monthly) Card Example -->
                  <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-info shadow h-100 py-2">
                      <div class="card-body">
                        <div class="row no-gutters align-items-center">
                          <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Tasks</div>
                            <div class="row no-gutters align-items-center">
                              <div class="col-auto">
                                <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">50%</div>
                              </div>
                              <div class="col">
                                <div class="progress progress-sm mr-2">
                                  <div class="progress-bar bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="col-auto">
                            <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <!-- Pending Requests Card Example -->
                  <div class="col-xl-3 col-md-6 mb-4">
                    <div class="card border-left-warning shadow h-100 py-2">
                      <div class="card-body">
                        <div class="row no-gutters align-items-center">
                          <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Pending Requests</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">18</div>
                          </div>
                          <div class="col-auto">
                            <i class="fas fa-comments fa-2x text-gray-300"></i>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Content Row -->

                <div class="row">

                  <!-- Area Chart -->
                  <div class="col-xl-8 col-lg-7">
                    <div class="card shadow mb-4">
                      <!-- Card Header - Dropdown -->

                      <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">

                        <h6 class="m-0 font-weight-bold text-primary">Earnings Overview</h6>
                        <div class="dropdown ">

                          <div class="btn-group">

                            <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              Donations
                            </button>
                            <div class="dropdown-menu">
                              <a class="dropdown-item" href="#">Daily</a>
                              <a class="dropdown-item" href="#">Weekly</a>
                              <a class="dropdown-item" href="#">Monthly</a>
                              <a class="dropdown-item" href="#">Annually</a>
                              <div class="dropdown-divider"></div>
                              <div> Custom: <input type="date" name="CustomDonation"> </div>
                              <!-- <button onclick="CustomDonation()" id="customDonations" type="date" class="dropdown-item" href="#">Custom</button> -->
                            </div>
                          </div>
                          <div class="btn-group">
                            <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              Gender
                            </button>
                            <div class="dropdown-menu">
                              <a class="dropdown-item" href="#">Male</a>
                              <a class="dropdown-item" href="#">Female</a>
                            </div>
                          </div>

                          <div class="btn-group">
                            <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              Project
                            </button>
                            <div class="dropdown-menu">
                              <a class="dropdown-item" href="#">Limit</a>
                              <a class="dropdown-item" href="#">Milestone</a>
                              <a class="dropdown-item" href="#">Demography</a>

                            </div>
                          </div>


                        </div>
                      </div>

                      <!-- Card Body -->
                      <div class="card-body" id="cardbody">
                        <div class="chart-area">
                          <canvas id="myAreaChart"></canvas>
                        </div>



                      </div>

                      <div style="text-align: right; margin-right: 60px"><button id="isChart" onclick="changeButton()" class="btn btn-primary " type="button" value="ChartBar">ChartBar</button> </div>
                      <hr>
                    </div>

                  </div>
                  <!-- Pie Chart -->

                  <div class="col-xl-4 col-lg-5">
                    <div class="card shadow mb-4">
                      <!-- Card Header - Dropdown -->
                      <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                        <h6 class="m-0 font-weight-bold text-primary">Revenue Sources</h6>
                        <div class="dropdown no-arrow">
                          <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                          </a>
                          <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                            <div class="dropdown-header">Dropdown Header:</div>
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                          </div>
                        </div>
                      </div>
                      <!-- Card Body -->
                      <div class="card-body">
                        <div class="chart-pie pt-4 pb-2">
                          <canvas id="myPieChart"></canvas>
                        </div>
                        <div class="mt-4 text-center small">
                          <span class="mr-2">
                            <i class="fas fa-circle text-primary"></i> Direct
                          </span>
                          <span class="mr-2">
                            <i class="fas fa-circle text-success"></i> Social
                          </span>
                          <span class="mr-2">
                            <i class="fas fa-circle text-info"></i> Referral
                          </span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <div>

                  <!-- Content Row -->
                  <div class="row">

                    <!-- Content Column -->
                    <div class="col-lg-6 mb-4">

                      <!-- Project Card Example -->

                      <div class="card shadow mb-4">
                        <div class="card-header py-3">
                          <h6 class="m-0 font-weight-bold text-primary">Projects</h6>
                        </div>
                        <div class="card-body">
                          <h4 class="small font-weight-bold">Server Migration <span class="float-right">20%</span></h4>
                          <div class="progress mb-4">
                            <div class="progress-bar bg-danger" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                          </div>
                          <h4 class="small font-weight-bold">Sales Tracking <span class="float-right">40%</span></h4>
                          <div class="progress mb-4">
                            <div class="progress-bar bg-warning" role="progressbar" style="width: 40%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
                          </div>
                          <h4 class="small font-weight-bold">Customer Database <span class="float-right">60%</span></h4>
                          <div class="progress mb-4">
                            <div class="progress-bar" role="progressbar" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
                          </div>
                          <h4 class="small font-weight-bold">Payout Details <span class="float-right">80%</span></h4>
                          <div class="progress mb-4">
                            <div class="progress-bar bg-info" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                          </div>
                          <h4 class="small font-weight-bold">Account Setup <span class="float-right">Complete!</span></h4>
                          <div class="progress">
                            <div class="progress-bar bg-success" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                          </div>
                        </div>
                      </div>

                    </div>
                    <div class="col-sm-3 col-md-6 mb-1">
                      <div class="card border-left-warning shadow h-100 py-2">
                        <div class="card-body">
                          <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                              <div class="text-xs font-weight-bold text-warning text-uppercase mb-2">Onboard People</div>
                              <div class="h5 mb-3 font-weight-bold text-gray-800">Donators : 623,256</div>
                              <div class="h5 mb-3 font-weight-bold text-gray-800">Lifetime Donation: 16230$</div>
                              <div class="h5 mb-3 font-weight-bold text-gray-800">The Most Viral Project: Water Somal</div>
                              <div class="h5 mb-4 font-weight-bold text-gray-800"> </div>
                            </div>
                            <div class="col-auto">
                              <i class="fas fa-comments fa-2x text-gray-300"></i>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                </div>
                <!-- /.container-fluid -->
              </div>
            </div>
          </div>
        </div> <!-- end of dashboard -->

        <div id="foundationMembers" class="card shadow mb-4">
          <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary"> Foundation Members</h6>
          </div>
          <div class="card-body">
            <div id="sucess_div" class='alert alert-success' style="display: none"> Record was updated. </div>
            <div id="error_div" class='alert alert-danger' style="display: none"> Something Wrong Happend. </div>

            <div id="tablediv">
              <div class='row'>
                <div class="dropdown mb-4 col-sm-2">
                  <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Type L1
                  </button>

                  <div id="dropdown-usertype-table1" class="dropdown-menu animated--fade-in" aria-labelledby="dropdownMenuButton" x-placement="top-start" style="position: absolute; transform: translate3d(0px, -105px, 0px); top: 0px; left: 0px; will-change: transform;">
                  </div>
                </div>

                <div class="dropdown mb-4 col-sm-2">
                  <button class="t2 btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Type L2
                  </button>

                  <div id="dropdown-usertype-table2" class="dropdown-menu animated--fade-in" aria-labelledby="dropdownMenuButton" x-placement="top-start" style="position: absolute; transform: translate3d(0px, -105px, 0px); top: 0px; left: 0px; will-change: transform;">
                  </div>
                </div>
              </div>
              <div id="theTable"></div>
            </div>
			
			<div id="update_form_div"></div>
			
			<div id="insert_form_div">
              <div class='row'>
                <div class="dropdown mb-4 col-sm-2">
                  <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Choose1
                  </button>

                  <div id="dropdown-usertype-insert" class="dropdown-menu animated--fade-in" aria-labelledby="dropdownMenuButton" x-placement="top-start" style="position: absolute; transform: translate3d(0px, -105px, 0px); top: 0px; left: 0px; will-change: transform;">
                  </div>
                </div>

                <div class="dropdown mb-4 col-sm-2">
                  <button class="i2 btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Choose2
                  </button>

                  <div id="dropdown-usertype-insert2" class="dropdown-menu animated--fade-in" aria-labelledby="dropdownMenuButton" x-placement="top-start" style="position: absolute; transform: translate3d(0px, -105px, 0px); top: 0px; left: 0px; will-change: transform;">
                  </div>
                </div>
              </div>
              <div id="insert_form"></div>
            </div>

            <div class="dropdown mb-4">
            </div>
          </div>
        </div>

        <div id="emailsPage" class="card shadow mb-4">
          <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary"> Emails </h6>
          </div>
          <div class="card-body">
            <div class='hide_to_send_email'>
              <div class="dropdown mb-4">
                <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Choose
                </button>

                <div id="dropdown-email-table" class="dropdown-menu animated--fade-in" aria-labelledby="dropdownMenuButton" x-placement="top-start" style="position: absolute; transform: translate3d(0px, -105px, 0px); top: 0px; left: 0px; will-change: transform;">
                </div>
              </div>
              <div id="table_email_list">

                <h6 class="m-0 font-weight-bold text-primary" style="display: inline;">Select Users You Would Like to Send email to</h6>
                <a href="#" class="btn btn-primary btn-icon-split" id='tosendform' style="float: right;margin-right: 20px;">
                  <span class="icon text-white-50">
                    <i class="fas fa-arrow-right"></i>
                  </span>
                  <span class="text">write email</span>
                </a>

                <div class="table-responsive">
                  <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                      <tr>
                        <th>Select</th>
                        <th>Name</th>
                        <th>Position</th>
                        <th>Office</th>
                        <th>Age</th>
                        <th>Start date</th>
                        <th>Salary</th>
                      </tr>
                    </thead>
                    <tfoot>
                      <tr>
                        <th>Select</th>
                        <th>Name</th>
                        <th>Position</th>
                        <th>Office</th>
                        <th>Age</th>
                        <th>Start date</th>
                        <th>Salary</th>
                      </tr>
                    </tfoot>
                    <tbody>
                      <tr>
                        <td> <input type="checkbox" name="gender" id="other" value="other"> </td>
                        <td>Tiger Nixon</td>
                        <td>System Architect</td>
                        <td>Edinburgh</td>
                        <td>61</td>
                        <td>2011/04/25</td>
                        <td>$320,800</td>
                      </tr>
                      <tr>
                        <td> <input type="checkbox" name="gender" id="other" value="other"> </td>
                        <td>Garrett Winters</td>
                        <td>Accountant</td>
                        <td>Tokyo</td>
                        <td>63</td>
                        <td>2011/07/25</td>
                        <td>$170,750</td>
                      </tr>
                      <tr>
                        <td> <input type="checkbox" name="gender" id="other" value="other"> </td>
                        <td>Ashton Cox</td>
                        <td>Junior Technical Author</td>
                        <td>San Francisco</td>
                        <td>66</td>
                        <td>2009/01/12</td>
                        <td>$86,000</td>
                      </tr>
                      <tr>
                        <td> <input type="checkbox" name="gender" id="other" value="other"> </td>
                        <td>Cedric Kelly</td>
                        <td>Senior Javascript Developer</td>
                        <td>Edinburgh</td>
                        <td>22</td>
                        <td>2012/03/29</td>
                        <td>$433,060</td>
                      </tr>
                      <tr>
                        <td> <input type="checkbox" name="gender" id="other" value="other"> </td>
                        <td>Airi Satou</td>
                        <td>Accountant</td>
                        <td>Tokyo</td>
                        <td>33</td>
                        <td>2008/11/28</td>
                        <td>$162,700</td>
                      </tr>
                      <tr>
                        <td> <input type="checkbox" name="gender" id="other" value="other"> </td>
                        <td>Brielle Williamson</td>
                        <td>Integration Specialist</td>
                        <td>New York</td>
                        <td>61</td>
                        <td>2012/12/02</td>
                        <td>$372,000</td>
                      </tr>
                      <tr>
                        <td> <input type="checkbox" name="gender" id="other" value="other"> </td>
                        <td>Herrod Chandler</td>
                        <td>Sales Assistant</td>
                        <td>San Francisco</td>
                        <td>59</td>
                        <td>2012/08/06</td>
                        <td>$137,500</td>
                      </tr>
                      <tr>
                        <td> <input type="checkbox" name="gender" id="other" value="other"> </td>
                        <td>Rhona Davidson</td>
                        <td>Integration Specialist</td>
                        <td>Tokyo</td>
                        <td>55</td>
                        <td>2010/10/14</td>
                        <td>$327,900</td>
                      </tr>
                      <tr>
                        <td> <input type="checkbox" name="gender" id="other" value="other"> </td>
                        <td>Colleen Hurst</td>
                        <td>Javascript Developer</td>
                        <td>San Francisco</td>
                        <td>39</td>
                        <td>2009/09/15</td>
                        <td>$205,500</td>
                      </tr>
                      <tr>
                        <td> <input type="checkbox" name="gender" id="other" value="other"> </td>
                        <td>Sonya Frost</td>
                        <td>Software Engineer</td>
                        <td>Edinburgh</td>
                        <td>23</td>
                        <td>2008/12/13</td>
                        <td>$103,600</td>
                      </tr>
                      <tr>
                        <td> <input type="checkbox" name="gender" id="other" value="other"> </td>
                        <td>Jena Gaines</td>
                        <td>Office Manager</td>
                        <td>London</td>
                        <td>30</td>
                        <td>2008/12/19</td>
                        <td>$90,560</td>
                      </tr>
                      <tr>
                        <td> <input type="checkbox" name="gender" id="other" value="other"> </td>
                        <td>Quinn Flynn</td>
                        <td>Support Lead</td>
                        <td>Edinburgh</td>
                        <td>22</td>
                        <td>2013/03/03</td>
                        <td>$342,000</td>
                      </tr>

                      <tr>
                        <td> <input type="checkbox" name="gender" id="other" value="other"> </td>
                        <td>Donna Snider</td>
                        <td>Customer Support</td>
                        <td>New York</td>
                        <td>27</td>
                        <td>2011/01/25</td>
                        <td>$112,000</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <div id="emailForm">
              <div id="sucess_div" class='alert alert-success' style="display: none"> Message was Send </div>
              <a href="#" class="btn btn-primary btn-icon-split" id='back_to_email_list'>
                <span class="icon text-white-50">
                  <i class="fas fa-arrow-left"></i>
                </span>
                <span class="text">Back</span>
              </a>
              <form method="post" id="reused_form">
                <label for="sendto">Send to:</label>
                <input id="sendto" type="text" name="Name" required maxlength="50">
                <br>
                <label for="fromwhom">From: </label>
                <input id="fromwhom" type="email" name="Email" required maxlength="50">
                <br>
                <label for="message">Message:</label>
                <textarea id="message" name="Message" rows="10" maxlength="6000" required></textarea>
                <br>
                <!-- <button class="button-primary" type="submit" >Send</button> -->
                <a href="#" class="btn btn-facebook btn-block" id="SendEmailBtn"> Send</a>
              </form>

            </div>
          </div>
        </div>

        <div id="settingsPage" class="container-fluid">
          <div class="row">

            <div class="col-xl-6 col-lg-6">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Members Types Control</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Control Options:</div>
                      <a class="dropdown-item" href="#" id="ShowAddTypeSettingsBtn">Add</a>
                      <a class="dropdown-item" href="#" id="ShowListTypeSettingsBtn">List</a>
                    </div>
                  </div>
                </div>
                <!-- Card Body -->
                <div id="AddTypeSettings" class="card-body" style="display: none">

                  <div id="sucessType_div" class='alert alert-success' style="display: none"> Record was updated. </div>
                  <div id="errorType_div" class='alert alert-danger' style="display: none"> Something Wrong Happend. </div>

                  <form id="insertUserSubTypeForm" method="post">
                    <div class="table-responsive">
                      <table class='table table-hover table-bordered'>
                        <tbody>
                          <tr>
                            <td> Type Name: </td>
                            <td>
                              <input type="text" name="TypeName" class='form=control' />
                            </td>
                          </tr>
                          <tr>
                            <td> Parent Type: </td>
                            <td>
                              <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Type
                              </button>
                              <div id="dropdown-MainUserType" class="dropdown-menu animated--fade-in" aria-labelledby="dropdownMenuButton" x-placement="top-start" style="position: absolute; transform: translate3d(0px, -105px, 0px); top: 0px; left: 0px; will-change: transform;">
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <td></td>
                            <td>
                              <input id='addSubTypeBtn' type='submit' value='Add Type' class='btn btn-primary' name='addSubTypeBtn' />
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </form>
                </div>

                <div id="allTypesTable">
                  <div id="sucessTypeTable_div" class='alert alert-success' style="display: none"> Record was updated. </div>
                  <div id="errorTypeTable_div" class='alert alert-danger' style="display: none"> Something Wrong Happend. </div>

                </div>

                <div id="update_typeForm">


                </div>

              </div>
            </div> <!-- end of col -->

            <div class="col-xl-6 col-lg-6">
              <!-- Options Panel -->
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Control User Types Options</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Control Options:</div>
                      <a class="dropdown-item" href="#" id="showAddOptionBtn">Add</a>
                      <a class="dropdown-item" href="#" id="showListOptionBtn">List</a>
                    </div>
                  </div>
                </div>
                <!-- Card Body -->
                <div id="AddOptionSettings" class="card-body" style="display: none">
                  <!-- <input type='Button' class='btn btn-primary' id="MainTypeFormBtn" name='OptionFormBtn' value="Main Type" /> -->

                  <div id="sucessOption_div" class='alert alert-success' style="display: none"> Record was updated. </div>
                  <div id="errorOption_div" class='alert alert-danger' style="display: none"> Something Wrong Happend. </div>

                  <form id="insertOptionForm" method="post">
                    <div class="table-responsive">
                      <table class='table table-hover table-bordered'>
                        <tbody>
                          <tr>
                            <td> Option Name: </td>
                            <td>
                              <input type="text" id="OptionName" name="OptionName" class='form=control' />
                            </td>
                          </tr>
                          <tr>
                            <td> Option Type: </td>
                            <td>
                              <input type="text" id="OptionTypeName" name="OptionType" class='form=control' readonly="readonly" />
                              <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Type
                              </button>
                              <div id="dropdown-OptionType" class="dropdown-menu animated--fade-in" aria-labelledby="dropdownMenuButton" x-placement="top-start" style="position: absolute; transform: translate3d(0px, -105px, 0px); top: 0px; left: 0px; will-change: transform;">
                                <a class='dropdown-item'>Text</a>
                                <a class='dropdown-item'>Email</a>
                                <a class='dropdown-item'>Password</a>
                                <a class='dropdown-item'>Integer</a>
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <td></td>
                            <td>
                              <input id='addOptionBtn' type='submit' value='Add Option' class='btn btn-primary' name='addOptionBtn' />
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </form>
                </div>

                <div id="allOptionsTable">
                  <div id="sucessOptionTable_div" class='alert alert-success' style="display: none"> Record was updated. </div>
                  <div id="errorOptionTable_div" class='alert alert-danger' style="display: none"> Something Wrong Happend. </div>

                </div>

                <div id="update_OptionForm">

                </div>

              </div>
            </div> <!-- end of col -->
          </div><!-- end of row1 -->

          <div class="row">

            <div class="col-xl-6 col-lg-6">
              <!-- Options Panel -->
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <h6 class="m-0 font-weight-bold text-primary">Control UserType Permission</h6>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Control Permissions:</div>
                      <a class="dropdown-item" href="#" id="showLinkPermissionBtn">Add</a>
                      <a class="dropdown-item" href="#" id="showListPermissionBtn">List</a>
                    </div>
                  </div>
                </div>
                <!-- Card Body -->
                <div id="LinkPermissionSettings" class="card-body" style="display: none">

                  <div id="sucessLinkPermission_div" class='alert alert-success' style="display: none"> Record was updated. </div>
                  <div id="errorLinkPermission_div" class='alert alert-danger' style="display: none"> Something Wrong Happend. </div>

                  <form id="LinkPermissionTypeForm" method="post">
                    <div class="table-responsive">
                      <table class='table table-hover table-bordered'>
                        <tbody>
                          <tr>
                            <td> User Type: </td>
                            <td>
                              <input type="text" id="UserTypeName" name="UserTypeName" class='form=control' readonly="readonly" />
                              <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Type
                              </button>
                              <div id="dropdown-UserTypes" class="dropdown-menu animated--fade-in" aria-labelledby="dropdownMenuButton" x-placement="top-start" style="position: absolute; transform: translate3d(0px, -105px, 0px); top: 0px; left: 0px; will-change: transform;">
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <td> Permission: </td>
                            <td>
                              <input type="text" id="PermissionName" name="PermissionName" class='form=control' readonly="readonly" />
                              <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Type
                              </button>
                              <div id="dropdown-Permissions" class="dropdown-menu animated--fade-in" aria-labelledby="dropdownMenuButton" x-placement="top-start" style="position: absolute; transform: translate3d(0px, -105px, 0px); top: 0px; left: 0px; will-change: transform;">
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <td></td>
                            <td>
                              <input id='LinkPermissionBtn' type='submit' value='Link Permission' class='btn btn-primary' name='addOptionBtn' />
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </form>
                </div>

                <div id="allPermissionsTable">
                  <div id="sucessPermissionTable_div" class='alert alert-success' style="display: none"> Record was updated. </div>
                  <div id="errorPermissionTable_div" class='alert alert-danger' style="display: none"> Something Wrong Happend. </div>

                </div>

                <div id="update_PermissionForm">

                </div>

              </div>
            </div> <!-- end of col -->

          </div> <!-- end of row2 -->
        </div><!-- end of settings -->


        <div id="tableProject" class="card shadow mb-4">
          <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary"> List Project </h6>
          </div>
          <div class="card-body">

              <div class="dropdown mb-4 col-sm-2">
                  <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Category
                  </button>

                  <div id="dropdown-project-table" class="dropdown-menu animated--fade-in" aria-labelledby="dropdownMenuButton" x-placement="top-start" style="position: absolute; transform: translate3d(0px, -105px, 0px); top: 0px; left: 0px; will-change: transform;">
                  </div>
              </div>
              <div id="proTable"></div>
              <div id="updateProject"></div>
          </div>
      </div><!-- end of table Project -->

        <div id="insertProject" class="card shadow mb-4">
          <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary"> Insert Project </h6>
          </div>
          <div class="card-body">

            <div id="pro-insert1">
              <label> Project Name </label>
              <input type='text' name='proj_name' id='proj_name' style="width: 50%;">

              <select id="select_categories" style="block-size: 35px; width: 20%;"></select>

              <hr>

              <label> Budget </label>
              <input type='number' name='budget' id='budget' style="width: 25%;">

              <label> Number of Phases </label>
              <input type='number' name='phases' id='phases' style="width: 15%;">

              <hr>

              <textarea placeholder="notes on project .."></textarea>

              <hr>
            </div>

            <div id="pro-insert2">
              <label> Choose Team Leader: </label>
              <hr>

              <div id="leaders"></div>
              <hr>
            </div>

            <div id="pro-insert3">
              <label> Choose Team Member: </label>
              <hr>

              <div id="members"></div>
              <hr>
            </div>

			<div id="pro-insert4">
              <label for="yes_no_org">Do you have Organization Foundation .. to add in project information?</label>
              <input type="radio" name="yes_no_org" value="yes" style="width: 35px;">Yes</input>
              <input type="radio" name="yes_no_org" value="no" style="width: 35px;">No</input>
              <hr>
              <div id="org_chooseTable"></div>
              <hr>
            </div>

            <div id="pro-insert5">
              <label for="yes_no_img">Do you have any Current images for the project?</label>
              <input type="radio" name="yes_no_img" value="yes" style="width: 35px;">Yes</input>
              <input type="radio" name="yes_no_img" value="no" style="width: 35px;">No</input>
              <hr>
              <div id="chooseImg">
                <form action="" method="post" enctype="multipart/form-data">
                  <input type="file" name="files[]" multiple id="projectimgBtn" style="margin-left: 35%;">
                </form>
              </div>
              <hr>
            </div>
            <div style="margin-left: 37%;">
              <a href="#" id="previousbtn" class="previous aa">&laquo; Previous</a>
              <a href="#" id="nextbtn" class="next aa">Next &raquo;</a>
              <a href="#" id="finishbtn" class="next aa"> Done &raquo;&raquo;</a>
            </div>

          </div>
        </div><!-- end of projects -->

        <div id="logg" class="card shadow mb-4">
          <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary"> Logs </h6>
          </div>
          <div class="card-body">

            <div id="log">
              <div class="content">
                <div class="log-messages">
                  <ul>
                    <li class="other">
                      <img src="http://emilcarlsson.se/assets/mikeross.png" alt="" />
                      <p> Admin: Omar Had deleted a user </p>
                    </li>
                    <li class="other">
                      <img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
                      <p>Admin: Habiba Created a new Project </p>
                    </li>
                    <li class="youu">
                      <img src="http://emilcarlsson.se/assets/mikeross.png" alt="" />
                      <p>You Updated a user</p>
                    </li>
                    <li class="other">
                      <img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
                      <p> Admin: Moustafa Finished a project </p>
                    </li>
                    <li class="other">
                      <img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
                      <p> Admin: Omar modified some Controls</p>
                    </li>
                    <li class="youu">
                      <img src="http://emilcarlsson.se/assets/mikeross.png" alt="" />
                      <p>You Changed project ---- phase to phase 2</p>
                    </li>
                  </ul>
                </div>
              </div>
            </div>

          </div>
        </div><!-- end of logg -->
        
        <!-- End of Main Content -->

        <!-- Footer -->
        <footer class="sticky-footer bg-white">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <span>Copyright &copy; MIU Students spring-2019</span>
            </div>
          </div>
        </footer>
        <!-- End of Footer -->

      </div>
      <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">Ã—</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="login.html">Logout</a>
          </div>
        </div>
      </div>
    </div>

    <!-- Ajax -->
    <script src="../Controller/user.js"></script>
    <script src="../Controller/emails.js"></script>
    <script src="../Controller/projects_part.js"></script>

    <!-- Bootstrap core JavaScript-->
    <script src="../../vendor/jquery/jquery.min.js"></script>
    <script src="../../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../../vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../../js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="../../vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="../../vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level plugins -->
    <script src="../../vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="../../js/demo/chart-area-demo.js"></script>
    <script src="../../js/demo/chart-pie-demo.js"></script>

</body>

</html>
