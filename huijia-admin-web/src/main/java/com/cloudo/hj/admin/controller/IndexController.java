package com.cloudo.hj.admin.controller;

import com.cloudo.hj.domain.TraineeInfo;
import com.cloudo.hj.service.ITraineeInfoService;
import com.cloudo.hj.util.WeiXinUtil;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;


@Controller
public class IndexController {
    private final Logger logger = LoggerFactory.getLogger(getClass());



    @RequestMapping("/")
    public String index(Model model, HttpServletRequest request) {

        return "redirect:/index.hj";
    }

    @RequestMapping("index.hj")
    public String mainIndex(Model model, HttpServletRequest request) {
//        String wxCode = request.getParameter(WeiXinUtil.CODE);
        return "index";

    }


    @RequestMapping("sliderpage.aj")
    @ResponseBody
    public ModelAndView getLeftColumn(HttpServletRequest request, ModelAndView m){

        m.setViewName("sliderpage");

        return m;
    }


    @RequestMapping("MP_verify_8EMKJBZ8nZaiCLG3.txt")
    @ResponseBody
    public String mainIndex(HttpServletRequest request) {
        return "8EMKJBZ8nZaiCLG3";
    }

}
