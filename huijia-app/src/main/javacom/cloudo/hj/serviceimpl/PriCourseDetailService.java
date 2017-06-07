package com.cloudo.hj.serviceimpl;

import com.cloudo.hj.dao.BaseDao;
import com.cloudo.hj.dao.PriCourseDetailDao;
import com.cloudo.hj.domain.PriCourseDetail;
import com.cloudo.hj.param.CourseParam;
import com.cloudo.hj.service.AbstractBaseService;
import com.cloudo.hj.service.IPriCourseDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by cloudpj on 17/6/7.
 */
@Service(value="priCourseDetailService")
public class PriCourseDetailService extends AbstractBaseService<PriCourseDetail,CourseParam> implements IPriCourseDetailService{

    @Autowired
    private PriCourseDetailDao baseDao;

    @Override
    public PriCourseDetailDao getBaseDao() {
        return this.baseDao;
    }

    public void setBaseDao(PriCourseDetailDao baseDao){
        this.baseDao = baseDao;
    }

}
