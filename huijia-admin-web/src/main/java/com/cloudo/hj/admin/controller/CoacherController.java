package com.cloudo.hj.admin.controller;

import com.cloudo.hj.domain.CoacherInfo;
import com.cloudo.hj.domain.TraineeInfo;
import com.cloudo.hj.service.ICoacherInfoService;
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

    @RequestMapping("/toedit.hj")
    public String edit(Model model, HttpServletRequest request) {
        String id = request.getParameter("id");

        if(StringUtils.isNotBlank(id)){
            CoacherInfo coacherInfo =  coacherInfoService.find(Long.parseLong(id));
            model.addAttribute("id",id);
            model.addAttribute("coacherInfo",coacherInfo);
        }

        return "coacherEdit";
    }

    @RequestMapping("/toadd.hj")
    public String toAdd(Model model, HttpServletRequest request) {


        return "coacherAdd";
    }

    @RequestMapping(value="/save.hj",method = RequestMethod.POST)
    public String save(@ModelAttribute CoacherInfo coacherInfo, Model model, HttpServletRequest request) {


        if(coacherInfo.getId()!=null){
            if(coacherInfoService.update(coacherInfo)){
                return "redirect:list.hj";
            }
        }else{
            coacherInfoService.save(coacherInfo);
            if(coacherInfo.getId()!=null){
                return "redirect:list.hj";
            }
        }

        return "500";
    }

    @RequestMapping("/ajaxlist.aj")
    @ResponseBody
    public List<CoacherInfo> ajaxListAll(){

        List<CoacherInfo> coacherInfos = coacherInfoService.findAll();

        return coacherInfos;
    }



}
