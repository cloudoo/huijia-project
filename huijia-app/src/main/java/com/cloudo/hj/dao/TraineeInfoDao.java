package com.cloudo.hj.dao;

import com.cloudo.hj.domain.TraineeInfo;
import com.cloudo.hj.param.TraineerParam;
import org.springframework.stereotype.Repository;

/**
 * Created by cloudpj on 17/6/4.
 */
@Repository(value = "traineeInfoDao")
public interface TraineeInfoDao extends BaseDao<TraineeInfo,TraineerParam>{

}
