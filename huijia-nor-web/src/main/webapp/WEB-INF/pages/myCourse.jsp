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
    <link rel="stylesheet" href="<c:url value='/includes/style.debug.css?v=5091020'/> ">
</head>
<body>
    <div id="appendParent"></div><div id="ajaxWaiting"></div>
    <div class="calendar">
        <div class="head">
            <ul class="nav nav-tabs nav-booking">
                <li class="active">
                    <a href="<c:url value='/traineer/privatebooks.hj'/>"><em>私教课</em></a>
                </li>
                <li >
                    <a href=""<c:url value='/traineer/commonsbooks.hj'/>""><em>团课</em></a>
                </li>
            </ul>
        </div>
    </div>

    <div class="myCourse-record-list">
        <ul>
            <c:forEach var="reservationVo" items="${reservations}">
            <li>
                <span class="day">${reservationVo.reservaTm}</span>
                <div class="pic"><img src="<c:url value='/includes/images/img01.png' /> " ></div>
                <div class="desc">
                    <h3>${reservationVo.courseName}</h3>
                    <p class="p1"><span class="lecturer">${reservationVo.coacherName}</span><span class="date"></span><span class="time">${reservationVo.startTm} — ${reservationVo.endTm}</span></p>
                    <p class="p2">${reservationVo.courseDesc}</p>
                </div>
                <div class="control">
                    <p class="p1">
                        <a href="<c:url value='/traineer/toChangePriCourse.hj?revId=${reservationVo.id}' /> "><span class="edit"><em>修改</em></span></a>
                        <a href="<c:url value='/course/toCancelPage.hj?revId=${reservationVo.id}' />" ><span class="cancel"><em>取消</em></span></a>
                    </p>
                    <p class="p2">
                        报名人数：${reservationVo.cuSize}
                    </p>
                </div>
            </li>
            </c:forEach>
        </ul>
        <%--<div class="more-record">更多记录</div>--%>
    </div>

    <!--  以下注释为无数据时显示内容  勿删  
    <div class="record-null">
        <div class="container">
            <span class="pic"><i class="icon icon-record"></i></span>
            <h3>暂无数据</h3>

        </div>
    </div>
    -->
</body>
</html>
