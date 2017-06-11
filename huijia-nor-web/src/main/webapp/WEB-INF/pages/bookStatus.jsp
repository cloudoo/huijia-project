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
    <link rel="stylesheet" href="<c:url value='/includes/style.debug.css?v=5081020' /> ">
</head>
<body>
    <div id="appendParent"></div>
    <div id="ajaxWaiting"></div>
    <form method="post" action="<c:url value='/index.hj' />" >
        <input type="hidden" name='day' id="today"  value="2017-05-08" />
        <input type="hidden" name='selectdate' id="selectdate" value="${selectdate}" />
        <input type="hidden" name="time" id="time" value="${time}" />
        <div class="book-coach clearfix">
            <div class="pull-left book-coach-name">教练：${coacher.name}</div>
            <div class="pull-right book-date">预约时间：${selectdate}&nbsp;&nbsp;${time}</div>
        </div>
        <dl class="book-cases">
            <div>预定课程：</div>

            <dd class="clearfix book-case case-selected">
                <img class="pull-left" src="<c:url value='/includes/images/img01.png'/>" />
                <p class="case-info">
                    <span class="case-name">${course.name}</span> <br>
                    <span class="case-time">时长：${course.dura}分钟</span>
                </p>
                <p class="case-name">
                    ${status}
                </p>
            </dd>


        </dl>

        <div id="wrap_member_card_list"></div>

        <div class="book-remark hidden">
            <textarea name="remark" id="remark"  class="" placeholder="添加备注信息："></textarea>
        </div>
        <div class="book-tip">注：课程开始2小时内不能取消</div>
        <div class="operate">
            <input type="submit" value="提交" id="submit_btn" class="hidden"/>
            <div id="ajax_loading" class="ajax_loading"></div>
            <a id="goHome" href="javascript:;" class="btn btn-primary">返回</a>
        </div>
    </form>

    <%--<script src="<c:url value='/includes/jquery-1.10.2.min.js'/>"></script>--%>
<script src="<c:url value='/includes/lib.min.js'/> " type="text/javascript"></script>
<script src="<c:url value='/includes/hj/bookStatus.js' />"  type="text/javascript">

</script>
</body>
</html>
