package com.cloudo.hj.dao;

import com.cloudo.hj.domain.PriCourseSchInfo;
import com.cloudo.hj.param.CourseParam;
import org.springframework.stereotype.Repository;

/**
 * Created by cloudoo on 2017/5/20.
 */
@Repository(value = "priCourseSchInfoDao")
public interface PriCourseSchInfoDao extends BaseDao<PriCourseSchInfo,CourseParam>{



}
