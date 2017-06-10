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
    <link rel="stylesheet" href="<c:url value='/includes/bootstrap/css/bootstrap.min.css' />">
    <link rel="stylesheet" href="<c:url value='/includes/style.debug.css?v=4241650' />">
</head>
<body>
    <div id="appendParent"></div>
    <div id="ajaxWaiting"></div>
    <div class="coach-list">
        <a href="javascript:;" class="studio-select-title clearfix" >
            <!-- <i class="iconfont icon-location"></i> -->
            <span>讲师</span>
           <!--  <i class="iconfont icon-pull-down pull-right"></i> -->
        </a>
        <c:forEach items="${coachers}" var="coacher" >
        <div  class="coach flex">
            <a href="javascript:;" class="avatar" style=" background-image: url(<c:url value='../includes/images/img01.png' />); "></a>
            <div class="col flex flex-pack-center flex-align-center flex-ver">
                <div class="col coach-info flex flex-align-end">
                    <p class="name">
                        <a href="javascript;">${coacher.name}</a>
                    </p>
                    <ul class="coach-label">
                        <c:forTokens items="${coacher.tags}" delims="," var="tag">
                        <li>${tag}</li>
                        </c:forTokens>
                    </ul>
                </div>
                <p class="col cocah-desc">
                    ${coacher.introducs}
                </p> 
            </div>
            <span class="book">
                <a href="<c:url value='/course/selectbooktime.hj?coacherId=${coacher.id}'/>">&nbsp;&nbsp;&nbsp;&nbsp;预约&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </span>
        </div>
        </c:forEach>

    </div>
</body>
</html>