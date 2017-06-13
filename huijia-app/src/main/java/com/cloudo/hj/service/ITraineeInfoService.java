package com.cloudo.hj.service;

import com.cloudo.hj.domain.TraineeInfo;
import com.cloudo.hj.param.TraineerParam;

/**
 * Created by cloudpj on 17/6/4.
 */
public interface ITraineeInfoService extends CrudService<TraineeInfo,TraineerParam>{
    public TraineeInfo findByWxId(String wxOpenId);
}
