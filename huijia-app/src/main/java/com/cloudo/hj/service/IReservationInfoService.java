package com.cloudo.hj.service;

import com.cloudo.hj.domain.PriCourseSchInfo;
import com.cloudo.hj.domain.ReservationInfo;
import com.cloudo.hj.param.CourseParam;
import com.cloudo.hj.param.ReservationParam;
import com.cloudo.hj.vo.ReservationVo;

import java.util.List;

/**
 * Created by cloudoo on 2017/6/9.
 */
public interface IReservationInfoService extends CrudService<ReservationInfo,ReservationParam>{

    public List<ReservationVo> findSimple(ReservationParam param);

}
