package com.cloudo.hj.admin.controller;

import com.cloudo.hj.service.ICoacherInfoService;
import com.cloudo.hj.service.ICourseInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;


@Controller
@RequestMapping("/course")
public class CourseController {

    private final Logger logger = LoggerFactory.getLogger(getClass());

    @Autowired
    private ICourseInfoService courseInfoService;

    @RequestMapping("/list.hj")
    public String list(Model model, HttpServletRequest request) {


        return "course";
    }
}
