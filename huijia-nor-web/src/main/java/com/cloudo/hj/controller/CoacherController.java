package com.cloudo.hj.controller;

import com.cloudo.hj.domain.CoacherInfo;
import com.cloudo.hj.service.ICoacherInfoService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/coacher")
public class CoacherController {

	@Autowired
	private ICoacherInfoService coacherInfoService;

	@RequestMapping("/list.hj")
	public String listInfo(Model model, HttpServletRequest request){

		List<CoacherInfo> coacherInfoList = coacherInfoService.findAll();

        model.addAttribute("coachers",coacherInfoList);

		return "coachlist";
	
	}
}
