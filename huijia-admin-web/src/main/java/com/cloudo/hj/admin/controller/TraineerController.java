package com.cloudo.hj.admin.controller;

import com.cloudo.hj.domain.TraineeInfo;
import com.cloudo.hj.param.TraineerParam;
import com.cloudo.hj.service.ITraineeInfoService;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

    @RequestMapping("/ajquery.hj")
    public List<TraineeInfo> query(String name,String cellphone,Model model, HttpServletRequest request) {

        TraineerParam param = new TraineerParam();
        param.setCellphone(cellphone);
        param.setName(name);

        List<TraineeInfo> traineeInfos = traineeInfoService.findByParam(param);

        return traineeInfos;
    }

    @RequestMapping("/toedit.hj")
    public String toEdit(Model model, HttpServletRequest request) {
        String id = request.getParameter("id");
        if(StringUtils.isNotBlank(id)){
           TraineeInfo traineeInfo =  traineeInfoService.find(Long.parseLong(id));
            model.addAttribute("id",id);
            model.addAttribute("traineeInfo",traineeInfo);
        }

        return "traineerEdit";
    }

    @RequestMapping("/toadd.hj")
    public String toAdd(Model model, HttpServletRequest request) {


        return "traineerAdd";
    }

    @RequestMapping(value="/save.hj",method = RequestMethod.POST)
    public String save(@ModelAttribute TraineeInfo traineeInfo, Model model, HttpServletRequest request, HttpServletResponse response){

        if(traineeInfo.getId()!=null){
            if(traineeInfoService.update(traineeInfo)){
                return "redirect:list.hj";
            }
        }else{
            traineeInfoService.save(traineeInfo);
            if(traineeInfo.getId()!=null){
                return "redirect:list.hj";
            }
        }

        return "500";
    }

    @RequestMapping(value="/test.hj",method = RequestMethod.POST)
    public String test(@ModelAttribute TraineeInfo traineeInfo,Model model, HttpServletRequest request, HttpServletResponse response){



        return "500";
    }

    @RequestMapping("/ajaxlist.aj")
    @ResponseBody
    public List<TraineeInfo> ajaxListAll(){

        List<TraineeInfo> traineeInfos = traineeInfoService.findAll();

        return traineeInfos;
    }



}
