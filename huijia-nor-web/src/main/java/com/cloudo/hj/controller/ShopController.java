package com.cloudo.hj.controller;

import com.cloudo.hj.domain.TraineeInfo;
import com.cloudo.hj.util.HjWebUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by cloudoo on 2017/6/14.
 */

@Controller
@RequestMapping("/shop")
public class ShopController {

    @RequestMapping(value = "/getinfohtml.aj",method = RequestMethod.POST)
    public String listInfo(Model model, HttpServletRequest request) {


        return "shopinfo";
    }
}
