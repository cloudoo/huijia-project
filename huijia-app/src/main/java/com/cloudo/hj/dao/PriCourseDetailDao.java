package com.cloudo.hj.dao;

import com.cloudo.hj.domain.PriCourseDetail;
import com.cloudo.hj.domain.PriCourseSchInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by cloudoo on 2017/5/20.
 */
@Repository(value = "priCourseDetailDao")
public interface PriCourseDetailDao extends BaseDao<PriCourseDetail>{


    public int saveList(@Param(value="courList") List<PriCourseDetail> courList);


}
