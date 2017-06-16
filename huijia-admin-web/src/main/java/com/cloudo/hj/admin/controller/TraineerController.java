package com.cloudo.hj.admin.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;


@RequestMapping("/traineer")
public class TraineerController {
    private final Logger logger = LoggerFactory.getLogger(getClass());



    @RequestMapping("/list.hj")
    public String list(Model model, HttpServletRequest request) {


        return "traineer";
    }



}
