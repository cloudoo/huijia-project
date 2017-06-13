package com.cloudo.hj.controller;

import com.cloudo.hj.domain.TraineeInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by cloudoo on 2017/5/9.
 */
@Controller
@RequestMapping("/traineer")
public class TraineerController {

    @RequestMapping("/info.hj")
    public String listInfo(Model model, HttpServletRequest request){

        String wxOpenId = request.getParameter("wxid");
        model.addAttribute("wxOpenId",wxOpenId);

        return "traineerinfo";

    }

    @RequestMapping("/save.hj")
    public String save(@ModelAttribute TraineeInfo traineeInfo, Model model, HttpServletRequest request){




        return "traineerinfo";

    }
}
