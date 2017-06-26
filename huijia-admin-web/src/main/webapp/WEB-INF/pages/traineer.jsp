﻿<%@ page language="java" contentType="text/html; charset=utf-8"
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
                                        <img src="<c:url value='../assets/img/avatars/divyia.jpg'/>"
                                             class="message-avatar"
                                             alt="Divyia Austin">
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
                                        <img src="<c:url value='../assets/img/avatars/bing.png'/>"
                                             class="message-avatar"
                                             alt="Microsoft Bing">
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
                                        <img src="<c:url value='../assets/img/avatars/adam-jansen.jpg'/>"
                                             class="message-avatar"
                                             alt="Divyia Austin">
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
                                    <button class="btn btn-xs btn-default shiny darkorange icon-only pull-right"><i
                                            class="fa fa-check"></i></button>
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
                                        <img src="<c:url value='../assets/img/avatars/adam-jansen.jpg'/>"
                                             class="avatar">
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
                                        <li><a class="colorpick-btn" href="#" style="background-color:#5DB2FF;"
                                               rel="assets/css/skins/blue.min.css"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#2dc3e8;"
                                               rel="assets/css/skins/azure.min.css"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#03B3B2;"
                                               rel="assets/css/skins/teal.min.css"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#53a93f;"
                                               rel="assets/css/skins/green.min.css"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#FF8F32;"
                                               rel="assets/css/skins/orange.min.css"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#cc324b;"
                                               rel="assets/css/skins/pink.min.css"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#AC193D;"
                                               rel="assets/css/skins/darkred.min.css"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#8C0095;"
                                               rel="assets/css/skins/purple.min.css"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#0072C6;"
                                               rel="assets/css/skins/darkblue.min.css"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#585858;"
                                               rel="assets/css/skins/gray.min.css"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#474544;"
                                               rel="assets/css/skins/black.min.css"></a></li>
                                        <li><a class="colorpick-btn" href="#" style="background-color:#001940;"
                                               rel="assets/css/skins/deepblue.min.css"></a></li>
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
                    </ul>
                    <div class="setting">
                        <a id="btn-setting" title="Setting" href="#">
                            <i class="icon glyphicon glyphicon-cog"></i>
                        </a>
                    </div>
                    <div class="setting-container">
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
                            <a href="/coacher/list.hj">
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
                                                                </span><input type="text" class="form-control"
                                                                              id="reservation">
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                        <span class="input-icon icon-right">
                                                                                <input type="text" class="form-control"
                                                                                       placeholder="姓名">
                                                                                <i class="fa fa-user"></i>
                                                                            </span>
                                                </div>
                                                <div class="form-group">
                                                        <span class="input-icon icon-right">
                                                                                <input type="text" class="form-control"
                                                                                       placeholder="手机号">
                                                                                <i class="glyphicon glyphicon-phone"></i>
                                                                            </span>
                                                </div>
                                                <button type="submit" class="btn btn-default">查询</button>
                                                <a href="javascript:void(0);" class="btn btn-primary shiny">增加会员</a>
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
                                <span class="widget-caption">会员列表</span>
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
                            <div class="widget-body">
                                <table class="table table-striped table-bordered table-hover" id="simpledatatable">
                                    <thead>
                                    <tr>
                                        <%--<th>--%>
                                            <%--<div class="checker"><span class=""><input type="checkbox"--%>
                                                                                       <%--class="group-checkable"--%>
                                                                                       <%--data-set="#flip .checkboxes"></span>--%>
                                            <%--</div>div--%>
                                        <%--</th>--%>
                                        <th>
                                            id
                                        </th>
                                        <th>
                                            wxOpenId
                                        </th>
                                        <th>
                                            name
                                        </th>
                                        <th>
                                            gender
                                        </th>
                                        <th>
                                            cellphone
                                        </th>
                                        <th>
                                            shopInfo
                                        </th>
                                        <th>
                                            identit
                                        </th>
                                        <th>
                                            coacherId
                                        </th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
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
                {"data": "coacherId"},
                {
                    "data":"id",
                    "render": function ( data, type, row ) {
                        return   "<a href='/' class='btn btn-info btn-xs edit'><i class='fa fa-edit'></i> Edit</a>"
                            +"<a href='#' class='btn btn-danger btn-xs delete'><i class='fa fa-trash-o'></i> Delete</a>"
                            +" </td>";
                    }
                }
            ]
        });
    });
</script>

</body>
<!--  /Body -->

</html>
