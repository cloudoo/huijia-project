package com.cloudo.hj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by cloudoo on 2017/5/9.
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @RequestMapping("/info.hj")
    public String listInfo(Model model, HttpServletRequest request){


        return "userInfo";

    }
}
