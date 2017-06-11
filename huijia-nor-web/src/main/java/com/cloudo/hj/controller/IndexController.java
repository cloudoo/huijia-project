package com.cloudo.hj.controller;

import com.cloudo.hj.util.WeiXinUtil;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;


@Controller
public class IndexController {

	
	@RequestMapping("/")
	public String index(Model model, HttpServletRequest request) {

		return "redirect:/index.hj";
	}
	
	@RequestMapping("index.hj")
	public String mainIndex(Model model, HttpServletRequest request){

		String wxCode = request.getParameter(WeiXinUtil.CODE);

		if(StringUtils.isNotBlank(wxCode)){
		    String url = WeiXinUtil.createOpenUrl(wxCode);
		    //获取用户openid 的请求链接

        }
		return "index";
	
	}

	public String requestOpenId(String url){



	    return "";
    }

	@RequestMapping("MP_verify_8EMKJBZ8nZaiCLG3.txt")
	@ResponseBody
	public String mainIndex(HttpServletRequest request){

		return "8EMKJBZ8nZaiCLG3";

	}

}
