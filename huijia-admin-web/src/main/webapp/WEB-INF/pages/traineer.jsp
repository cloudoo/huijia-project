﻿<!DOCTYPE html>
<!--
BeyondAdmin - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.2.0
Version: 1.0.0
Purchase: http://wrapbootstrap.com
-->

<html xmlns="http://www.w3.org/1999/xhtml">

<!-- Head -->
<head>
    <meta charset="utf-8" />
    <title>Blank Page</title>

    <meta name="description" content="blank page" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">

    <!--Basic Styles-->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link id="bootstrap-rtl-link" href="" rel="stylesheet" />
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="assets/css/weather-icons.min.css" rel="stylesheet" />

    <!--Fonts-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300" 
          rel="stylesheet" type="text/css">

    <!--Beyond styles-->
    <link id="beyond-link" href="assets/css/beyond.min.css" rel="stylesheet" />
    <link href="assets/css/demo.min.css" rel="stylesheet" />
    <link href="assets/css/typicons.min.css" rel="stylesheet" />
    <link href="assets/css/animate.min.css" rel="stylesheet" />
    <link id="skin-link" href="" rel="stylesheet" type="text/css" />

    <!--Skin Script: Place this script in head to load scripts for skins and rtl support-->
    <script src="assets/js/skins.min.js"></script>
</head>
<!-- /Head -->
<!-- Body -->
<body>
    <!-- Loading Container -->
    <div class="loading-container">
        <div class="loading-progress">
            <div class="rotator">
                <div class="rotator">
                    <div class="rotator colored">
                        <div class="rotator">
                            <div class="rotator colored">
                                <div class="rotator colored"></div>
                                <div class="rotator"></div>
                            </div>
                            <div class="rotator colored"></div>
                        </div>
                        <div class="rotator"></div>
                    </div>
                    <div class="rotator"></div>
                </div>
                <div class="rotator"></div>
            </div>
            <div class="rotator"></div>
        </div>
    </div>
    <!--  /Loading Container -->
    <!-- Navbar -->
    <div class="navbar">
        <div class="navbar-inner">
            <div class="navbar-container">
                <!-- Navbar Barnd -->
                <div class="navbar-header pull-left">
                    <a href="#" class="navbar-brand">
                        <small>
                            <img src="assets/img/logo.png" alt="" />
                        </small>
                    </a>
                </div>
                <!-- /Navbar Barnd -->
                <!-- Sidebar Collapse -->
                <div class="sidebar-collapse" id="sidebar-collapse">
                    <i class="collapse-icon fa fa-bars"></i>
                </div>
                <!-- /Sidebar Collapse -->
                <!-- Account Area and Settings --->
                <div class="navbar-header pull-right">
                    <div class="navbar-account">
                        <ul class="account-area">
                            <li>
                                <a class=" dropdown-toggle" data-toggle="dropdown" title="Help" href="#">
                                    <i class="icon fa fa-warning"></i>
                                </a>
                                <!--Notification Dropdown-->
                                <ul class="pull-right dropdown-menu dropdown-arrow dropdown-notifications">
                                    <li>
                                        <a href="#">
                                            <div class="clearfix">
                                                <div class="notification-icon">
                                                    <i class="fa fa-phone bg-themeprimary white"></i>
                                                </div>
                                                <div class="notification-body">
                                                    <span class="title">Skype meeting with Patty</span>
                                                    <span class="description">01:00 pm</span>
                                                </div>
                                                <div class="notification-extra">
                                                    <i class="fa fa-clock-o themeprimary"></i>
                                                    <span class="description">office</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="clearfix">
                                                <div class="notification-icon">
                                                    <i class="fa fa-check bg-darkorange white"></i>
                                                </div>
                                                <div class="notification-body">
                                                    <span class="title">Uncharted break</span>
                                                    <span class="description">03:30 pm - 05:15 pm</span>
                                                </div>
                                                <div class="notification-extra">
                                                    <i class="fa fa-clock-o darkorange"></i>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="clearfix">
                                                <div class="notification-icon">
                                                    <i class="fa fa-gift bg-warning white"></i>
                                                </div>
                                                <div class="notification-body">
                                                    <span class="title">Kate birthday party</span>
                                                    <span class="description">08:30 pm</span>
                                                </div>
                                                <div class="notification-extra">
                                                    <i class="fa fa-calendar warning"></i>
                                                    <i class="fa fa-clock-o warning"></i>
                                                    <span class="description">at home</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="clearfix">
                                                <div class="notification-icon">
                                                    <i class="fa fa-glass bg-success white"></i>
                                                </div>
                                                <div class="notification-body">
                                                    <span class="title">Dinner with friends</span>
                                                    <span class="description">10:30 pm</span>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="dropdown-footer ">
                                        <span>
                                            Today, March 28
                                        </span>
                                        <span class="pull-right">
                                            10°c
                                            <i class="wi wi-cloudy"></i>
                                        </span>
                                    </li>
                                </ul>
                                <!--/Notification Dropdown-->
                            </li>
                            <li>
                                <a class="wave in dropdown-toggle" data-toggle="dropdown" title="Help" href="#">
                                    <i class="icon fa fa-envelope"></i>
                                    <span class="badge">3</span>
                                </a>
                                <!--Messages Dropdown-->
                                <ul class="pull-right dropdown-menu dropdown-arrow dropdown-messages">
                                    <li>
                                        <a href="#">
                                            <img src="assets/img/avatars/divyia.jpg" class="message-avatar" alt="Divyia Austin">
                                            <div class="message">
                                                <span class="message-sender">
                                                    Divyia Austin
                                                </span>
                                                <span class="message-time">
                                                    2 minutes ago
                                                </span>
                                                <span class="message-subject">
                                                    Here's the recipe for apple pie
                                                </span>
                                                <span class="message-body">
                                                    to identify the sending application when the senders image is shown for the main icon
                                                </span>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="assets/img/avatars/bing.png" class="message-avatar" alt="Microsoft Bing">
                                            <div class="message">
                                                <span class="message-sender">
                                                    Bing.com
                                                </span>
                                                <span class="message-time">
                                                    Yesterday
                                                </span>
                                                <span class="message-subject">
                                                    Bing Newsletter: The January Issue‏
                                                </span>
                                                <span class="message-body">
                                                    Discover new music just in time for the Grammy® Awards.
                                                </span>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <img src="assets/img/avatars/adam-jansen.jpg" class="message-avatar" alt="Divyia Austin">
                                            <div class="message">
                                                <span class="message-sender">
                                                    Nicolas
                                                </span>
                                                <span class="message-time">
                                                    Friday, September 22
                                                </span>
                                                <span class="message-subject">
                                                    New 4K Cameras
                                                </span>
                                                <span class="message-body">
                                                    The 4K revolution has come over the horizon and is reaching the general populous
                                                </span>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                                <!--/Messages Dropdown-->
                            </li>

                            <li>
                                <a class="dropdown-toggle" data-toggle="dropdown" title="Tasks" href="#">
                                    <i class="icon fa fa-tasks"></i>
                                    <span class="badge">4</span>
                                </a>
                                <!--Tasks Dropdown-->
                                <ul class="pull-right dropdown-menu dropdown-tasks dropdown-arrow ">
                                    <li class="dropdown-header bordered-darkorange">
                                        <i class="fa fa-tasks"></i>
                                        4 Tasks In Progress
                                    </li>

                                    <li>
                                        <a href="#">
                                            <div class="clearfix">
                                                <span class="pull-left">Account Creation</span>
                                                <span class="pull-right">65%</span>
                                            </div>

                                            <div class="progress progress-xs">
                                                <div style="width:65%" class="progress-bar"></div>
                                            </div>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#">
                                            <div class="clearfix">
                                                <span class="pull-left">Profile Data</span>
                                                <span class="pull-right">35%</span>
                                            </div>

                                            <div class="progress progress-xs">
                                                <div style="width:35%" class="progress-bar progress-bar-success"></div>
                                            </div>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#">
                                            <div class="clearfix">
                                                <span class="pull-left">Updating Resume</span>
                                                <span class="pull-right">75%</span>
                                            </div>

                                            <div class="progress progress-xs">
                                                <div style="width:75%" class="progress-bar progress-bar-darkorange"></div>
                                            </div>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#">
                                            <div class="clearfix">
                                                <span class="pull-left">Adding Contacts</span>
                                                <span class="pull-right">10%</span>
                                            </div>

                                            <div class="progress progress-xs">
                                                <div style="width:10%" class="progress-bar progress-bar-warning"></div>
                                            </div>
                                        </a>
                                    </li>

                                    <li class="dropdown-footer">
                                        <a href="#">
                                            See All Tasks
                                        </a>
                                        <button class="btn btn-xs btn-default shiny darkorange icon-only pull-right"><i class="fa fa-check"></i></button>
                                    </li>
                                </ul>
                                <!--/Tasks Dropdown-->
                            </li>
                            <li>
                                <a class="login-area dropdown-toggle" data-toggle="dropdown">
                                    <div class="avatar" title="View your public profile">
                                        <img src="assets/img/avatars/adam-jansen.jpg">
                                    </div>
                                    <section>
                                        <h2><span class="profile"><span>David Stevenson</span></span></h2>
                                    </section>
                                </a>
                                <!--Login Area Dropdown-->
                                <ul class="pull-right dropdown-menu dropdown-arrow dropdown-login-area">
                                    <li class="username"><a>David Stevenson</a></li>
                                    <li class="email"><a>David.Stevenson@live.com</a></li>
                                    <!--Avatar Area-->
                                    <li>
                                        <div class="avatar-area">
                                            <img src="assets/img/avatars/adam-jansen.jpg" class="avatar">
                                            <span class="caption">Change Photo</span>
                                        </div>
                                    </li>
                                    <!--Avatar Area-->
                                    <li class="edit">
                                        <a href="profile.html" class="pull-left">Profile</a>
                                        <a href="#" class="pull-right">Setting</a>
                                    </li>
                                    <!--Theme Selector Area-->
                                    <li class="theme-area">
                                        <ul class="colorpicker" id="skin-changer">
                                            <li><a class="colorpick-btn" href="#" style="background-color:#5DB2FF;" rel="assets/css/skins/blue.min.css"></a></li>
                                            <li><a class="colorpick-btn" href="#" style="background-color:#2dc3e8;" rel="assets/css/skins/azure.min.css"></a></li>
                                            <li><a class="colorpick-btn" href="#" style="background-color:#03B3B2;" rel="assets/css/skins/teal.min.css"></a></li>
                                            <li><a class="colorpick-btn" href="#" style="background-color:#53a93f;" rel="assets/css/skins/green.min.css"></a></li>
                                            <li><a class="colorpick-btn" href="#" style="background-color:#FF8F32;" rel="assets/css/skins/orange.min.css"></a></li>
                                            <li><a class="colorpick-btn" href="#" style="background-color:#cc324b;" rel="assets/css/skins/pink.min.css"></a></li>
                                            <li><a class="colorpick-btn" href="#" style="background-color:#AC193D;" rel="assets/css/skins/darkred.min.css"></a></li>
                                            <li><a class="colorpick-btn" href="#" style="background-color:#8C0095;" rel="assets/css/skins/purple.min.css"></a></li>
                                            <li><a class="colorpick-btn" href="#" style="background-color:#0072C6;" rel="assets/css/skins/darkblue.min.css"></a></li>
                                            <li><a class="colorpick-btn" href="#" style="background-color:#585858;" rel="assets/css/skins/gray.min.css"></a></li>
                                            <li><a class="colorpick-btn" href="#" style="background-color:#474544;" rel="assets/css/skins/black.min.css"></a></li>
                                            <li><a class="colorpick-btn" href="#" style="background-color:#001940;" rel="assets/css/skins/deepblue.min.css"></a></li>
                                        </ul>
                                    </li>
                                    <!--/Theme Selector Area-->
                                    <li class="dropdown-footer">
                                        <a href="login.html">
                                            Sign out
                                        </a>
                                    </li>
                                </ul>
                                <!--/Login Area Dropdown-->
                            </li>
                            <!-- /Account Area -->
                            <!--Note: notice that setting div must start right after account area list.
                            no space must be between these elements-->
                            <!-- Settings -->
                        </ul><div class="setting">
                            <a id="btn-setting" title="Setting" href="#">
                                <i class="icon glyphicon glyphicon-cog"></i>
                            </a>
                        </div><div class="setting-container">
                            <label>
                                <input type="checkbox" id="checkbox_fixednavbar">
                                <span class="text">Fixed Navbar</span>
                            </label>
                            <label>
                                <input type="checkbox" id="checkbox_fixedsidebar">
                                <span class="text">Fixed SideBar</span>
                            </label>
                            <label>
                                <input type="checkbox" id="checkbox_fixedbreadcrumbs">
                                <span class="text">Fixed BreadCrumbs</span>
                            </label>
                            <label>
                                <input type="checkbox" id="checkbox_fixedheader">
                                <span class="text">Fixed Header</span>
                            </label>
                        </div>
                        <!-- Settings -->
                    </div>
                </div>
                <!-- /Account Area and Settings -->
            </div>
        </div>
    </div>
    <!-- /Navbar -->
    <!-- Main Container -->
    <div class="main-container container-fluid">
        <!-- Page Container -->
        <div class="page-container">
            <!-- Page Sidebar -->
            <div class="page-sidebar" id="sidebar">
                <!-- Page Sidebar Header-->
                <div class="sidebar-header-wrapper">
                    <input type="text" class="searchinput" />
                    <i class="searchicon fa fa-search"></i>
                    <div class="searchhelper">Search Reports, Charts, Emails or Notifications</div>
                </div>
                <!-- /Page Sidebar Header -->
                <!-- Sidebar Menu -->
                <ul class="nav sidebar-menu">
                   
                    <!--UI Elements-->
                    <li class="active open">
                        <a href="#" class="menu-dropdown">
                            <i class="menu-icon fa fa-users"></i>
                            <span class="menu-text"> 用户管理 </span>

                            <i class="menu-expand"></i>
                        </a>

                        <ul class="submenu">
                            <li class="active">
                                <a href="traineer.jsp">
                                    <i class="menu-icon fa fa-user"></i>
                                    <span class="menu-text">会员管理</span>
                                </a>
                            </li>
                            
                            <li>
                                <a href="hj_coacher.html">
                                    <i class="menu-icon fa fa-user"></i>
                                    <span class="menu-text">教练管理</span>
                                </a>
                            </li>
                            
                        </ul>
                    </li>
                    <!--Tables-->
                    <li>
                        <a href="#" class="menu-dropdown">
                            <i class="menu-icon fa fa-table"></i>
                            <span class="menu-text"> 预约签到 </span>

                            <i class="menu-expand"></i>
                        </a>

                        <ul class="submenu">
                            <li>
                                <a href="tables-simple.html">
                                    <span class="menu-text">Simple & Responsive</span>
                                </a>
                            </li>
                            <li>
                                <a href="tables-data.html">
                                    <span class="menu-text">Data Tables</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!--Forms-->
                    <li>
                        <a href="#" class="menu-dropdown">
                            <i class="menu-icon fa fa-pencil-square-o"></i>
                            <span class="menu-text"> 课程卡包 </span>

                            <i class="menu-expand"></i>
                        </a>

                        <ul class="submenu">
                            <li>
                                <a href="form-layouts.html">
                                    <span class="menu-text">Form Layouts</span>
                                </a>
                            </li>

                            <li>
                                <a href="form-inputs.html">
                                    <span class="menu-text">Form Inputs</span>
                                </a>
                            </li>

                            <li>
                                <a href="form-pickers.html">
                                    <span class="menu-text">Data Pickers</span>
                                </a>
                            </li>
                            <li>
                                <a href="form-wizard.html">
                                    <span class="menu-text">Wizard</span>
                                </a>
                            </li>
                            <li>
                                <a href="form-validation.html">
                                    <span class="menu-text">Validation</span>
                                </a>
                            </li>
                            <li>
                                <a href="form-editors.html">
                                    <span class="menu-text">Editors</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!--Charts-->
                    
                    
                    
                    <!--Calendar-->
                    <li>
                        <a href="calendar.html">
                            <i class="menu-icon fa fa-calendar"></i>
                            <span class="menu-text">
                                Calendar
                            </span>
                        </a>
                    </li>
                   
                    <!--More Pages-->
                    
                </ul>
                <!-- /Sidebar Menu -->
            </div>
            <!-- /Page Sidebar -->
            <!-- Page Content -->
            <div class="page-content">
                <!-- Page Breadcrumb -->
                <div class="page-breadcrumbs">
                    <ul class="breadcrumb">
                        <li>
                            <i class="fa fa-home"></i>
                            <a href="#">当前位置</a>
                        </li>
                        <li>
                            <a href="#">用户管理</a>
                        </li>
                        <li class="active">会员管理</li>
                    </ul>
                </div>
                <!-- /Page Breadcrumb -->
                <!-- Page Header -->
                
                <!-- /Page Header -->
                <!-- Page Body -->
                <div class="page-body">
                    <!-- Your Content Goes Here -->
                    <div class="row">
                        <div class="col-lg-12 col-sm-12 col-xs-12">
                            <div class="row">
                                <div class="row">
                                    <div class="col-lg-12 col-sm-12 col-xs-12">
                                        <div class="widget">
                                            <div class="widget-header bordered-left bordered-darkorange">
                                                <span class="widget-caption"></span>
                                            </div>
                                            <div class="widget-body bordered-left bordered-warning">
                                                <form class="form-inline" role="form">
                                                   <div class="form-group">
                                                         
                                                        <div class="controls">
                                                            <div class="input-group">
                                                                <span class="input-group-addon">
                                                                    <i class="fa fa-calendar"></i>
                                                                </span><input type="text" class="form-control" id="reservation">
                                                            </div>
                                                        </div>
                                                </div>
                                                   
                                                    <div class="form-group">
                                                        <span class="input-icon icon-right">
                                                                                <input type="text" class="form-control" placeholder="姓名">
                                                                                <i class="fa fa-user"></i>
                                                                            </span>
                                                    </div>
                                                    <div class="form-group" >
                                                        <span class="input-icon icon-right">
                                                                                <input type="text" class="form-control" placeholder="手机号">
                                                                                <i class="glyphicon glyphicon-phone"></i>
                                                                            </span>
                                                    </div>
                                                    <button type="submit" class="btn btn-default">查询</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                            </div>
                            </div>

                        </div>

                        <div class="col-xs-12 col-md-12">
                            <div class="widget">
                                <div class="widget-header ">
                                    <span class="widget-caption">Simple DataTable</span>
                                    <div class="widget-buttons">
                                        <a href="#" data-toggle="maximize">
                                            <i class="fa fa-expand"></i>
                                        </a>
                                        <a href="#" data-toggle="collapse">
                                            <i class="fa fa-minus"></i>
                                        </a>
                                        <a href="#" data-toggle="dispose">
                                            <i class="fa fa-times"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="widget-body" style="height: auto;">
                                    <div role="grid" id="simpledatatable_wrapper" class="dataTables_wrapper form-inline no-footer"><div class="DTTT btn-group"><a class="btn btn-default DTTT_button_copy" id="ToolTables_simpledatatable_0"><span>Copy</span><div style="position: absolute; left: 0px; top: 0px; width: 54px; height: 31px; z-index: 99;"><embed id="ZeroClipboard_TableToolsMovie_1" src="assets/swf/copy_csv_xls_pdf.swf" loop="false" menu="false" quality="best" bgcolor="#ffffff" width="54" height="31" name="ZeroClipboard_TableToolsMovie_1" align="middle" allowscriptaccess="always" allowfullscreen="false" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" flashvars="id=1&amp;width=54&amp;height=31" wmode="transparent"></div></a><a class="btn btn-default DTTT_button_csv" id="ToolTables_simpledatatable_1"><span>CSV</span><div style="position: absolute; left: 0px; top: 0px; width: 47px; height: 31px; z-index: 99;"><embed id="ZeroClipboard_TableToolsMovie_2" src="assets/swf/copy_csv_xls_pdf.swf" loop="false" menu="false" quality="best" bgcolor="#ffffff" width="47" height="31" name="ZeroClipboard_TableToolsMovie_2" align="middle" allowscriptaccess="always" allowfullscreen="false" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" flashvars="id=2&amp;width=47&amp;height=31" wmode="transparent"></div></a><a class="btn btn-default DTTT_button_xls" id="ToolTables_simpledatatable_2"><span>Excel</span><div style="position: absolute; left: 0px; top: 0px; width: 53px; height: 31px; z-index: 99;"><embed id="ZeroClipboard_TableToolsMovie_3" src="assets/swf/copy_csv_xls_pdf.swf" loop="false" menu="false" quality="best" bgcolor="#ffffff" width="53" height="31" name="ZeroClipboard_TableToolsMovie_3" align="middle" allowscriptaccess="always" allowfullscreen="false" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" flashvars="id=3&amp;width=53&amp;height=31" wmode="transparent"></div></a><a class="btn btn-default DTTT_button_pdf" id="ToolTables_simpledatatable_3"><span>PDF</span><div style="position: absolute; left: 0px; top: 0px; width: 47px; height: 31px; z-index: 99;"><embed id="ZeroClipboard_TableToolsMovie_4" src="assets/swf/copy_csv_xls_pdf.swf" loop="false" menu="false" quality="best" bgcolor="#ffffff" width="47" height="31" name="ZeroClipboard_TableToolsMovie_4" align="middle" allowscriptaccess="always" allowfullscreen="false" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" flashvars="id=4&amp;width=47&amp;height=31" wmode="transparent"></div></a><a class="btn btn-default DTTT_button_print" id="ToolTables_simpledatatable_4" title="View print view"><span>Print</span></a></div><div id="simpledatatable_filter" class="dataTables_filter"><label><input type="search" class="form-control input-sm" aria-controls="simpledatatable"></label></div><div class="dataTables_length" id="simpledatatable_length"><label><select name="simpledatatable_length" aria-controls="simpledatatable" class="form-control input-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select></label></div><table class="table table-striped table-bordered table-hover dataTable no-footer" id="simpledatatable" aria-describedby="simpledatatable_info">
                                        <thead>
                                            <tr role="row"><th class="sorting_disabled" rowspan="1" colspan="1" aria-label="
                                                    
                                                " style="width: 20px;">
                                                    <div class="checker"><span class=""><input type="checkbox" class="group-checkable" data-set="#flip .checkboxes"></span></div>
                                                </th><th class="sorting" tabindex="0" aria-controls="simpledatatable" rowspan="1" colspan="1" aria-label="
                                                    Username
                                                : activate to sort column ascending" style="width: 168px;">
                                                    Username
                                                </th><th class="sorting_disabled" rowspan="1" colspan="1" aria-label="
                                                    Email
                                                " style="width: 326px;">
                                                    Email
                                                </th><th class="sorting" tabindex="0" aria-controls="simpledatatable" rowspan="1" colspan="1" aria-label="
                                                    Points
                                                : activate to sort column ascending" style="width: 112px;">
                                                    Points
                                                </th><th class="sorting_disabled" rowspan="1" colspan="1" aria-label="
                                                    Joined
                                                " style="width: 183px;">
                                                    Joined
                                                </th></tr>
                                        </thead>
                                        <tbody>
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                            
                                        <tr class="odd">
                                                <td class=" ">
                                                    <div class="checker"><span class=""><input type="checkbox" class="checkboxes" value="1"></span></div>
                                                </td>
                                                <td class=" ">
                                                    shuxer
                                                </td>
                                                <td class=" ">
                                                    <a href="mailto:shuxer@gmail.com">shuxer@gmail.com</a>
                                                </td>
                                                <td class=" ">
                                                    120
                                                </td>
                                                <td class="center  ">
                                                    12 Jan 2012
                                                </td>
                                            </tr><tr class="even">
                                                <td class=" ">
                                                    <div class="checker"><span class=""><input type="checkbox" class="checkboxes" value="1"></span></div>
                                                </td>
                                                <td class=" ">
                                                    looper
                                                </td>
                                                <td class=" ">
                                                    <a href="mailto:looper90@gmail.com">looper90@gmail.com</a>
                                                </td>
                                                <td class=" ">
                                                    120
                                                </td>
                                                <td class="center  ">
                                                    12.12.2011
                                                </td>
                                            </tr><tr class="odd">
                                                <td class=" ">
                                                    <div class="checker"><span class=""><input type="checkbox" class="checkboxes" value="1"></span></div>
                                                </td>
                                                <td class=" ">
                                                    userwow
                                                </td>
                                                <td class=" ">
                                                    <a href="mailto:userwow@yahoo.com">userwow@yahoo.com</a>
                                                </td>
                                                <td class=" ">
                                                    20
                                                </td>
                                                <td class="center  ">
                                                    12.12.2012
                                                </td>
                                            </tr><tr class="even">
                                                <td class=" ">
                                                    <div class="checker"><span class=""><input type="checkbox" class="checkboxes" value="1"></span></div>
                                                </td>
                                                <td class=" ">
                                                    user1wow
                                                </td>
                                                <td class=" ">
                                                    <a href="mailto:userwow@gmail.com">userwow@gmail.com</a>
                                                </td>
                                                <td class=" ">
                                                    20
                                                </td>
                                                <td class="center  ">
                                                    12.12.2012
                                                </td>
                                            </tr><tr class="odd gradeX">
                                                <td class=" ">
                                                    <div class="checker"><span class=""><input type="checkbox" class="checkboxes" value="1"></span></div>
                                                </td>
                                                <td class=" ">
                                                    restest
                                                </td>
                                                <td class=" ">
                                                    <a href="mailto:userwow@gmail.com">test@gmail.com</a>
                                                </td>
                                                <td class=" ">
                                                    20
                                                </td>
                                                <td class="center  ">
                                                    12.12.2012
                                                </td>
                                            </tr><tr class="even">
                                                <td class=" ">
                                                    <div class="checker"><span class=""><input type="checkbox" class="checkboxes" value="1"></span></div>
                                                </td>
                                                <td class=" ">
                                                    foopl
                                                </td>
                                                <td class=" ">
                                                    <a href="mailto:userwow@gmail.com">good@gmail.com</a>
                                                </td>
                                                <td class=" ">
                                                    20
                                                </td>
                                                <td class="center  ">
                                                    19.11.2010
                                                </td>
                                            </tr><tr class="odd">
                                                <td class=" ">
                                                    <div class="checker"><span class=""><input type="checkbox" class="checkboxes" value="1"></span></div>
                                                </td>
                                                <td class=" ">
                                                    weep
                                                </td>
                                                <td class=" ">
                                                    <a href="mailto:userwow@gmail.com">good@gmail.com</a>
                                                </td>
                                                <td class=" ">
                                                    20
                                                </td>
                                                <td class="center  ">
                                                    19.11.2010
                                                </td>
                                            </tr><tr class="even">
                                                <td class=" ">
                                                    <div class="checker"><span class=""><input type="checkbox" class="checkboxes" value="1"></span></div>
                                                </td>
                                                <td class=" ">
                                                    coop
                                                </td>
                                                <td class=" ">
                                                    <a href="mailto:userwow@gmail.com">good@gmail.com</a>
                                                </td>
                                                <td class=" ">
                                                    20
                                                </td>
                                                <td class="center  ">
                                                    19.11.2010
                                                </td>
                                            </tr><tr class="odd">
                                                <td class=" ">
                                                    <div class="checker"><span class=""><input type="checkbox" class="checkboxes" value="1"></span></div>
                                                </td>
                                                <td class=" ">
                                                    pppol
                                                </td>
                                                <td class=" ">
                                                    <a href="mailto:userwow@gmail.com">good@gmail.com</a>
                                                </td>
                                                <td class=" ">
                                                    20
                                                </td>
                                                <td class="center  ">
                                                    19.11.2010
                                                </td>
                                            </tr><tr class="even">
                                                <td class=" ">
                                                    <div class="checker"><span class=""><input type="checkbox" class="checkboxes" value="1"></span></div>
                                                </td>
                                                <td class=" ">
                                                    test
                                                </td>
                                                <td class=" ">
                                                    <a href="mailto:userwow@gmail.com">good@gmail.com</a>
                                                </td>
                                                <td class=" ">
                                                    20
                                                </td>
                                                <td class="center  ">
                                                    19.11.2010
                                                </td>
                                            </tr></tbody>
                                    </table><div class="row DTTTFooter"><div class="col-sm-6"><div class="dataTables_info" id="simpledatatable_info" role="alert" aria-live="polite" aria-relevant="all">Showing 1 to 10 of 25 entries</div></div><div class="col-sm-6"><div class="dataTables_paginate paging_bootstrap" id="simpledatatable_paginate"><ul class="pagination"><li class="prev disabled"><a href="#">Prev</a></li><li class="active"><a href="#">1</a></li><li><a href="#">2</a></li><li><a href="#">3</a></li><li class="next"><a href="#">Next</a></li></ul></div></div></div></div>
                                </div>
                            </div>
                        </div>
                    </div>    
                </div>
                <!-- /Page Body -->
            </div>
            <!-- /Page Content -->
        </div>
        <!-- /Page Container -->
        <!-- Main Container -->

    </div>

    <!--Basic Scripts-->
    <script src="assets/js/jquery-2.0.3.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!--Beyond Scripts-->
    <script src="assets/js/beyond.min.js"></script>

    <!--Page Related Scripts-->

    <!--Google Analytics::Demo Only-->
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'http://www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-52103994-1', 'auto');
        ga('send', 'pageview');

    </script>
</body>
<!--  /Body -->
</html>
