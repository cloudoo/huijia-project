package com.cloudo.hj.controller;

import com.cloudo.hj.domain.PriCourseDetail;
import com.cloudo.hj.param.CourseParam;
import com.cloudo.hj.service.ICourseInfoService;
import com.cloudo.hj.service.IPriCourseDetailService;
import com.cloudo.hj.serviceimpl.CourseInfoService;
import com.cloudo.hj.util.DateUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.sql.Date;
import java.util.List;

@Controller
@RequestMapping("/course")
public class CourseController {

	@Resource(name = "priCourseDetailService")
	private IPriCourseDetailService priCourseDetailService;

	@RequestMapping("/commonlist.hj")
	public String listInfo(Model model, HttpServletRequest request){
		
		
		return "commcourselist";
	
	}
	
	@RequestMapping("/commoncoursedetail.hj")
	public String commonDetail(Model model,HttpServletRequest request){
		return "courseDetail";
	}


	@RequestMapping("/booklist.hj")
	public String book(Model model,HttpServletRequest request){
		String coacherId = request.getParameter("coacherId");
		CourseParam param = new CourseParam();
		param.setCoacherId(Long.parseLong(coacherId));
		param.setCourseDate(DateUtils.getNowDate());

		List<PriCourseDetail> detailList = priCourseDetailService.findByParam(param);

		model.addAttribute("details",detailList);


		return "selectDateTime";
	}

	@RequestMapping("/privatebook.hj")
	public String privatebook(Model model,HttpServletRequest request){

		return "selectCourse";
	}

	@RequestMapping("/mybooks.hj")
	public String mybooks(Model model,HttpServletRequest request){

		return "myCourse";
	}
}
