package com.cloudo.hj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/course")
public class CourseController {

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
