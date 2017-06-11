package com.cloudo.hj.dao;

import com.cloudo.hj.domain.ReservationInfo;
import com.cloudo.hj.domain.TraineeInfo;
import com.cloudo.hj.param.ReservationParam;
import com.cloudo.hj.param.TraineerParam;
import com.cloudo.hj.vo.ReservationVo;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by cloudpj on 17/6/4.
 */
@Repository(value = "reservationInfoDao")
public interface ReservationInfoDao extends BaseDao<ReservationInfo,ReservationParam>{
    public List<ReservationVo> findSimple(ReservationParam param);
}
