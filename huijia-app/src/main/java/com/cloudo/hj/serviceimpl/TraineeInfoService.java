package com.cloudo.hj.serviceimpl;

import com.cloudo.hj.dao.TraineeInfoDao;
import com.cloudo.hj.domain.TraineeInfo;
import com.cloudo.hj.service.AbstractBaseService;
import com.cloudo.hj.service.ITraineeInfoService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by cloudpj on 17/6/4.
 */
public class TraineeInfoService extends AbstractBaseService<TraineeInfo> implements ITraineeInfoService {
    @Autowired
    private TraineeInfoDao baseDao;
    @Override
    public TraineeInfoDao getBaseDao() {
        return this.baseDao;
    }

    public void setBaseDao(TraineeInfoDao baseDao){
        this.baseDao = baseDao;
    }
}
