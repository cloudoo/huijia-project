package com.cloudo.hj.serviceimpl;

import com.cloudo.hj.dao.TraineeInfoDao;
import com.cloudo.hj.domain.TraineeInfo;
import com.cloudo.hj.param.TraineerParam;
import com.cloudo.hj.service.AbstractBaseService;
import com.cloudo.hj.service.ITraineeInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by cloudpj on 17/6/4.
 */
@Service(value = "traineeInfoService")
public class TraineeInfoService extends AbstractBaseService<TraineeInfo,TraineerParam> implements ITraineeInfoService {
    @Autowired
    private TraineeInfoDao baseDao;
    @Override
    public TraineeInfoDao getBaseDao() {
        return this.baseDao;
    }

    public void setBaseDao(TraineeInfoDao baseDao){
        this.baseDao = baseDao;
    }

    @Override
    public TraineeInfo findByWxId(String wxOpenId) {
        TraineerParam param = new TraineerParam();
        param.setWxOpenId(wxOpenId);
        List<TraineeInfo> list = baseDao.findByParam(param);
        if(list!=null&&list.size()==1){
            return list.get(0);
        }else
        return null;
    }
}
