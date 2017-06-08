package com.cloudo.hj.dao;

import com.cloudo.hj.domain.ReservationInfo;
import com.cloudo.hj.domain.TraineeInfo;
import com.cloudo.hj.param.TraineerParam;
import org.springframework.stereotype.Repository;

/**
 * Created by cloudpj on 17/6/4.
 */
@Repository(value = "reservationInfoDao")
public interface ReservationInfoDao extends BaseDao<ReservationInfo,ReservationInfo>{

}
