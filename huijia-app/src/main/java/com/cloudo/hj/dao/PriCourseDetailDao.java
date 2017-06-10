package com.cloudo.hj.dao;

import com.cloudo.hj.vo.PriCourseVo;
import com.cloudo.hj.domain.PriCourseDetail;
import com.cloudo.hj.param.CourseParam;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by cloudoo on 2017/5/20.
 */
@Repository(value = "priCourseDetailDao")
public interface PriCourseDetailDao extends BaseDao<PriCourseDetail,CourseParam>{


    public int saveList(@Param(value="courList") List<PriCourseDetail> courList);

    public List<PriCourseVo> findSimple(CourseParam param);

}
