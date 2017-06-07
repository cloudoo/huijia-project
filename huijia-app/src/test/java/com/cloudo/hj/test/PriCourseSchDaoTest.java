package com.cloudo.hj.test;

import com.cloudo.hj.dao.PriCourseSchInfoDao;
import com.cloudo.hj.domain.PriCourseSchInfo;
import com.cloudo.hj.param.CourseParam;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.sql.Date;
import java.util.Calendar;
import java.util.List;

/**
 * Created by cloudoo on 2017/5/25.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath*:/META-INF/spring/applicationContext-*.xml"
})
public class PriCourseSchDaoTest {

    @Resource
    private PriCourseSchInfoDao priCourseSchInfoDao;

    @Test
    public void testInsert(){


        PriCourseSchInfo priCourseSchInfo = new PriCourseSchInfo();
        priCourseSchInfo.setShopName("海珠区荟佳店");
        priCourseSchInfo.setCoacherId(2l);
        priCourseSchInfo.setCourseId(2l);


        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.YEAR,2017);
        calendar.set(Calendar.MONTH,5);
        calendar.set(Calendar.DAY_OF_MONTH,6);
        Date strdate = new Date(calendar.getTimeInMillis());

        priCourseSchInfo.setSchStartDt(strdate);

        calendar.set(Calendar.YEAR,2017);
        calendar.set(Calendar.MONTH,9);
        calendar.set(Calendar.DAY_OF_MONTH,11);
        Date endDate = new Date(calendar.getTimeInMillis());

        priCourseSchInfo.setSchEndDt(endDate);

        priCourseSchInfo.setStartTm("9:00");
        priCourseSchInfo.setEndTm("11:00");
        priCourseSchInfo.setWeeks("4,5,6");
        int i = priCourseSchInfoDao.save(priCourseSchInfo);

        Assert.assertEquals(i,1);

    }

    @Test
    public void testUpdate(){

        PriCourseSchInfo priCourseSchInfo = new PriCourseSchInfo();


        priCourseSchInfo.setId(5l);
        priCourseSchInfo.setShopName("sfwefw");
        priCourseSchInfo.setWeeks("2,3,5");

        int i = priCourseSchInfoDao.update(priCourseSchInfo);


        Assert.assertEquals(i,1);

    }

    @Test
    public void testQuery(){
        List<PriCourseSchInfo> coacherInfoList = priCourseSchInfoDao.findAll();

        Assert.assertNotNull(coacherInfoList);

        CourseParam param = new CourseParam();
        param.setShopName("测试");
        List<PriCourseSchInfo> list = priCourseSchInfoDao.findByParam(param);

        Assert.assertNotNull(list);

        param = new CourseParam();

        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.YEAR,2017);
        calendar.set(Calendar.MONTH,5);
        calendar.set(Calendar.DAY_OF_MONTH,13);
        Date strdate = new Date(calendar.getTimeInMillis());

        param.setSchFrom(strdate);
        list = priCourseSchInfoDao.findByParam(param);

        Assert.assertNotNull(list);

    }

}
