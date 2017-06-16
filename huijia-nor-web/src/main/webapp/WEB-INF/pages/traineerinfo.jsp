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
    <link rel="stylesheet" href="<c:url value='/includes/style.debug.css?v=5081020'/> ">
</head>
<body>
    <div id="appendParent"></div>
    <div id="ajaxWaiting"></div>
    <div class="plan-student">
        <div class="plan-bg">
            <img src="includes/images/img02.jpg" >
        </div>
        <div class="student-info">
            <div class="avatar" style="background-image: url('http://wx.qlogo.cn/mmopen/Kicac9LZzJtK1O1ycoG1uo3XJUsJzkAG2rnGialeYLbZaRZQ83Oia9XuOEqHLhBDP7SxxbfhLwSQZxa2pOiaoicSzlCeEfJaew4QO/0')"></div>
            <span>荟佳&emsp;</span>
        </div>
        <div class="flex">
            <a href="" class="col act">基本信息</a>
            <a href="" class="col ">上课记录</a>
            <a href="" class="col ">健身计划</a>
        </div>
    </div>

    <div class="student-base">
        <form method="post" action="/traineer/save.hj" id="ajax_form" onsubmit="">

            <div class="base-info">
                <div class="info control clearfix">
                    <span class="pull-left">姓名：</span>
                    <input type="text" name="id" value="${traineer.id}"/>
                    <input type="text" name="wxOpenId" value="${wxOpenId}"/>
                    <input type="text" class="pull-right text-right" name='name' id="name" value="${traineer.name}" placeholder="请输入姓名">
                </div>
                <div class="info control clearfix">
                <span class="pull-left">性别：</span>
                <div class="pull-right">
                                    <input type="hidden" name="gender" id="sexValue" value="0"/>
                    <a href="javascript:;" data-toggle="modal" data-target="#sexModal" class="arrow">
                        <span id="sexText">女</span>
                    </a>
                </div>
            </div>
                <div class="info control clearfix">
                <span class="pull-left">生日：</span>
                <input type="text" id="birthday" class="pull-right text-right" name="birthday" value="0" placeholder="请输入出生日期">
            </div>
                <div class="info control clearfix">
                <span class="pull-left">手机号码：</span>
                <input type="text"   id= "cellphone" class="pull-right text-right" name="cellphone" value="${traineer.cellphone}">

            </div>
                <div class="info clearfix">
                <span class="pull-left">所属场馆：</span>
                <div class="pull-right">
                    <input type="hidden" name="shopname" id="shop" value="${traineer.shopInfo}"/>
                    <a href="javascript:;" data-toggle="modal" data-target="#shopModal" class="arrow">
                        <span id="shopText"></span>
                        <i class="icon icon-arrow"></i>
                    </a>
                </div>
            </div>
                <div class="info clearfix">
                <span class="pull-left">主教练：</span>
                <div class="pull-right">
                    <input type="hidden" name="profile[chiefCoach]" id="chiefCoach" value=""/>
                    <a href="javascript:;" data-toggle="modal" data-target="#chiefCoachModal" class="arrow">
                        <span id="chiefCoachText"></span>
                    </a>
                </div>
            </div>
                <%--<div class="info clearfix">--%>
                <%--<span class="pull-left">健身需求：</span>--%>
                <%--<div class="pull-right">--%>
                    <%--<a href="javascript:;"  data-toggle="modal" data-target="#fitGoalModal" class="arrow flex">--%>
                        <%--<div id="fitGoalText" class="col1">--%>
                                            <%--</div>--%>
                        <%--<i class="icon icon-arrow"></i>--%>
                    <%--</a>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>

            <%--<div class="text-center plan-student-info">--%>
                <%--卡包信息--%>
            <%--</div>--%>
            <%----%>
            <div>
                <input type="submit" value="提交" id="submit_btn" class="hidden"/>
                <div id="ajax_loading" class="ajax_loading"></div>
                <a href="javascript:;" class="buy-card">保存信息</a>
            </div>
        </form>
    </div>

    <!-- 选择性别 -->
    <div class="modal custom-modal fade" id="sexModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="list-group">
                        <ul>
                            <li>
                                <a href="javascript:;" onclick="selectItem('sexModal', 'sexValue', '1', 'sexText', '1')">男</a>
                            </li>
                            <li>
                                <a href="javascript:;" onclick="selectItem('sexModal', 'sexValue', '2', 'sexText', '2')">女</a>
                            </li>
                        </ul>
                     </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 所属场馆 -->
    <div class="modal custom-modal fade" id="shopModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="list-group">
                        <ul>
                            <li>
                                <a href="javascript:;" onclick="selectShopItem('shopModal', 'shop', '723710f4aa33438798ebab26db162001', 'shopText', '【荟伽•普拉提•体态调整】')">荟伽。养生馆</a>
                            </li>
                        </ul>
                     </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 主教练 -->
    <div class="modal custom-modal fade" id="chiefCoachModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="list-group">
                        <ul id="ajaxCoachList">

                         </ul>
                     </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 行业 -->
    <div class="modal custom-modal fade" id="workTypeModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="list-group">
                        <ul>
                            <li>
                                <a href="javascript:;" onclick="selectItem('workTypeModal', 'workType', 'ea144ace-1240-11e5-8365-00ff2cd60ecc', 'workTypeText', '普通白领')">普通白领</a>
                            </li>
                            <li>
                                <a href="javascript:;" onclick="selectItem('workTypeModal', 'workType', 'ea144d3a-1240-11e5-8365-00ff2cd60ecc', 'workTypeText', '程序猿')">程序猿</a>
                            </li>
                            <li>
                                <a href="javascript:;" onclick="selectItem('workTypeModal', 'workType', '9F902E7F-5B53-4D02-AA96-A4C93775CB40', 'workTypeText', '金融人士')">金融人士</a>
                            </li>
                            <li>
                                <a href="javascript:;" onclick="selectItem('workTypeModal', 'workType', 'ea144d3a-1240-11e5-8365-00ff2cd66ecc', 'workTypeText', '公务员')">公务员</a>
                            </li>
                            <li>
                                <a href="javascript:;" onclick="selectItem('workTypeModal', 'workType', '9F902E7F-5B53-4D02-AA96-A4C93775CB36', 'workTypeText', '学生')">学生</a>
                            </li>
                            <li>
                                <a href="javascript:;" onclick="selectItem('workTypeModal', 'workType', 'ea144ace-1240-11e5-8365-00ff2cd60e20', 'workTypeText', '自由职业者')">自由职业者</a>
                            </li>
                            <li>
                                <a href="javascript:;" onclick="selectItem('workTypeModal', 'workType', '9F902E7F-5B53-4D02-AA96-A4C93775CB46', 'workTypeText', '其它')">其它</a>
                            </li>
                        </ul>
                     </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 健身需求 -->
    <div class="modal custom-modal fade" id="fitGoalModal">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <div class="sickness">
                        <div class="flex">
                            <div class="sickness-list col1">
                                <label>
                                    <input type="checkbox" name="fitGoal" data-value="减肥" value="2D8EA7EF-6F83-4CF1-A311-C32FEC521EB4" >
                                    <div>减肥</div>
                                </label>
                                <label>
                                    <input type="checkbox" name="fitGoal" data-value="增肌" value="98C026D1-C074-433D-ADD6-75D87B71923C" >
                                    <div>增肌</div>
                                </label>
                                <label>
                                    <input type="checkbox" name="fitGoal" data-value="塑形" value="33ED1231-980E-4BE8-808D-59A637687346" >
                                    <div>塑形</div>
                                </label>
                                <label>
                                    <input type="checkbox" name="fitGoal" data-value="康复" value="FEF6950D-1A97-4768-9A71-7CDFAAD391D7" >
                                    <div>康复</div>
                                </label>
                                <label>
                                    <input type="checkbox" name="fitGoal" data-value="体能" value="2EE5B7B7-6B14-4362-A1CA-5A4625855BB8" >
                                    <div>体能</div>
                                </label>
                                <label>
                                    <input type="checkbox" name="fitGoal" data-value="孕前锻炼" value="D83B4ADE-7EFA-4A46-9275-C9C012E6A9A3" >
                                    <div>孕前锻炼</div>
                                </label>
                                <label>
                                    <input type="checkbox" name="fitGoal" data-value="产后恢复" value="7228CA85-E9B0-4173-83B3-35A702EB2F17" >
                                    <div>产后恢复</div>
                                </label>
                                <label>
                                    <input type="checkbox" name="fitGoal" data-value="体态调整" value="06ECC354-5B3C-4170-BE97-46AE87DE06AF" >
                                    <div>体态调整</div>
                                </label>
                                <label>
                                    <input type="checkbox" name="fitGoal" data-value="其他" value="CAF373A5-E49A-4FBB-BCFF-5441FB55D78A" >
                                    <div>其他</div>
                                </label>
                                <label class="justify_fix"></label>
                                <label class="justify_fix"></label>
                                <label class="justify_fix"></label>
                            </div>
                        </div>
                        <button id="fitGoalButton">完成</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="<c:url value='/includes/jquery-1.10.2.min.js' /> "></script>
    <script src="<c:url value='/includes/lib.min.js'/> " type="text/javascript"></script>
    <script src="<c:url value='/includes/mobiscroll.js?ver=1'/> " type="text/javascript"></script>
    <script src="<c:url value='/includes/mobiscroll.config.js?ver=1'/> " type="text/javascript"></script>

</body>
</html>
