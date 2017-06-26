package com.cloudo.hj.admin.controller;

import com.cloudo.hj.domain.CoacherInfo;
import com.cloudo.hj.domain.TraineeInfo;
import com.cloudo.hj.service.ICoacherInfoService;
import com.cloudo.hj.service.ITraineeInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/coacher")
public class CoacherController {
    private final Logger logger = LoggerFactory.getLogger(getClass());

    @Autowired
    private ICoacherInfoService coacherInfoService;

    @RequestMapping("/list.hj")
    public String list(Model model, HttpServletRequest request) {


        return "coacher";
    }

    @RequestMapping("/edit.hj")
    public String edit(Model model, HttpServletRequest request) {


        return "coachereidt";
    }

    @RequestMapping("/ajaxlist.aj")
    @ResponseBody
    public List<CoacherInfo> ajaxListAll(){

        List<CoacherInfo> coacherInfos = coacherInfoService.findAll();

        return coacherInfos;
    }



}
