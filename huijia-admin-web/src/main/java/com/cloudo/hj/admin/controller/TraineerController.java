package com.cloudo.hj.admin.controller;

import com.cloudo.hj.domain.TraineeInfo;
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
@RequestMapping("/traineer")
public class TraineerController {
    private final Logger logger = LoggerFactory.getLogger(getClass());

    @Autowired
    private ITraineeInfoService traineeInfoService;

    @RequestMapping("/list.hj")
    public String list(Model model, HttpServletRequest request) {


        return "traineer";
    }

    @RequestMapping("/ajaxlist.aj")
    @ResponseBody
    public List<TraineeInfo> ajaxListAll(){

        List<TraineeInfo> traineeInfos = traineeInfoService.findAll();

        return traineeInfos;
    }



}
