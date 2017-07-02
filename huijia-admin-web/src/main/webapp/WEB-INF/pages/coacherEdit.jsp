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
                        <a href="<c:url value='../index.hj'/>">主页</a>
                    </li>
                    <li>
                        <a href="<c:url value='../coacher/list.hj'/>">教练管理</a>
                    </li>
                    <li class="active">编辑教练</li>
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
                    <div class="tabbable">
                        <ul class="nav nav-tabs" id="myTab">
                            <li class="active">
                                <a data-toggle="tab" href="#baseinfo">
                                    教练信息
                                </a>
                            </li>

                            <li class="tab-red">
                                <a data-toggle="tab" href="#profile">
                                    上课记录
                                </a>
                            </li>


                            </li>
                        </ul>

                        <div class="tab-content">
                            <div id="baseinfo" class="tab-pane active">
                                <div class="widget flat radius-bordered">
                                    <%--<div class="widget-header bg-blue">--%>
                                        <%--<span class="widget-caption">个人信息</span>--%>
                                    <%--</div>--%>
                                    <div class="widget-body">
                                        <div id="registration-form">
                                            <form class = "form-horizontal" role="form" action="save.hj" method="post">

                                                <div class="widget-header bg-blue">
                                                <span class="widget-caption">基本信息</span>
                                                </div>
                                                <div class="form-title">

                                                </div>
                                                <div class="form-group">
                                                    <label   class="col-sm-2 control-label no-padding-right">姓名</label>
                                                    <div class="col-sm-8">
                                                         <span class="input-icon icon-right">
                                                        <input type="hidden" name="id" value="${coacherInfo.id}">
                                                        <input type="text" name = "name" class="form-control" id="userameInput" placeholder="Username" value="${coacherInfo.name}">
                                                        <%--<i class="glyphicon glyphicon-user circular"></i>--%>
                                                         </span>
                                                    </div>
                                                </div>

                                                <%--<div class="form-group">--%>
                                                    <%--<div class="control-group">--%>
                                                        <%--<div class="radio">--%>
                                                            <%--<label>--%>
                                                                <%--<input name="form-field-radio" type="radio" class="colored-blue">--%>
                                                                <%--<span class="text">男</span>--%>
                                                            <%--</label>--%>
                                                        <%--</div>--%>
                                                        <%--<div class="radio">--%>
                                                            <%--<label>--%>
                                                                <%--<input name="form-field-radio" type="radio" class="colored-danger">--%>
                                                                <%--<span class="text"> 女</span>--%>
                                                            <%--</label>--%>
                                                        <%--</div>--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>
                                                <div class="form-group">
                                                    <label   class="col-sm-2 control-label no-padding-right">手机号码</label>

                                                    <div class="col-sm-8">
                                                        <span class="input-icon icon-right">
                                                                            <input type="text" name ="cellphone" class="form-control" placeholder="Phone" value="${coacherInfo.cellphone}">
                                                                            <%--<i class="glyphicon glyphicon-earphone"></i>--%>
                                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label  class="col-sm-2 control-label no-padding-right">所属门店</label>
                                                    <div class="col-sm-8">
                                                        <span class="input-icon icon-right">
                                                                            <input type="text" name ="shopInfo" class="form-control" placeholder="门店信息" value="${coacherInfo.shopInfo}">
                                                                            <%--<i class="glyphicon glyphicon-earphone"></i>--%>
                                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label  class="col-sm-2 control-label no-padding-right">排序</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" name ="order" class="form-control"  value="${coacherInfo.order}">


                                                    </div>
                                                </div>
                                                <%--<div class="form-group">--%>
                                                                <%--<span class="input-icon icon-right">--%>
                                                                    <%--<input type="text" class="form-control" id="emailInput" placeholder="Email Address">--%>
                                                                    <%--<i class="fa fa-envelope-o circular"></i>--%>
                                                                <%--</span>--%>
                                                <%--</div>--%>



                                                <div class="form-title">
                                                    教练信息
                                                </div>

                                                <div class="form-group">
                                                    <label  class="col-sm-2 control-label no-padding-right">教龄</label>
                                                    <div class="col-sm-8">
                                                        <span class="input-icon icon-right">
                                                                            <input type="text" name ="identit" class="form-control" placeholder="请输入数字" value="${coacherInfo.techage}">
                                                                            <%--<i class="glyphicon glyphicon-earphone"></i>--%>
                                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label  class="col-sm-2 control-label no-padding-right">累计教学（小时）</label>
                                                    <div class="col-sm-8">
                                                        <span class="input-icon icon-right">
                                                                            <input type="text" name ="techCountTime" class="form-control" placeholder="请输入数字" value="${coacherInfo.techCountTime}">
                                                                            <%--<i class="glyphicon glyphicon-earphone"></i>--%>
                                                                        </span>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label  class="col-sm-2 control-label no-padding-right">专业认证</label>
                                                    <div class="col-sm-8">
                                                        <span class="input-icon icon-right">
                                                                            <input type="text" name ="certification" class="form-control" placeholder="请输入文字" value="${coacherInfo.certification}">
                                                                            <%--<i class="glyphicon glyphicon-earphone"></i>--%>
                                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label  class="col-sm-2 control-label no-padding-right">毕业院校</label>
                                                    <div class="col-sm-8">
                                                        <span class="input-icon icon-right">
                                                                            <input type="text" name ="graduateSch" class="form-control" placeholder="请输入文字" value="${coacherInfo.graduateSch}">
                                                                            <%--<i class="glyphicon glyphicon-earphone"></i>--%>
                                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label  class="col-sm-2 control-label no-padding-right">标签</label>
                                                    <div class="col-sm-8">
                                                        <span class="input-icon icon-right">
                                                                            <input type="text" name ="tags" class="form-control" placeholder="输入逗号分割标签" value="${coacherInfo.tags}">
                                                                            <%--<i class="glyphicon glyphicon-earphone"></i>--%>
                                                                        </span>
                                                    </div>
                                                </div>




                                                <div class="from-group" >
                                                    <input type="hidden" class="form-control"  rows="1" value="${coacherInfo.description}" />
                                                    <label  class="col-sm-2 control-label no-padding-right">经历</label>
                                                    <div class="col-sm-8">
                                                        <div id="description"></div>
                                                    </div>
                                                </div>


                                                <div class="form-title">
                                                    test
                                                </div>
                                                <div class="form-group">
                                                    <label  class="col-sm-2 control-label no-padding-right">介绍</label>
                                                    <div class="col-sm-8">
                                                        <span class="input-icon icon-right">
                                                            <textarea class="form-control" name ="introducs" rows="5" value="${coacherInfo.introducs}"></textarea>

                                                                        </span>
                                                    </div>
                                                </div>


                                                <button type="submit" class="btn btn-blue">保存</button>
                                                <a  href="<c:url value='../coacher/list.hj'/>" type="button" class="btn btn-yellow">返回</a>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div id="profile" class="tab-pane">
                                <p></p>
                            </div>


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
<script src="<c:url value='../assets/js/editors/summernote/summernote.js'/>"></script>
<script>
    $('#description').summernote({ height: 200 });
</script>

</body>
<!--  /Body -->

</html>
