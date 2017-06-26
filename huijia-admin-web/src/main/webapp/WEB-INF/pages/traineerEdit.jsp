<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<!-- Head -->
<head>
    <meta charset="utf-8"/>
    <title>用户管理</title>

    <meta name="description" content="traineer manager"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="shortcut icon" href="<c:url value='../assets/img/favicon.png'/> " type="image/x-icon">

    <!--Basic Styles-->
    <link href="<c:url value='/assets/css/bootstrap.min.css'/>" rel="stylesheet"/>
    <link id="bootstrap-rtl-link" href="" rel="stylesheet"/>
    <link href="<c:url value='../assets/css/font-awesome.min.css'/>" rel="stylesheet"/>
    <link href="<c:url value='../assets/css/weather-icons.min.css'/>" rel="stylesheet"/>

    <!--Fonts-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300"
          rel="stylesheet" type="text/css">

    <!--Beyond styles-->
    <link href="<c:url value='../assets/css/beyond.min.css'/>" rel="stylesheet"/>
    <link href="<c:url value='../assets/css/demo.min.css'/>" rel="stylesheet"/>
    <link href="<c:url value='../assets/css/typicons.min.css'/>" rel="stylesheet"/>
    <link href="<c:url value='../assets/css/animate.min.css'/>" rel="stylesheet"/>
    <link id="skin-link" href="" rel="stylesheet" type="text/css"/>

    <link href="<c:url value='../assets/css/dataTables.bootstrap.css'/>" rel="stylesheet"/>

    <!--Skin Script: Place this script in head to load scripts for skins and rtl support-->
    <script src="<c:url value='../assets/js/skins.min.js'/>"></script>
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
                        <img src="<c:url value='../assets/img/logo.png'/>" alt=""/>
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

                            <!--/Notification Dropdown-->
                        </li>
                        <li>
                            <a class="wave in dropdown-toggle" data-toggle="dropdown" title="Help" href="#">
                                <i class="icon fa fa-envelope"></i>
                                <span class="badge">3</span>
                            </a>
                            <!--Messages Dropdown-->

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
                                        <img src="<c:url value='../assets/img/avatars/adam-jansen.jpg'/>"
                                             class="avatar">
                                        <span class="caption">Change Photo</span>
                                    </div>
                                </li>
                                <!--Avatar Area-->

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
                    </ul>
                    <div class="setting">
                        <a id="btn-setting" title="Setting" href="#">
                            <i class="icon glyphicon glyphicon-cog"></i>
                        </a>
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
                <input type="text" class="searchinput"/>
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
                            <a href="/traineer/list.hj">
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

            </div>
            <!-- /Page Body -->
        </div>
        <!-- /Page Content -->
    </div>
    <!-- /Page Container -->
    <!-- Main Container -->

</div>

<!--Basic Scripts-->
<script src="<c:url value='../assets/js/jquery-2.0.3.min.js'/>"></script>
<script src="<c:url value='../assets/js/bootstrap.min.js'/>"></script>

<!--Beyond Scripts-->
<script src="<c:url value='../assets/js/beyond.min.js'/>"></script>

<!--Page Related Scripts-->
<script src="<c:url value='../assets/js/datatable/jquery.dataTables.min.js'/>"></script>
<script src="<c:url value='../assets/js/datatable/ZeroClipboard.js'/>"></script>
<script src="<c:url value='../assets/js/datatable/dataTables.tableTools.min.js'/>"></script>
<script src="<c:url value='../assets/js/datatable/dataTables.bootstrap.min.js'/>"></script>
<script src="<c:url value='../assets/js/datatable/datatables-init.js'/>"></script>
<script>
    $(document).ready(function () {
        $('#simpledatatable').DataTable({
            "ajax": {
                "url": '../traineer/ajaxlist.aj',
                "dataSrc": ""
            },
            "columns": [
                {"data": "id"},
                {"data": "wxOpenId"},
                {"data": "name"},
                {"data": "gender"},
                {"data": "cellphone"},
                {"data": "shopInfo"},
                {"data": "identit"},
                {"data": "coacherId"}
            ]
        });
    });
</script>

</body>
<!--  /Body -->

</html>
