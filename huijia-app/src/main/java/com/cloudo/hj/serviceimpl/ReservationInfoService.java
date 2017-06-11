package com.cloudo.hj.serviceimpl;

import com.cloudo.hj.dao.BaseDao;
import com.cloudo.hj.dao.ReservationInfoDao;
import com.cloudo.hj.domain.ReservationInfo;
import com.cloudo.hj.param.ReservationParam;
import com.cloudo.hj.service.AbstractBaseService;
import com.cloudo.hj.service.IReservationInfoService;
import com.cloudo.hj.vo.ReservationVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by cloudoo on 2017/6/9.
 */
@Service(value="reservationInfoService")
public class ReservationInfoService extends AbstractBaseService<ReservationInfo,ReservationParam> implements IReservationInfoService{

    @Autowired
    private ReservationInfoDao baseDao;
    @Override
    public ReservationInfoDao getBaseDao() {
        return baseDao;
    }

    public void setBaseDao(ReservationInfoDao baseDao){
        this.baseDao = baseDao;
    }

    @Override
    public List<ReservationVo> findSimple(ReservationParam param) {

        return baseDao.findSimple(param);
    }
}
