<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <meta name="keywords" content=""/>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <title></title>
    <link rel="stylesheet" href="<c:url value='/includes/bootstrap/css/bootstrap.min.css'/> ">
    <link rel="stylesheet" href="<c:url value='/includes/style.debug.css?v=4241650'/> ">
</head>
<body style="background-color:#c9da2d">
    <div id="appendParent"></div>
    <div id="ajaxWaiting"></div>
    <div class="coach-personal">
        <div class="coach-personal-img">
            <img src="<c:url value= '/includes/images/img02.jpg'/> " alt="" class="personal-img">
        </div>
           
        <ul class="personal-nav">
            <li><a href="<c:url value= 'coacher/list.hj'/> "><div class="ico ico1"></div>私教</a></li>
            <li><a href="<c:url value= 'course/commonlist.hj'/> "><div class="ico ico2"></div>团课</a></li>
            <li><a href="javascript:;"><div class="ico ico3"></div>签到</a></li>
            <li><a href="<c:url value='/traineer/privatebooks.hj' /> "><div class="ico ico4"></div>我的预约</a></li>
            <li><a href="<c:url value= '/traineer/info.hj'/>"><div class="ico ico5"></div>个人信息</a></li>
            <li><a href="javascript:;"><div class="ico ico6"></div>购买课程</a></li>
            <!--下面的不要删除-->
            <li class="justify_fix"></li>
            <li class="justify_fix"></li>
            <li class="justify_fix"></li>          
        </ul>
    </div>
</body>
</html>