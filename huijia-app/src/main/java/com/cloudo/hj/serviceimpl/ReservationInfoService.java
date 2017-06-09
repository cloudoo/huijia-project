package com.cloudo.hj.serviceimpl;

import com.cloudo.hj.dao.BaseDao;
import com.cloudo.hj.dao.ReservationInfoDao;
import com.cloudo.hj.domain.ReservationInfo;
import com.cloudo.hj.service.AbstractBaseService;
import com.cloudo.hj.service.IReservationInfoService;
import org.springframework.stereotype.Service;

/**
 * Created by cloudoo on 2017/6/9.
 */
@Service(value="reservationInfoService")
public class ReservationInfoService extends AbstractBaseService<ReservationInfo,ReservationInfo> implements IReservationInfoService{

    private ReservationInfoDao baseDao;
    @Override
    public ReservationInfoDao getBaseDao() {
        return baseDao;
    }

    public void setBaseDao(ReservationInfoDao baseDao){
        this.baseDao = baseDao;
    }

}
