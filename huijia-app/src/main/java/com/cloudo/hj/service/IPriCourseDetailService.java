package com.cloudo.hj.service;

import com.cloudo.hj.domain.PriCourseDetail;
import com.cloudo.hj.param.CourseParam;
import com.cloudo.hj.vo.PriCourseVo;

import java.util.List;

/**
 * Created by cloudpj on 17/6/7.
 */
public interface IPriCourseDetailService extends CrudService<PriCourseDetail,CourseParam>{

    public String[] findPriCourseTimeRange(CourseParam param);
    public List<PriCourseVo> findSimple(CourseParam param);
}
