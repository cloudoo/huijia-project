package com.cloudo.hj.controller;

import com.cloudo.hj.domain.*;
import com.cloudo.hj.param.CourseParam;
import com.cloudo.hj.param.ReservationParam;
import com.cloudo.hj.service.*;
import com.cloudo.hj.util.HjWebUtils;
import com.cloudo.hj.util.HuiJiaUtils;
import com.cloudo.hj.vo.PriCourseVo;
import com.cloudo.hj.vo.ReservationVo;
import com.cloudo.hj.vo.ResultMessage;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.time.DateUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/course")
public class CourseController {

    private final Logger logger = LoggerFactory.getLogger(getClass());
    private String[] format = new String[]{"yyyy-MM-ddHH:mm","yyyy-MM-dd HH:mm"};

    @Resource(name="priCourseSchInfoService")
    private IPriCourseSchInfoService priCourseSchInfoService;
	@Resource(name = "priCourseDetailService")
	private IPriCourseDetailService priCourseDetailService;

	@Resource(name="coacherInfoService")
	private ICoacherInfoService coacherInfoService;

	@Resource(name="courseInfoService")
	private ICourseInfoService courseInfoService;

	@Resource(name="reservationInfoService")
	private IReservationInfoService reservationInfoService;


	@RequestMapping("/commonlist.hj")
	public String listInfo(Model model, HttpServletRequest request){
		return "commcourselist";
	}
	
	@RequestMapping("/commoncoursedetail.hj")
	public String commonDetail(Model model,HttpServletRequest request){
		return "courseDetail";
	}


	@RequestMapping("/selectbooktime.hj")
	public String book(Model model,HttpServletRequest request){
		String coacherId = request.getParameter("coacherId");
		CourseParam param = new CourseParam();
		param.setCoacherId(Long.parseLong(coacherId));
		param.setCourseDate(HuiJiaUtils.getNowDate());

        List<PriCourseSchInfo> list = priCourseSchInfoService.findByParam(param);

		String[] minMaxTm = priCourseDetailService.findPriCourseTimeRange(param);

        if(minMaxTm!=null){
            List<String> selectTimes = HuiJiaUtils.genTime(minMaxTm[0],minMaxTm[1]);
            model.addAttribute("selectTimes",selectTimes);
            model.addAttribute("coacherId",coacherId);
            return "selectDateTime";
        }else{
            return "error";
        }
	}

	@RequestMapping(value = "/selectcourse.hj",method = RequestMethod.POST)
	public String selectCourse(String coacherId,String selectdate,String time,Model model,HttpServletRequest request){

        CourseParam param = new CourseParam();
        param.setCoacherId(Long.parseLong(coacherId));
        String datetm = selectdate+time;
        CoacherInfo coacherInfo = coacherInfoService.find(Long.parseLong(coacherId));
        try {


            Date tempDate = DateUtils.parseDate(selectdate,new String[]{"yyyy-MM-dd"});

            param.setCourseDate(new java.sql.Date(tempDate.getTime()));
            param.setTime(time);

            List<PriCourseVo> details = priCourseDetailService.findSimple(param);


            model.addAttribute("details",details);
            model.addAttribute("selectdate",selectdate);
            model.addAttribute("time",time);
            model.addAttribute("coacherInfo",coacherInfo);

        } catch (ParseException e) {
            e.printStackTrace();
        }


		return "selectCourse";
	}



    @RequestMapping("/bookCourse.hj")
    public String bookCourse(String selectdate,String time,String courseId,Model model,HttpServletRequest request){

	    Long courDetailId =  Long.parseLong(courseId);

	    //检查是否有卡包信息

        PriCourseDetail priCourseDetail = priCourseDetailService.find(courDetailId);
        CourseInfo courseInfo = courseInfoService.find(priCourseDetail.getCourseId());

        CourseParam param = new CourseParam();
        param.setId(courDetailId);
        List<PriCourseVo> courses = priCourseDetailService.findSimple(param);

        //
        model.addAttribute("selectdate",selectdate);
        model.addAttribute("time",time);
        model.addAttribute("course",courses.get(0));

        try {

            Date strTm = DateUtils.parseDate(selectdate+time,format);

            Date endTm = DateUtils.addMinutes(strTm,courseInfo.getDuration());
            ReservationInfo reservationInfo=null;
            boolean isChangeRes = false;
            if(request.getSession().getAttribute(HjWebUtils.CHANGE_REV)!=null){
                isChangeRes = true;
                reservationInfo = (ReservationInfo) request.getSession().getAttribute(HjWebUtils.CHANGE_REV);
            }else{
                reservationInfo = new ReservationInfo();
            }

            reservationInfo.setCourseId(courDetailId);
            reservationInfo.setShopName("测试店");

            reservationInfo.setStartTm(new Timestamp(strTm.getTime()));
            reservationInfo.setEndTm(new Timestamp(endTm.getTime()));

            reservationInfo.setCoacherId(priCourseDetail.getCoacherId());
            reservationInfo.setType(ReservationInfo.PRIVATE_COURSE);

            java.util.Date date = new java.util.Date();
            Timestamp timestamp = new Timestamp(date.getTime());
            reservationInfo.setReservaTm(timestamp);

            //FIXME:会员信息没有做
            reservationInfo.setTraineeId(2l);

            //TODO:可以优化到service层
            if(isChangeRes){
                reservationInfoService.update(reservationInfo);
                request.getSession().removeAttribute(HjWebUtils.CHANGE_REV);
            }else{
                reservationInfoService.save(reservationInfo);
            }

            if(reservationInfo.getId()!=null&&reservationInfo.getId()>0){

                PriCourseDetail newDetail = new PriCourseDetail();
                newDetail.setId(priCourseDetail.getId());
                newDetail.setCuSize(priCourseDetail.getCuSize()+1);

                    if(!priCourseDetailService.update(newDetail)){
                        logger.error("更新pricourseDetail表失败 ［id="+priCourseDetail.getId()+"],cuSize=["+newDetail.getCuSize()+"],请后台更新");
                        model.addAttribute("status","预定失败！....");
                    }else{
                        model.addAttribute("status","预定成功！");
                    }
            }

        } catch (ParseException e) {
            logger.error("错误："+e.getLocalizedMessage());
        }

        return "bookStatus";
    }
    //检查是否冲突
    @ResponseBody
    @RequestMapping(value = "/checkBook.aj",method = RequestMethod.POST)
    public ResultMessage<String> checkBookStatus(String selectdate,String time,String courseId,HttpServletRequest request){
            ResultMessage<String> rs = new ResultMessage<String>();
        ReservationInfo changeRevInfo = (ReservationInfo)request.getSession().getAttribute("toChangeRevInfo");
         if(changeRevInfo!=null){

             rs.setSuccess(true);

             rs.setResult("预定中.....");

         }else{
             ReservationParam param = new ReservationParam();
             Date bookDate = null;
             try {
                 bookDate = DateUtils.parseDate(selectdate+time,format);
                 param.setCourseDate(new Timestamp(bookDate.getTime()));
                 List<ReservationInfo> infos = reservationInfoService.findByParam(param);
                 if(infos!=null&&infos.size()!=0){
                     rs.setSuccess(false);
                     rs.setResult("预定时间已有课程，请重新选择");
                 }else{

                     rs.setSuccess(true);

                     rs.setResult("预定中.....");
                 }
             } catch (ParseException e) {

                 rs.setSuccess(false);
                 rs.setResult("后台错误，请联系管理员");
                 e.printStackTrace();
             }
         }


        return  rs;
    }

    @RequestMapping("/toCancelPage.hj")
    public String toCancelPage(Model model,HttpServletRequest request){
        String revId = request.getParameter("revId");
        model.addAttribute("revId",revId);

        return "cancelCourse";
    }



}
