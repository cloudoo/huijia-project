package com.cloudo.hj.serviceimpl;

import com.cloudo.hj.dao.BaseDao;
import com.cloudo.hj.dao.CoacherInfoDao;
import com.cloudo.hj.domain.CoacherInfo;
import com.cloudo.hj.service.AbstractBaseService;
import com.cloudo.hj.service.ICoacherInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by cloudpj on 17/5/29.
 *
 *
 *
 *
 *
 */
@Repository(value = "coacherInfoService")
public class CoacherInfoService extends AbstractBaseService<CoacherInfo> implements ICoacherInfoService {

    /** 子类也可以使用的通用Logger */
    protected final Logger logger = LoggerFactory.getLogger(getClass());

    @Autowired
    private CoacherInfoDao baseDao;

    public void setBaseDao(CoacherInfoDao baseDao) {
        this.baseDao = baseDao;
    }

    @Override
    public CoacherInfoDao getBaseDao() {
        return baseDao;
    }


    @Override
    public List<CoacherInfo> findSimple(CoacherInfo coacherInfo) {

        return baseDao.findSimple(coacherInfo);
    }

    @Override
    public List<CoacherInfo> findCoacherBaseInfo() {


        return null;
    }


}
