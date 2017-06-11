package com.cloudo.hj.controller;

import com.cloudo.hj.domain.CoacherInfo;
import com.cloudo.hj.domain.PriCourseDetail;
import com.cloudo.hj.domain.PriCourseSchInfo;
import com.cloudo.hj.domain.ReservationInfo;
import com.cloudo.hj.param.CourseParam;
import com.cloudo.hj.service.ICoacherInfoService;
import com.cloudo.hj.service.IPriCourseDetailService;
import com.cloudo.hj.service.IPriCourseSchInfoService;
import com.cloudo.hj.service.IReservationInfoService;
import com.cloudo.hj.util.HuiJiaUtils;
import com.cloudo.hj.vo.PriCourseVo;
import com.cloudo.hj.vo.ResultMessage;
import org.apache.commons.lang.time.DateUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.sql.Timestamp;
import java.text.ParseException;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/course")
public class CourseController {

    private String[] format = new String[]{"yyyy-MM-ddHH:mm","yyyy-MM-dd HH:mm"};

    @Resource(name="priCourseSchInfoService")
    private IPriCourseSchInfoService priCourseSchInfoService;
	@Resource(name = "priCourseDetailService")
	private IPriCourseDetailService priCourseDetailService;

	@Resource(name="coacherInfoService")
	private ICoacherInfoService coacherInfoService;

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

        //检查是否冲突

        PriCourseDetail priCourseDetail = priCourseDetailService.find(courDetailId);


        try {


            Date strTm = DateUtils.parseDate(selectdate+priCourseDetail.getStartTm(),format);

            Date endTm = DateUtils.parseDate(selectdate+priCourseDetail.getEndTm(),format);

            ReservationInfo reservationInfo = new ReservationInfo();

            reservationInfo.setCourseId(courDetailId);

            reservationInfo.setStartTm(new Timestamp(strTm.getTime()));
            reservationInfo.setEndTm(new Timestamp(endTm.getTime()));

            reservationInfo.setCoacherId(priCourseDetail.getCoacherId());
            reservationInfo.setType(ReservationInfo.PRIVATE_COURSE);

            //FIXME:会员信息没有做
            reservationInfo.setTraineeId(2l);

            reservationInfoService.save(reservationInfo);


        } catch (ParseException e) {
            e.printStackTrace();
        }



        return "bookCourseSuccess";
    }

    public ResultMessage<String> checkBookStatus(String selectdate,String time,String courseId){
            ResultMessage<String> rs = new ResultMessage<String>();


        return  rs;
    }

	@RequestMapping("/mybooks.hj")
	public String mybooks(Model model,HttpServletRequest request){

		return "myCourse";
	}


}
