package com.cloudo.hj.test;

import com.cloudo.hj.dao.CourseInfoDao;
import com.cloudo.hj.dao.ReservationInfoDao;
import com.cloudo.hj.domain.CourseInfo;
import com.cloudo.hj.domain.ReservationInfo;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.sql.Timestamp;
import java.util.List;

/**
 * Created by cloudoo on 2017/5/25.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath*:/META-INF/spring/applicationContext-*.xml"
})
public class ReservationInfoDaoTest {

    @Resource
    private ReservationInfoDao reservationInfoDao;

    @Test
    public void testInsert(){

        ReservationInfo reservationInfo = new  ReservationInfo();

        reservationInfo.setTraineeId(1l);
        reservationInfo.setCourseId(26l);
        reservationInfo.setCoacherId(2l);
        reservationInfo.setShopName("测试店");
        reservationInfo.setType("SK");

            java.util.Date date = new java.util.Date();
        Timestamp timestamp = new Timestamp(date.getTime());

        reservationInfo.setReservaTm(timestamp);


        int i = reservationInfoDao.save(reservationInfo);

        Assert.assertEquals(i,1);

    }

    @Test
    public void testUpdate(){
        ReservationInfo reservationInfo = new  ReservationInfo();
        reservationInfo.setId(1l);
        reservationInfo.setType("TK");

        int re = reservationInfoDao.update(reservationInfo);

        Assert.assertEquals(1,re);
    }

    @Test
    public void testQuery(){
        List<ReservationInfo> courseInfoList = reservationInfoDao.findAll();

        Assert.assertNotNull(courseInfoList);


    }

}
