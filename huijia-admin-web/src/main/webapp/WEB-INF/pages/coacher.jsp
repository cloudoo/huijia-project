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
    <title>教练管理</title>

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
                        <li >
                            <a href="/traineer/list.hj">
                                <i class="menu-icon fa fa-user"></i>
                                <span class="menu-text">会员管理</span>
                            </a>
                        </li>

                        <li class="active">
                            <a href="/coacher/list.hj">
                                <i class="menu-icon fa fa-user"></i>
                                <span class="menu-text">教练管理</span>
                            </a>
                        </li>

                    </ul>
                </li>
                <!---->
                <li>
                    <a href="#" class="menu-dropdown">
                        <i class="menu-icon fa fa-table"></i>
                        <span class="menu-text"> 预约签到 </span>

                        <i class="menu-expand"></i>
                    </a>


                </li>
                <!---->
                <li>
                    <a href="#" class="menu-dropdown">
                        <i class="menu-icon fa fa-pencil-square-o"></i>
                        <span class="menu-text"> 课程卡包 </span>

                        <i class="menu-expand"></i>
                    </a>

                    <ul class="submenu">
                        <li>
                            <a href="#">
                                <span class="menu-text">设置课程</span>
                            </a>
                        </li>

                        <li>
                            <a href="#">
                                <span class="menu-text">设置卡包</span>
                            </a>
                        </li>

                        <li>
                            <a href="#">
                                <span class="menu-text">分配卡包</span>
                            </a>
                        </li>

                    </ul>
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
                    <li class="active">教练管理</li>
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
                                                <button type="button" class="btn btn-default">查询</button>
                                                <a href="/coacher/toadd.hj" class="btn btn-primary shiny">增加教练</a>
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
                                <span class="widget-caption">教员列表</span>
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
                                                排序
                                            </th>
                                        <th>
                                            姓名
                                        </th>
                                        <th>
                                            性别
                                        </th>
                                        <th>
                                            手机号
                                        </th>
                                        <th>
                                            门店
                                        </th>
                                        <th>
                                            状态
                                        </th>
                                        <th>
                                            编辑
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
<script src="<c:url value='../assets/hj/coacher.js' />" >

</script>

</body>
<!--  /Body -->

</html>
