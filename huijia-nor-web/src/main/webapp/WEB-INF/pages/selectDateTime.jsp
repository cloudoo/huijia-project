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

<body >
    <form id="selectCourseForm" method="post" action="<c:url value='/course/selectcourse.hj' /> ">

        <input type="hidden" name='day' id="today" value="" />
        <input type="hidden" name='time' id="time" value="" />
        <input type="hidden" name='selectdate' id="selectdate" value="" />
        <input type="hidden" name="coacherId" id="coacherId" value="${coacherId}" />
        <div class="calendar-title head flex">
            <a href="javascript:;" class="col on" data-datetime=''></a>
            <a href="javascript:;" class="col" data-datetime=''></a>
            <a href="javascript:;" class="col " data-datetime=''></a>
            <a href="javascript:;" class="col " data-datetime=''></a>
            <a href="javascript:;" class="col " data-datetime=''></a>
            <a href="javascript:;" class=" date" data-datetime=''><span class="glyphicon glyphicon-calendar"></span></a> <input type="text" class="datepicker">
        </div>
        <div class="pickerdate">
            <h3>选择日期</h3>
            <div class="date-choose"></div>
        </div>

        <div class="tab-content" id="calendar">
            <div class="tab-pane active">
                <ul class="plan">
                    <c:forEach items="${selectTimes}" var="time" >
                    <li>
                        <a  href="javascript:;" time="${time}">
                            <span>${time}</span>
                            <em></em>
                        </a>
                    </li>
                    <li class="fix"></li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div class="operate">
            <div class="container">
                <input type="submit" value="提交" id="submit_btn" class="hidden" />
                <div id="ajax_loading" class="ajax_loading"></div>
                <a id="privatebook" class="btn btn-primary">下一步</a>
            </div>
        </div>
    </form>

    <%--<script src="<c:url value='/includes/jquery-1.10.2.min.js'/>"></script>--%>
    <script src="<c:url value='/includes/lib.min.js'/>" type="text/javascript"></script>
    <script src="<c:url value='/includes/main.debug.js?v=4241650'/>"></script>
    <script src="<c:url value='/includes/hj/selectDateTime.js' />"></script>

</body>

</html>