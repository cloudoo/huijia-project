package com.cloudo.hj.controller;

import com.cloudo.hj.domain.ReservationInfo;
import com.cloudo.hj.domain.TraineeInfo;
import com.cloudo.hj.param.ReservationParam;
import com.cloudo.hj.service.IReservationInfoService;
import com.cloudo.hj.service.ITraineeInfoService;
import com.cloudo.hj.util.HjWebUtils;
import com.cloudo.hj.vo.ReservationVo;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by cloudoo on 2017/5/9.
 */
@Controller
@RequestMapping("/traineer")
public class TraineerController {

    @Resource(name = "reservationInfoService")
    private IReservationInfoService reservationInfoService;

    @Resource(name = "traineeInfoService")
    private ITraineeInfoService traineeInfoService;

    @RequestMapping("/info.hj")
    public String listInfo(Model model, HttpServletRequest request) {

        TraineeInfo traineeInfo = (TraineeInfo) request.getSession().getAttribute(HjWebUtils.TRAINEER_TYPE);
        if (traineeInfo != null) {
            String wxOpenId = request.getParameter("wxid");
            model.addAttribute(HjWebUtils.WX_OPEN_ID_TYPE, wxOpenId);
        } else {
            model.addAttribute(HjWebUtils.TRAINEER_TYPE, traineeInfo);
        }
        return "traineerinfo";
    }

    @RequestMapping("/privatebooks.hj")
    public String privateBooksLists(Model model, HttpServletRequest request) {

        String userId = (String) request.getSession().getAttribute("user_id");
        if (StringUtils.isBlank(userId)) {
            userId = "2";
            request.getSession().setAttribute("user_id", "2");
        }

        ReservationParam param = new ReservationParam();
        param.setTraineeId(Long.parseLong(userId));

        List<ReservationVo> reservationInfos = reservationInfoService.findSimple(param);

        model.addAttribute("reservations", reservationInfos);

        return "myCourse";
    }

    @RequestMapping("/toChangePriCourse.hj")
    public String changePriCourse(Model model, HttpServletRequest request) {

        String revId = request.getParameter("revId");
        ReservationInfo revservationInfo = reservationInfoService.find(Long.parseLong(revId));
        request.getSession().setAttribute(HjWebUtils.CHANGE_REV, revservationInfo);

        return "redirect:/coacher/list.hj";

    }

    @RequestMapping("/commonsbooks.hj")
    public String commonsBooks(Model model, HttpServletRequest request) {

        return "myCourse";
    }

    @RequestMapping("/save.hj")
    public String save(@ModelAttribute TraineeInfo traineeInfo, Model model, HttpServletRequest request) {

        traineeInfoService.save(traineeInfo);

        return "traineerinfo";

    }
}
