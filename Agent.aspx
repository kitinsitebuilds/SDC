<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Agent.aspx.cs" Inherits="SDC.Agent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Scripts/SBAdmin/css/sb-admin-2.min.css" rel="stylesheet" />
    <link href="Scripts/SBAdmin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" />
    <link href="Scripts/SBAdmin/css/sb-admin-2.css" rel="stylesheet" />

    <script src="Scripts/SBAdmin/vendor/jquery/jquery.min.js"></script>
    <script src="Scripts/SBAdmin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="Scripts/SBAdmin/vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="Scripts/SBAdmin/js/sb-admin-2.min.js"></script>


    <script src="Scripts/SBAdmin/vendor/chart.js/Chart.js"></script>
    <script src="Scripts/SBAdmin/vendor/chart.js/Chart.min.js"></script>
    <script src="Scripts/Customs/js/custom1.js"></script>
    <script src="Scripts/Customs/js/agent_js.js"></script>
    <script src="Scripts/SBAdmin/js/demo/chart-pie-demo.js"></script>
    <%--    <script src="https://code.jquery.com/jquery-3.3.1.min.js"> </script>
    <script type="text/javascript" src="//tinymce.cachefly.net/4.0/tinymce.min.js"> </script>
    <script type="text/javascript">  
        tinymce.init({
            selector: 'textarea',
            width: 500
        }); </script>--%>

    <script src="https://cdn.tiny.cloud/1/2nkzffg06unc315vnruwroiuqlz4lv29oo4rrw8avv2gmn3w/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
    <script>
        tinymce.init({
            selector: '#mytextarea'
        });
    </script>
    <%--    <link href="Scripts/Customs/css/WS3_2.css" rel="stylesheet" />
      <link href="Scripts/Customs/css/WS3.css" rel="stylesheet" />--%>
    <link href="Scripts/Customs/css/custom1.css" rel="stylesheet" />
    <form runat="server">


        <div id="wrapper">

            <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
                <li class="nav-item">
                    <img src="Scripts/Customs/img/sdc_logo.png" style="width: 224px;" />
                </li>
                <li class="nav-item active">
                    <hr class="sidebar-divider my-0">
                    <a class="nav-link" href="Agent.aspx">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Dashboard</span></a>
                    <hr class="sidebar-divider">
                </li>

                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="Agent.aspx" data-toggle="collapse" data-target="#collapseCases" aria-expanded="false" aria-controls="collapseCases">
                        <i class="fas fa-fw fa-list-alt"></i>
                        <span>Cases</span></a>

                    <div id="collapseCases" class="collapse" aria-labelledby="headingCases" data-parent="#accordionSidebar" style="">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <a class="collapse-item" href="#" id="lnkAssigned" onclick="getAssigned()">Assigned</a>
                            <a class="collapse-item" href="#">Ongoing</a>
                            <a class="collapse-item" href="#">Completed</a>
                            <a class="collapse-item" href="#">Sendback</a>
                            <a class="collapse-item" href="#">Summary</a>
                        </div>
                    </div>

                </li>
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePerformance" aria-expanded="false" aria-controls="collapsePerformance">
                        <i class="fas fa-fw fa-star"></i>
                        <span class="mnuAgent">Performance Tracker</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseWiki" aria-expanded="false" aria-controls="collapseWiki">
                        <i class="fas fa-fw fa-search"></i>
                        <span class="mnuAgent">Wiki</span>
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseCoaching" aria-expanded="false" aria-controls="collapseCoaching">
                        <i class="fas fa-fw fa-user"></i>
                        <span class="mnuAgent">Coaching</span>
                    </a>
                </li>
            </ul>

            <div id="content-wrapper" class="d-flex flex-column">
                <div id="content">

                    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 modal-static-top shadow" id="navBarTop">
                        <div style="float: left"></div>
                        <ul class="navbar-nav ml-auto">

                            <%--ALERT--%>
                            <li class="nav-item dropdown no-arrow mx-1">
                                <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-bell fa-fw"></i>
                                    <!-- Counter - Alerts -->
                                    <span class="badge badge-danger badge-counter">3+</span>
                                </a>
                                <!-- Dropdown - Alerts -->
                                <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                                    <h6 class="dropdown-header">Alerts Center
                                    </h6>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="mr-3">
                                            <div class="icon-circle bg-primary">
                                                <i class="fas fa-file-alt text-white"></i>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="small text-gray-500">November 25, 2020</div>
                                            <span class="font-weight-bold">New case assigned to you!</span>
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="mr-3">
                                            <div class="icon-circle bg-warning">
                                                <i class="fas fa-undo text-white"></i>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="small text-gray-500">November 25, 2020</div>
                                            A case was sendback!
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="mr-3">
                                            <div class="icon-circle bg-info">
                                                <i class="fas fa-info text-white"></i>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="small text-gray-500">November 25, 2020</div>
                                            New meeting alert!
                                        </div>
                                    </a>
                                    <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                                </div>
                            </li>

                            <%--MESSAGES--%>
                            <li class="nav-item dropdown no-arrow mx-1">
                                <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-envelope fa-fw"></i>
                                    <!-- Counter - Messages -->
                                    <span class="badge badge-danger badge-counter">2</span>
                                </a>
                                <!-- Dropdown - Messages -->
                                <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
                                    <h6 class="dropdown-header">Message Center
                                    </h6>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="dropdown-list-image mr-3">
                                            <img class="rounded-circle" src="Scripts/SBAdmin/img/undraw_profile_1.svg" alt="">
                                            <div class="status-indicator bg-success"></div>
                                        </div>
                                        <div class="font-weight-bold">
                                            <div class="text-truncate">
                                                Hi there! I am wondering if you can help me with a
                                            problem I've been having.
                                            </div>
                                            <div class="small text-gray-500">Emily Fowler · 58m</div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="dropdown-list-image mr-3">
                                            <img class="rounded-circle" src="Scripts/SBAdmin/img/undraw_profile_2.svg" alt="">
                                            <div class="status-indicator"></div>
                                        </div>
                                        <div>
                                            <div class="text-truncate">
                                                I have the photos that you ordered last month, how
                                            would you like them sent to you?
                                            </div>
                                            <div class="small text-gray-500">Jae Chun · 1d</div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="dropdown-list-image mr-3">
                                            <img class="rounded-circle" src="Scripts/SBAdmin/img/undraw_profile_3.svg" alt="">
                                            <div class="status-indicator bg-warning"></div>
                                        </div>
                                        <div>
                                            <div class="text-truncate">
                                                Last month's report looks great, I am very happy with
                                            the progress so far, keep up the good work!
                                            </div>
                                            <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
                                </div>
                            </li>

                            <%--USER INFORMATION--%>
                            <li class="nav-item dropdown no-arrow">
                                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="mr-2 d-none d-lg-inline text-gray-600">Errol Mangalindan</span>
                                    <img class="img-profile rounded-circle" src="Scripts/SBAdmin/img/undraw_profile.svg">
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
                    </nav>
                    <div id="agent_dashboard">
                        <div class="container-fluid" style="display: inline-block; width: 360px; vertical-align: top;">

                            <div class="card border-left-info shadow h-100 py-2" style="width: 300px;">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-info text-uppercase mb-1">
                                                <a onclick="getAssigned()" style="cursor: pointer">New Assigned Cases  </a>
                                            </div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">5</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-arrow-down fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="card border-left-primary shadow h-100 py-2" style="width: 300px;">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                                Ongoing
                                            </div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">1</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-play fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="card border-left-success shadow h-100 py-2" style="width: 300px;">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                                Completed
                                            </div>
                                            <%-- <div class="h5 mb-0 font-weight-bold text-gray-800">2</div>--%>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-check-square fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="card border-left-danger shadow h-100 py-2" style="width: 300px;">
                                <div class="card-body">
                                    <div class="row no-gutters align-items-center">
                                        <div class="col mr-2">
                                            <div class="text-xs font-weight-bold text-danger text-uppercase mb-1">
                                                Sendbacks
                                            </div>
                                            <div class="h5 mb-0 font-weight-bold text-gray-800">0</div>
                                        </div>
                                        <div class="col-auto">
                                            <i class="fas fa-times-circle fa-2x text-gray-300"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div style="display: inline-block; width: 800px; vertical-align: top;">
                            <div class="card shadow mb-4" style="height: 480px;">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold sdcColor">BULLETIN</h6>
                                </div>
                                <div class="card-body">
                                    <div class="text-center">
                                        <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 25rem;" src="img/undraw_posting_photo.svg" alt="">
                                    </div>
                                    <p style="font-size: small">
                                        November 25, 2020 11:20 AM<br />
                                        <b>Erik Mangalindan:</b>
                                    </p>
                                    <p style="font-size: small">Information here</p>

                                    <hr />
                                    <p style="font-size: small">
                                        November 25, 2020 09:04 AM<br />
                                        <b>Erik Mangalindan:</b>
                                    </p>
                                    <p style="font-size: small">Other Information here</p>
                                    <hr />
                                </div>
                            </div>
                        </div>


                    </div>

                    <div id="agent_assigned" style="display: none;">
                        <div class="container-fluid">

                            <!-- Page Heading -->

                            <!-- DataTables Example -->
                            <div class="card shadow mb-4" style="width: 90%">
                                <div class="card-header py-3" style="background-color: #db4e24; color: white;">
                                    <h6 class="m-0 font-weight-bold">ASSIGNED CASES</h6>
                                </div>
                                <div class="card-body">
                                    <%-- <div class="table-responsive"  style="width: 80%">--%>
                                    <div id="dataTable_wrapper" class="dataTables_wrapper dt-bootstrap4">
                                        <div class="row">
                                            <div class="col-sm-10 col-md-6">
                                                <div class="dataTables_length" id="dataTable_length">
                                                    <label>
                                                        Show
                                                        <select name="dataTable_length" aria-controls="dataTable" class="custom-select custom-select-sm form-control form-control-sm" style="width: 60px;">
                                                            <option value="5">5</option>
                                                            <option value="10">10</option>
                                                            <option value="25">25</option>
                                                            <option value="50">50</option>
                                                        </select>
                                                        entries</label>
                                                </div>
                                            </div>
                                            <div class="col-sm-10 col-md-6">
                                                <div id="dataTable_filter" class="dataTables_filter">
                                                    <label>Search:<input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable"></label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row" style="width: 90%">
                                            <div class="col-sm-12">
                                                <table class="table table-bordered dataTable" id="dataTable" role="grid" aria-describedby="dataTable_info" style="width: 100%;">
                                                    <thead>
                                                        <tr role="row">
                                                            <th class="sorting_asc" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 153px;">Date Ordered</th>
                                                            <th rowspan="1" colspan="1">Company</th>
                                                            <th rowspan="1" colspan="1">Cases</th>
                                                            <th rowspan="1" colspan="1">Aging (min)</th>
                                                            <th rowspan="1" colspan="1">Action</th>
                                                        </tr>
                                                    </thead>
                                                    <%-- <tfoot>
                                        <tr><th rowspan="1" colspan="1">Date Ordered</th><th rowspan="1" colspan="1">Company</th><th rowspan="1" colspan="1">Cases</th><th rowspan="1" colspan="1">Aging (min)</th><th rowspan="1" colspan="1">Action</th></tr>
                                    </tfoot>--%>
                                                    <tbody>

                                                        <tr role="row" class="odd">
                                                            <td class="sorting_1">11/06</td>
                                                            <td>Company 1</td>
                                                            <td>Account Name 1</td>
                                                            <td>120</td>
                                                            <td><a href="#" class="btn btn-danger btn-icon-split btnUpdate" onclick="getCase()">
                                                                <span class="icon text-white-50">
                                                                    <i class="fas fa-edit"></i>
                                                                </span>
                                                                <span class="text">Update</span>
                                                            </a></td>
                                                        </tr>
                                                        <tr role="row" class="even">
                                                            <td class="sorting_1">11/06</td>
                                                            <td>Company 2</td>
                                                            <td>Account Name 2</td>
                                                            <td>100</td>
                                                            <td><a href="#" class="btn btn-danger btn-icon-split btnUpdate" onclick="getCase()">
                                                                <span class="icon text-white-50">
                                                                    <i class="fas fa-edit"></i>
                                                                </span>
                                                                <span class="text">Update</span>
                                                            </a></td>
                                                        </tr>
                                                        <tr role="row" class="odd">
                                                            <td class="sorting_1">11/06</td>
                                                            <td>Company 3</td>
                                                            <td>Account Name 3</td>
                                                            <td>80</td>
                                                            <td><a href="#" class="btn btn-danger btn-icon-split btnUpdate" onclick="getCase()">
                                                                <span class="icon text-white-50">
                                                                    <i class="fas fa-edit"></i>
                                                                </span>
                                                                <span class="text">Update</span>
                                                            </a></td>
                                                        </tr>
                                                        <tr role="row" class="even">
                                                            <td class="sorting_1">11/06</td>
                                                            <td>Company 4</td>
                                                            <td>Account Name 4</td>
                                                            <td>70</td>
                                                            <td><a href="#" class="btn btn-danger btn-icon-split btnUpdate" onclick="getCase()">
                                                                <span class="icon text-white-50">
                                                                    <i class="fas fa-edit"></i>
                                                                </span>
                                                                <span class="text">Update</span>
                                                            </a></td>
                                                        </tr>
                                                        <tr role="row" class="odd">
                                                            <td class="sorting_1">11/06</td>
                                                            <td>Company 5</td>
                                                            <td>Account Name 5</td>
                                                            <td>50</td>
                                                            <td><a href="#" class="btn btn-danger btn-icon-split btnUpdate" onclick="getCase()">
                                                                <span class="icon text-white-50">
                                                                    <i class="fas fa-edit"></i>
                                                                </span>
                                                                <span class="text">Update</span>
                                                            </a></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-12 col-md-5">
                                                <div class="dataTables_info" id="dataTable_info" role="status" aria-live="polite">Showing 1 to 5 of 5 entries</div>
                                            </div>
                                            <div class="col-sm-12 col-md-7">
                                                <div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate">
                                                    <ul class="pagination">
                                                        <li class="paginate_button page-item previous disabled" id="dataTable_previous"><a href="#" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li>
                                                        <li class="paginate_button page-item active"><a href="#" aria-controls="dataTable" data-dt-idx="1" tabindex="0" class="page-link">1</a></li>
                                                        <li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="2" tabindex="0" class="page-link">2</a></li>
                                                        <li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="3" tabindex="0" class="page-link">3</a></li>
                                                        <li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="4" tabindex="0" class="page-link">4</a></li>
                                                        <li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="5" tabindex="0" class="page-link">5</a></li>
                                                        <li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="6" tabindex="0" class="page-link">6</a></li>
                                                        <li class="paginate_button page-item next" id="dataTable_next"><a href="#" aria-controls="dataTable" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <%--</div>--%>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div id="agent_case" style="margin-left: 20px;">
                        <div class="card shadow mb-4" style="width: 90%">
                            <div class="card-header py-3" style="background-color: #db4e24; color: white;">
                                <h6 class="m-0 font-weight-bold">ACCOUNT INFORMATION</h6>
                            </div>
                            <div class="card-body">
                                <div style="display: inline-block; vertical-align: top; margin-left: 20px;" id="caseContainer">

                                    <%--                                    <h6 class="m-0 font-weight-bold sdcColor">ACCOUNT INFORMATION</h6>--%>
                                    <div id="accountContainer" class="card shadow h-100 py-2">
                                        <table style="margin: 10px;">
                                            <tr>
                                                <td class="agentCaseLabel">Type</td>
                                                <td class="agentCaseValue">
                                                    <input type="text" class="form-control form-control-sm" placeholder="" aria-controls="dataTable" value="Analyst quick check"></td>
                                                <td class="agentCaseLabel">From</td>
                                                <td class="agentCaseValue">
                                                    <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable" value=""></td>
                                                <td></td>
                                                <td class="agentCaseLabel">Last Name</td>
                                                <td class="agentCaseValue">
                                                    <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable" value="Mangalindan"></td>
                                                <td class="agentCaseLabel">First Name</td>
                                                <td class="agentCaseValue">
                                                    <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable" value="Erik"></td>
                                                <td class="agentCaseLabel">Middle Initial</td>
                                                <td class="agentCaseValue">
                                                    <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable" value="B"></td>
                                            </tr>
                                            <tr>
                                                <td class="agentCaseLabel">Name</td>
                                                <td class="agentCaseValue" colspan="3">
                                                    <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable" value="Mangalindan, Erik"></td>
                                                <td></td>
                                                <td class="agentCaseLabel">SSN</td>
                                                <td class="agentCaseValue">
                                                    <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable" value="11111"></td>
                                                <td class="agentCaseLabel">DOB</td>
                                                <td class="agentCaseValue">
                                                    <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable" value="02/02/1982"></td>
                                                <td class="agentCaseLabel">Gender</td>
                                                <td class="agentCaseValue">
                                                    <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable" value="Male"></td>
                                            </tr>
                                            <tr>
                                                <td class="agentCaseLabel">Date of Birth</td>
                                                <td class="agentCaseValue">
                                                    <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable" value="02/02/1982"></td>
                                                <td class="agentCaseLabel">Alias</td>
                                                <td class="agentCaseValue">
                                                    <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable" value="" /></td>
                                                <td></td>
                                                <td class="agentCaseLabel">Address 1</td>
                                                <td class="agentCaseValue" colspan="5">
                                                    <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable" value="Address 1"></td>
                                            </tr>
                                            <tr>
                                                <td class="agentCaseLabel">Gender</td>
                                                <td class="agentCaseValue">
                                                    <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable" value="Male" /></td>
                                                <td class="agentCaseLabel">Age</td>
                                                <td class="agentCaseValue">
                                                    <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable" value="38" /></td>
                                                <td></td>
                                                <td class="agentCaseLabel">Address 2</td>
                                                <td class="agentCaseValue" colspan="5">
                                                    <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable" value="Address 2"></td>
                                            </tr>
                                        </table>
                                    </div>

                                    <div id="accountProfileContainer" class="card shadow h-100 py-2">
                                        <div class="w3-row">
                                            <a href="javascript:void(0)" onclick="openCity2(event,'prof');">
                                                <div id="divprof" class="w3-bar-item w3-button tablink tabactive">PROFILE</div>
                                            </a>
                                            <a href="javascript:void(0)" onclick="openCity2(event, 'fam');">
                                                <div id="divfam" class="w3-bar-item w3-button tablink">FAMILY AND FRIENDS</div>
                                            </a>
                                            <a href="javascript:void(0)" onclick="openCity2(event, 'socnet');">
                                                <div id="divsocnet" class="w3-bar-item w3-button tablink">SOCIAL NETWORKS</div>
                                            </a>
                                            <a href="javascript:void(0)" onclick="openCity2(event, 'summary');">
                                                <div id="divsummary" class="w3-bar-item w3-button tablink">SUMMARY</div>
                                            </a>
                                            <%-- <<button class="tablink" onclick="openCity('fam', this, 'green')">Family and Friends</button>
                                    <button class="tablink" onclick="openCity('socnet', this, 'blue')">Social Networks</button>--%>
                                        </div>
                                        <div id="prof" class="tabcontent" style="display: block;margin-top: 5px;">
                                            <div id="accountProfile">
                                                <div style="display: inline-block; vertical-align: top;">
                                                    <table>
                                                        <tr>
                                                            <td class="agentCaseInsideLabel">Claim No</td>
                                                            <td class="agentCaseValue">
                                                                <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable" value="111111111"></td>
                                                        </tr>
                                                        <tr>
                                                            <td class="agentCaseInsideLabel">Custom Date Comp</td>
                                                            <td class="agentCaseValue">
                                                                <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable" value=""></td>
                                                            <td style="width: 100px"></td>
                                                        </tr>
                                                        <tr>
                                                            <td class="agentCaseInsideLabel">Date Ordered</td>
                                                            <td class="agentCaseValue">
                                                                <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable" value="11/20/2020"></td>

                                                        </tr>
                                                        <tr>
                                                            <td class="agentCaseInsideLabel">Date Comp</td>
                                                            <td class="agentCaseValue">
                                                                <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable" value="11/20/2020">
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                                <div style="display: inline-block; border: solid; border-color: #d04720; border-width: thin; vertical-align: top;">
                                                    <table>
                                                        <tr>
                                                            <td class="agentCaseInsideLabel">Logo<asp:FileUpload ID="fuPrevLogo" runat="server" onchange="showpreview(this,imgPrevLogo);" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div>
                                                                    <img id="imgPrevLogo" height="200" width="200" src="" style="border-width: 0px; visibility: hidden;" />
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                                <div style="display: inline-block; border: solid; border-color: #d04720; border-width: thin; vertical-align: top; margin-left: 50px;">
                                                    <table>
                                                        <tr>
                                                            <td class="agentCaseInsideLabel">Location<asp:FileUpload ID="fuPrevLoc" runat="server" onchange="showpreview(this,imgPrevLoc);" /></td>

                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div>
                                                                    <img id="imgPrevLoc" height="200" width="200" src="" style="border-width: 0px; visibility: hidden;" />
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                            <div style="float: right">
                                                <a href="#" class="btn btn-danger btn-icon-split btnSave" onclick="">
                                                    <span class="icon text-white-50">
                                                        <i class="fas fa-save"></i>
                                                    </span>
                                                    <span class="text">Save</span>
                                                </a>
                                            </div>
                                        </div>
                                        <div id="fam" class="tabcontent" style="display: none; margin-top: 5px;">
                                            <div>
                                                <div style="text-align: left; display: block;">
                                                    <a href="#" class="btn btn-danger btn-icon-split btnAdd" onclick="">
                                                        <span class="icon text-white-50">
                                                            <i class="fas fa-plus"></i>
                                                        </span>
                                                        <span class="text">Add</span>
                                                    </a>
                                                </div>
                                                <div style="border: solid; border-color: #d04720; border-width: thin; padding: 0.5px; margin: 3px;">
                                                    <table style="display: inline-block;">
                                                        <tr>
                                                            <td class="agentCaseInsideLabel" colspan="2">Profile<br />
                                                                <asp:FileUpload ID="rel1" runat="server" onchange="showpreview(this,imgPrevRel1);" />
                                                            </td>
                                                            <td class="agentCaseInsideLabel">Name</td>
                                                            <td class="agentCaseValue">
                                                                <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable" value="E Mangalindan">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td rowspan="5" colspan="2">
                                                                <div>
                                                                    <img id="imgPrevRel1" height="200" width="200" src="" style="border-width: 0px; visibility: hidden;" />
                                                                </div>
                                                            </td>
                                                            <td class="agentCaseInsideLabel">Relation</td>
                                                            <td class="agentCaseValue">
                                                                <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable" value="Brother">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="agentCaseInsideLabel">Link</td>
                                                            <td class="agentCaseValue">
                                                                <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable" value="https://wwww.facebook.com/">
                                                            </td>
                                                        </tr>
                                                        <tr></tr>
                                                        <tr></tr>
                                                    </table>
                                                </div>
                                                <div style="border: solid; border-color: #d04720; border-width: thin; padding: 0.5px; margin: 3px;">
                                                    <table style="display: inline-block;">
                                                        <tr>
                                                            <td class="agentCaseInsideLabel" colspan="2">Profile<br />
                                                                <asp:FileUpload ID="FileUpload2" runat="server" onchange="showpreview(this,imgPrevRel2);" />
                                                            </td>
                                                            <td class="agentCaseInsideLabel">Name</td>
                                                            <td class="agentCaseValue">
                                                                <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable" value="D Mangalindan">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td rowspan="5" colspan="2">
                                                                <div>
                                                                    <img id="imgPrevRel2" height="200" width="200" src="" style="border-width: 0px; visibility: hidden;" />
                                                                </div>
                                                            </td>
                                                            <td class="agentCaseInsideLabel">Relation</td>
                                                            <td class="agentCaseValue">
                                                                <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable" value="Sister">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="agentCaseInsideLabel">Link</td>
                                                            <td class="agentCaseValue">
                                                                <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable" value="https://wwww.facebook.com/">
                                                            </td>
                                                        </tr>
                                                        <tr></tr>
                                                        <tr></tr>
                                                    </table>
                                                </div>

                                            </div>
                                            <div style="float: right">
                                                <a href="#" class="btn btn-danger btn-icon-split btnSave" onclick="">
                                                    <span class="icon text-white-50">
                                                        <i class="fas fa-save"></i>
                                                    </span>
                                                    <span class="text">Save</span>
                                                </a>
                                            </div>
                                        </div>

                                        <div id="socnet" class="tabcontent" style="display: none;margin-top: 5px;">
                                            <div class="agentCaseInsideLabel" style="width: 500px; display: inline-block">
                                                <input type="radio" name="Match" value="Match" style="margin-right: 5px;" />Match
                                                            <input type="radio" name="Match" value="Possible Match" style="margin-left: 50px; margin-right: 5px;" />Possible Match
                                                            <input type="radio" name="Match" value="No Match" style="margin-left: 50px; margin-right: 5px;" />No Match
                                            </div>
                                            <div class="agentCaseInsideLabel" style="display: inline-block; margin-left: 50px; width: 350px;">
                                                ADD NETWORK: &nbsp;&nbsp;&nbsp;
                                                <img src="Scripts/Customs/img/flat-social-media-icons/facebook.png" style="width: 40px;" />
                                                <img src="Scripts/Customs/img/flat-social-media-icons/twitter.png" style="width: 40px;" />
                                                <img src="Scripts/Customs/img/flat-social-media-icons/instagram.png" style="width: 40px;" />
                                                <img src="Scripts/Customs/img/flat-social-media-icons/tumblr.png" style="width: 40px;" />
                                                <img src="Scripts/Customs/img/flat-social-media-icons/bloggr.png" style="width: 40px;" />
                                            </div>
                                            <div style="border: solid; border-color: #d04720; border-width: thin; margin-left:5px;">
                                                <div style="margin-left:15px; margin-top:5px;">
                                                    <table style="width:80%">
                                                        <tr>
                                                            <td class="agentCaseInsideLabel">Link</td>
                                                            <td class="agentCaseValue" colspan="2">
                                                                <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="dataTable" value="https://wwww.facebook.com/">
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="3">
                                                                <textarea id="mytextarea" name="mytextarea">
      Hello, World!
    </textarea>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>
                                                <div style="text-align: left; display: block; vertical-align: top; margin-top: 15px;  margin-left:15px;">
                                                    <a href="#" class="btn btn-danger btn-icon-split btnAdd" onclick="">
                                                        <span class="icon text-white-50">
                                                            <i class="fas fa-plus"></i>
                                                        </span>
                                                        <span class="text">Add Screenshot</span>
                                                    </a>
                                                </div>
                                                <div style="text-align: left; display: block; margin-left:5px;">

                                                    <table>
                                                        <tr>
                                                            <td class="agentCaseInsideLabel"><asp:FileUpload ID="fuSN" runat="server" onchange="showpreview(this,imgSN1);" /></td>
                                                            <td class="agentCaseInsideLabel"><asp:FileUpload ID="fuSN2" runat="server" onchange="showpreview(this,imgSN2);" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div>
                                                                    <img id="imgSN1" height="200" width="200" src="" style="border-width: 0px; visibility: hidden;" />
                                                                </div>
                                                            </td>
                                                             <td>
                                                                <div>
                                                                    <img id="imgSN2" height="200" width="200" src="" style="border-width: 0px; visibility: hidden;" />
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>

                                                </div>
                                            </div>
                                            <div style="float: right;">
                                                <a href="#" class="btn btn-danger btn-icon-split btnUpdate" onclick="">
                                                    <span class="icon text-white-50">
                                                        <i class="fas fa-save"></i>
                                                    </span>
                                                    <span class="text">Save</span>
                                                </a>
                                            </div>
                                        </div>
                                        <div id="summary" class="tabcontent" style="display: none; margin-top: 5px;">
                                            <p>Summary</p>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>


                    </div>
                </div>
                <hr />
            </div>
        </div>
    </form>


</asp:Content>

