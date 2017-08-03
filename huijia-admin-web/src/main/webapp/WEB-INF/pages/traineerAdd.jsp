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
                <!-- -->
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
                        <a href="<c:url value='../traineer/list.hj'/>">会员管理</a>
                    </li>
                    <li class="active">增加会员</li>
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
                                    个人基本信息
                                </a>
                            </li>

                            <li class="tab-red">
                                <a data-toggle="tab" href="#profile">
                                    卡包信息
                                </a>
                            </li>

                            <li class="tab-red">
                                <a data-toggle="tab" href="#profile">
                                    充值信息
                                </a>
                            </li>
                            <li class="tab-red">
                                <a data-toggle="tab" href="#profile">
                                    上课信息
                                </a>
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
                                            <form class = "form-horizontal" id="addForm" role="form" action="save.hj" method="post">

                                                <div class="widget-header bg-blue">
                                                <span class="widget-caption">基本信息</span>
                                                </div>
                                                <div class="form-title">

                                                </div>
                                                <div class="form-group">
                                                    <label for="inputName" class="col-sm-2 control-label no-padding-right">姓名</label>
                                                    <div class="col-sm-8">
                                                         <span class="input-icon icon-right">
                                                        <input type="text" name = "name" class="form-control" id="userameInput" placeholder="Username" value="${traineeInfo.name}">
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
                                                                            <input type="text" id = "cellphoneInput"  name ="cellphone" class="form-control" placeholder="Phone" value="${traineeInfo.cellphone}">
                                                                            <%--<i class="glyphicon glyphicon-earphone"></i>--%>
                                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label  class="col-sm-2 control-label no-padding-right">开发门店</label>
                                                    <div class="col-sm-8">
                                                        <span class="input-icon icon-right">
                                                                            <input type="text" name ="shopInfo" class="form-control" placeholder="门店信息" value="${traineeInfo.shopInfo}">
                                                                            <%--<i class="glyphicon glyphicon-earphone"></i>--%>
                                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label  class="col-sm-2 control-label no-padding-right">审核状态</label>
                                                    <div class="col-sm-8">
                                                         <c:if test="${traineeInfo.status==1}">
                                                         <span class="label label-success">审核通过</span>
                                                         </c:if>

                                                    </div>
                                                </div>
                                                <%--<div class="form-group">--%>
                                                                <%--<span class="input-icon icon-right">--%>
                                                                    <%--<input type="text" class="form-control" id="emailInput" placeholder="Email Address">--%>
                                                                    <%--<i class="fa fa-envelope-o circular"></i>--%>
                                                                <%--</span>--%>
                                                <%--</div>--%>



                                                <div class="form-title">
                                                    其他信息
                                                </div>

                                                <div class="form-group">
                                                    <label  class="col-sm-2 control-label no-padding-right">身份证号</label>
                                                    <div class="col-sm-8">
                                                        <span class="input-icon icon-right">
                                                                            <input type="text" name ="identit" class="form-control" placeholder="身份证" value="${traineeInfo.identit}">
                                                                            <%--<i class="glyphicon glyphicon-earphone"></i>--%>
                                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label  class="col-sm-2 control-label no-padding-right">生日</label>
                                                    <%--<div class="col-sm-8">--%>
                                                        <%--<span class="input-icon icon-right">--%>
                                                                            <%--<input type="text" name ="brithday" class="form-control" placeholder="生日" value="${traineeInfo.brithday}">--%>
                                                                            <%--&lt;%&ndash;<i class="glyphicon glyphicon-"></i>&ndash;%&gt;--%>
                                                                        <%--</span>--%>
                                                    <%--</div>--%>
                                                </div>

                                                <div class="form-group">
                                                    <label  class="col-sm-2 control-label no-padding-right">身高</label>
                                                    <div class="col-sm-8">
                                                        <span class="input-icon icon-right">
                                                                            <input type="text" name ="height" class="form-control" placeholder="身高" value="${traineeInfo.height}">
                                                                            <%--<i class="glyphicon glyphicon-earphone"></i>--%>
                                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label  class="col-sm-2 control-label no-padding-right">身高</label>
                                                    <div class="col-sm-8">
                                                        <span class="input-icon icon-right">
                                                                            <input type="text" name ="weight" class="form-control" placeholder="体重" value="${traineeInfo.weight}">
                                                                            <%--<i class="glyphicon glyphicon-earphone"></i>--%>
                                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label  class="col-sm-2 control-label no-padding-right">到店距离</label>
                                                    <div class="col-sm-8">
                                                        <span class="input-icon icon-right">
                                                                            <input type="text" name ="disType" class="form-control" placeholder="到店距离" value="1">
                                                                            <%--<i class="glyphicon glyphicon-earphone"></i>--%>
                                                                        </span>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label  class="col-sm-2 control-label no-padding-right">memo</label>
                                                    <div class="col-sm-8">
                                                        <span class="input-icon icon-right">
                                                            <textarea class="form-control" name ="memo" rows="5" value="${traineeInfo.memo}"></textarea>

                                                                        </span>
                                                    </div>
                                                </div>




                                                <hr class="wide">
                                                <div class="form-title">
                                                    健身信息
                                                </div>

                                                <div class="form-group">
                                                    <label  class="col-sm-2 control-label no-padding-right">健身需求</label>
                                                    <div class="col-sm-1 col-xs-1">
                                                        <div class="checkbox">
                                                            <label>
                                                                <input type="checkbox" class="colored-warning" checked="checked">
                                                                <span class="text">减肥</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-1 col-xs-1">
                                                        <div class="checkbox">
                                                            <label>
                                                                <input type="checkbox" class="colored-warning" checked="checked">
                                                                <span class="text">增肌</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-1">
                                                        <div class="checkbox">
                                                            <label>
                                                                <input type="checkbox" class="colored-warning" checked="checked">
                                                                <span class="text">塑形</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-1 col-xs-1">
                                                        <div class="checkbox">
                                                            <label>
                                                                <input type="checkbox" class="colored-warning" checked="checked">
                                                                <span class="text">康复</span>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <%--private String fitNeeds;//健身需求--%>
                                                <%--private Long coacherId =  null;//主教练信息--%>
                                                <%--private String coacherName;//主教练名字--%>
                                                <%--private String career;//行业--%>
                                                <%--private String post;//职位--%>
                                                <%--private String history;//过往病史--%>
                                                <%--private String picDir;--%>



                                                <%--<div class="form-group">--%>
                                                    <%--<div class="checkbox">--%>
                                                        <%--<label>--%>
                                                            <%--<input type="checkbox" class="colored-blue">--%>
                                                            <%--<span class="text">Auto Sign In After Registration</span>--%>
                                                        <%--</label>--%>
                                                    <%--</div>--%>
                                                <%--</div>--%>
                                                <button id= "subbtn" type="button" class="btn btn-blue">保存</button>
                                                <a  href="<c:url value='../traineer/list.hj'/>" type="button" class="btn btn-yellow">返回</a>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div id="profile" class="tab-pane">
                                <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid.</p>
                            </div>

                            <div id="dropdown1" class="tab-pane">
                                <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade.</p>
                            </div>

                            <div id="dropdown2" class="tab-pane">
                                <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin.</p>
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
<script src="<c:url value='../assets/hj/traineerAdd.js'/>" ></script>

</body>
<!--  /Body -->

</html>
