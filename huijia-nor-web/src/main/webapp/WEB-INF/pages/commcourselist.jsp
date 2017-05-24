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
    <link rel="stylesheet" href="<c:url value= '/includes/bootstrap/css/bootstrap.min.css' /> ">
    <link rel="stylesheet" href="<c:url value= '/includes/style.debug.css?v=4241650' /> ">
</head>
<body>
    <input type="hidden" name='day' id="today" value="" />
    <input type="hidden" name='selectdate' id="selectdate" value="" />

    <div id="appendParent"></div><div id="ajaxWaiting"></div>

    <div class="coach-list coach-time-list">
        <a href="javascript:;"  class="studio-select-title">
            <span class="iconfontColor">课程预约</span>
        </a>

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
            <div class="date-choose">
            </div>
        </div>
<form action="commoncoursedetail.hj">
        <div  class="coach">
            <div class="flex">
                <a href="javascript:;" class="avatar" style=" background-image: url(<c:url value= '/includes/images/img01.png'/>); "></a>
                <div class="col ">
                    <div class="coach-info">
                        <p class="time">10:00 - 11:00</p>
                        <p class="coach-tip">hadoop培训☆</p>
                    </div>
                    <div class="flex ">
                        <p class="col coach-tip">讲师：Johnny </p>
                        <p class="col coach-tip">报名人数：2/8</p>
                    </div>
                </div>
            </div>
            <!-- 课程状态/反馈状态  1. 已发布 2. 确认开课 3. 已删除 4. 取消开课-->
            <span class="book">确认开课</span>                    
                    <!-- 报名状态 -->
            <button type="submit" class="book-btn" >预约</button>
        </div>
        </form>
        <form action="commoncoursedetail.hj">
        <div  class="coach">
            <div class="flex">
                <a href="javascript:;" class="avatar" style=" background-image: url(<c:url value='/includes/images/img01.png'/> ); "></a>
                <div class="col ">
                    <div class="coach-info">
                        <p class="time">12:30 - 13:30</p>
                        <p class="coach-tip">hbase培训☆☆</p>
                    </div>
                    <div class="flex ">
                        <p class="col coach-tip">讲师：Johnny </p>
                        <p class="col coach-tip">报名人数：1/8 </p>
                    </div>
                </div>
            </div>

            <!-- 课程状态/反馈状态  1. 已发布 2. 确认开课 3. 已删除 4. 取消开课-->
            <span class="book">确认开课</span>       
             <!-- 报名状态 -->
            <button type="submit" class="book-btn">预约</button>
        </div>
        </form>
        <form action="commoncoursedetail.hj">
        <div  class="coach">
            <div class="flex">
                <a href="javascript:;" class="avatar" style=" background-image: url(<c:url value= '/includes/images/img01.png'/> ); "></a>
                <div class="col ">
                    <div class="coach-info">
                        <p class="time">14:30 - 15:30</p>
                        <p class="coach-tip">java基础培训☆</p>
                    </div>
                    <div class="flex ">
                        <p class="col coach-tip">讲师：Loly </p>
                        <p class="col coach-tip">报名人数：0/8  </p>
                    </div>
                </div>
            </div>
            <!-- 课程状态/反馈状态  1. 已发布 2. 确认开课 3. 已删除 4. 取消开课-->
                    
            <!-- 报名状态 -->
            <button type="submit" class="book-btn">预约</button>
        </div>
        </form>
        <form action="commoncoursedetail.hj">
        <div  class="coach">
            <div class="flex">
                <a href="javascript:;" class="avatar" style=" background-image: url(<c:url value= '/includes/images/img01.png'/> ); "></a>
                <div class="col ">
                    <div class="coach-info">
                        <p class="time">14:30 - 15:30</p>
                        <p class="coach-tip">网络通讯☆</p>
                    </div>
                    <div class="flex ">
                        <p class="col coach-tip">讲师：Loly </p>
                        <p class="col coach-tip">报名人数：0/8  </p>
                    </div>
                </div>
            </div>
            <!-- 课程状态/反馈状态  1. 已发布 2. 确认开课 3. 已删除 4. 取消开课-->
                    
            <!-- 报名状态 -->
            <button type="submit" class="book-btn">预约</button>
        </div>
        </form>
        <form action="commoncoursedetail.hj">
        <div  class="coach">
            <div class="flex">
                <a href="javascript:;" class="avatar" style=" background-image: url(<c:url value= '/includes/images/img01.png'/> ); "></a>
                <div class="col ">
                    <div class="coach-info">
                        <p class="time">14:30 - 15:30</p>
                        <p class="coach-tip">Oracle☆</p>
                    </div>
                    <div class="flex ">
                        <p class="col coach-tip">讲师：Loly </p>
                        <p class="col coach-tip">报名人数：0/8  </p>
                    </div>
                </div>
            </div>
            <!-- 课程状态/反馈状态  1. 已发布 2. 确认开课 3. 已删除 4. 取消开课-->
                    
            <!-- 报名状态 -->
            <button type="submit" class="book-btn">预约</button>
        </div>
            </form>
        
    </div>
<script src="<c:url value= '/includes/lib.min.js'/> " type="text/javascript"></script>
<script src="<c:url value= '/includes/main.debug.js?v=4241650' /> "></script>
</body>
</html>