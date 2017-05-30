package com.cloudo.hj.dao;

import com.cloudo.hj.domain.CourseInfo;
import org.springframework.stereotype.Repository;

/**
 * Created by cloudpj on 17/5/30.
 */
@Repository(value = "courseInfoDao")
public interface CourseInfoDao extends BaseDao<CourseInfo>{

}
