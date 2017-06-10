package com.cloudo.hj.serviceimpl;

import com.cloudo.hj.dao.BaseDao;
import com.cloudo.hj.dao.PriCourseSchInfoDao;
import com.cloudo.hj.domain.PriCourseDetail;
import com.cloudo.hj.domain.PriCourseSchInfo;
import com.cloudo.hj.param.CourseParam;
import com.cloudo.hj.service.AbstractBaseService;
import com.cloudo.hj.service.IPriCourseDetailService;
import com.cloudo.hj.service.IPriCourseSchInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by cloudpj on 17/6/10.
 */
@Service(value="priCourseSchInfoService")
public class PriCourseSchInfoService  extends AbstractBaseService<PriCourseSchInfo,CourseParam> implements IPriCourseSchInfoService {

    @Autowired
    private PriCourseSchInfoDao baseDao;

    @Override
    public PriCourseSchInfoDao getBaseDao() {
        return this.baseDao;
    }

    public void setBaseDao(PriCourseSchInfoDao baseDao){
        this.baseDao = baseDao;
    }
}
