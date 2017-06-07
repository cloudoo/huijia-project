package com.cloudo.hj.service;

import com.cloudo.hj.domain.PriCourseDetail;
import com.cloudo.hj.domain.PriCourseSchInfo;
import com.cloudo.hj.param.CourseParam;

import java.util.List;

/**
 * Created by cloudpj on 17/6/4.
 */
public interface ICourseManagerService {

    public boolean hasVaildSch(PriCourseSchInfo priCourseSchInfo);

    public boolean makePriCourseSch(PriCourseSchInfo priCourseSchInfo);

    public List<PriCourseDetail> findCourseDetail(CourseParam param);

}
