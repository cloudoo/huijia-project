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
    <link rel="stylesheet" href="includes/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="includes/style.debug.css?v=4241650">
</head>

<body>
    <div id="appendParent"></div>
    <div id="ajaxWaiting"></div>

    <div class="coach-base">
        <div class="coach-img">
            <div class="coach-imgs" id="coachImgs">
                <img src="includes/images/img01.png" alt="" />
            </div>
            <div class="coach-base-info flex">
                <div class="col info ">
                    <div><span class='info-num'>8</span>&nbsp;年</div>
                    教龄
                </div>
                <div class="col info ">
                    <div><span class='info-num'>10000</span>&nbsp;课时</div>
                    累计授课时
                </div>
            </div>
        </div>
        <div class="coach-base-box">
            <div class="coach-base-title">基本信息</div>
            <div class="coach-base-li flex">
                <div class="col">姓名：Owen </div>
                <div class="col">性别：男 </div>
            </div>
            <div class="coach-base-li flex">擅长专业：
                <div class="col coach-base-con">
                    <span >体态调整</span>
                    <span >减肥</span>
                    <span >塑形</span>
                    <span >产后恢复</span>
                    <span >孕前锻炼</span>
                    <span >康复</span>
                </div>
            </div>
        
            <div class="coach-base-li flex">专业认证：
                <div class="col coach-base-con">
                    培训历程：《北京瑜伽协会瑜伽教练》《亚洲体适能私人教练认证》《国家运动康复健身教练认证》《中国左右普拉提功能训练师》《李晓钟精准康复理疗私教密集培训认证》《急塑减脂教练认证》《瑜伽经营管理培训》               
                </div>
            </div>
        
            <div class="coach-base-li flex">毕业院校：
                <div class="col coach-base-con">衡水体育学院</div>
            </div>
        
            <div class="coach-base-li flex">教练标签：
                <div class="col coach-base-con">                    
                    <div class="coach-label">阳光</div>
                    <div class="coach-label">80后</div>
                    <div class="coach-label">幽默</div>
                </div>
            </div>
        </div>
        <div class="coach-base-box coach-base-my">
            <div class="coach-base-title">我的经历</div>
            <div class="coach-base-my-box" >
                <p>一、教练：廖章华</p><p>授课类型：一对一专属私教定制课程</p>
                <p>身高：170cm</p>
                <p>体重：60Kg</p>
                <p>10<span .="font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;">年的教育培训从业经历</span></p>
                <p><span .="font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;">二、职业经历：</span></p>
                <p>【2008<span .="font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;">年体育大学优秀毕业、】</span></p>
                <p>【2009<span .="font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;">年北京进行瑜伽教练培训、】</span></p>
                <p>【2009<span .="font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;">年广州力美健健身俱乐部私人教练、】</span></p>
                <p>【2012<span .="font-family: 微软雅黑, sans-serif;">年广州梵心瑜伽馆馆主、】</span></p>
                <p>【2013<span .="font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;">年广州周瑜伽馆教学总监、】</span></p>
                <p>【2015<span .="font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;">年广州正位健健康管理有限公司</span>CEO、】</p>
                <p>三、<span .="font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;">培训历程：</span></p>
                <p><span .="font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;">《北京瑜伽协会瑜伽教练》</span></p>
                <p><span .="font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;">《亚洲体适能私人教练认证》</span></p>
                <p><span .="font-family: &amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;">《国家运动康复健身教练认证》</span></p>
                <p><span .="font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;">《中国左右普拉提功能训练师》</span></p>
                <p><span .="font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;"><span .="font-family: 微软雅黑, sans-serif;">《加拿大斯多特普拉提塑身机初中级培训》</span></span></p>
                <p><span .="font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;">《李晓钟精准康复理疗私教密集培训认证》</span></p>
                <p><span .="font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;">《急塑减脂教练认证》</span></p>
                <p><span .="font-family:&amp;#39;微软雅黑&amp;#39;,&amp;#39;sans-serif&amp;#39;">《瑜伽经营管理培训》</span></p>
                <p>四、从业格言：</p>
                <p>脊柱的柔软度、是你身体的年轻度、找到您身体最合适的练习方式、筋长一寸，命长10年。</p>
                <p></p>       
            </div>
        </div>
    </div>
    <button class="date-coach" id="booking_coach">预约课程</button>

<script src="includes/jquery-1.10.2.min.js"></script>
<script src="includes/swiper.js"></script>
<script type="text/javascript">
    $(function(){
        $('#coachImgs').swiper();
    });
</script>
</body>
</html>
