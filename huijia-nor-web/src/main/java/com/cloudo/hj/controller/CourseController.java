package com.cloudo.hj.controller;

import com.cloudo.hj.domain.PriCourseDetail;
import com.cloudo.hj.domain.PriCourseSchInfo;
import com.cloudo.hj.domain.ReservationInfo;
import com.cloudo.hj.param.CourseParam;
import com.cloudo.hj.service.IPriCourseDetailService;
import com.cloudo.hj.service.IPriCourseSchInfoService;
import com.cloudo.hj.service.IReservationInfoService;
import com.cloudo.hj.util.HuiJiaUtils;
import com.cloudo.hj.vo.PriCourseVo;
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


    @Resource(name="priCourseSchInfoService")
    private IPriCourseSchInfoService priCourseSchInfoService;
	@Resource(name = "priCourseDetailService")
	private IPriCourseDetailService priCourseDetailService;

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

        try {


            Date tempDate = DateUtils.parseDate(selectdate,new String[]{"yyyy-MM-dd"});

            param.setCourseDate(new java.sql.Date(tempDate.getTime()));

            List<PriCourseVo> details = priCourseDetailService.findSimple(param);


            model.addAttribute("details",details);
            model.addAttribute("selectdate",selectdate);
            model.addAttribute("time",time);

        } catch (ParseException e) {
            e.printStackTrace();
        }


//		ReservationInfo reservationInfo = new ReservationInfo();
//		reservationInfo.setCourseId(Long.parseLong(coacherId));
//		reservationInfo.setCoacherId(Long.parseLong(coacherId));
//		reservationInfo.setType(ReservationInfo.PRIVATE_COURSE);
//		 reservationInfoService.save(reservationInfo);


		return "selectCourse";
	}

    @RequestMapping("/bookCourse.hj")
    public String bookCourse(Model model,HttpServletRequest request){

	    CourseParam param = new CourseParam();

        priCourseDetailService.findByParam(param);

        return "myCourse";
    }

	@RequestMapping("/mybooks.hj")
	public String mybooks(Model model,HttpServletRequest request){

		return "myCourse";
	}
}
