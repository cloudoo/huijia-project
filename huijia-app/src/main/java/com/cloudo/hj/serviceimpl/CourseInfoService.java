package com.cloudo.hj.serviceimpl;

import com.cloudo.hj.dao.BaseDao;
import com.cloudo.hj.dao.CourseInfoDao;
import com.cloudo.hj.domain.CourseInfo;
import com.cloudo.hj.service.AbstractBaseService;
import com.cloudo.hj.service.ICourseInfoService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by cloudoo on 2017/5/31.
 */
public class CourseInfoService extends AbstractBaseService<CourseInfo> implements ICourseInfoService {

    @Autowired
    private CourseInfoDao baseDao;
    public void setBaseDao(CourseInfoDao baseDao){
        this.baseDao = baseDao;
    }
    @Override
    public CourseInfoDao getBaseDao() {
        return baseDao;
    }



}
