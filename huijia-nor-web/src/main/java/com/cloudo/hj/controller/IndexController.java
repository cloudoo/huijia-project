package com.cloudo.hj.controller;

import com.cloudo.hj.domain.TraineeInfo;
import com.cloudo.hj.service.ITraineeInfoService;
import com.cloudo.hj.util.WeiXinUtil;
import com.cloudo.hj.util.WxRequestService;
import com.cloudo.hj.vo.WxTokenInfo;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;


@Controller
public class IndexController {

	@Autowired
	private WxRequestService wxRequestService;

	@Autowired
	private ITraineeInfoService traineeInfoService;

	@RequestMapping("/")
	public String index(Model model, HttpServletRequest request) {

		return "redirect:/index.hj";
	}
	
	@RequestMapping("index.hj")
	public String mainIndex(Model model, HttpServletRequest request){

		String wxCode = request.getParameter(WeiXinUtil.CODE);

		if(StringUtils.isNotBlank(wxCode)){
			String openId = wxRequestService.fetchOpenId(wxCode);
 			if(StringUtils.isNotBlank(openId)){
				//检查是否有绑定这个微信

				TraineeInfo traineeInfo = traineeInfoService.findByWxId(openId);
				if(traineeInfo==null){

					return "redirect:/traineer/info.hj?wxid="+openId;
				}
			}
        }
		return "index";
	
	}


	@RequestMapping("MP_verify_8EMKJBZ8nZaiCLG3.txt")
	@ResponseBody
	public String mainIndex(HttpServletRequest request){

		return "8EMKJBZ8nZaiCLG3";

	}

}
