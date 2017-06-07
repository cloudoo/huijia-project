package com.cloudo.hj.test;

import com.cloudo.hj.dao.PriCourseDetailDao;
import com.cloudo.hj.dao.PriCourseSchInfoDao;
import com.cloudo.hj.domain.PriCourseDetail;
import com.cloudo.hj.domain.PriCourseSchInfo;
import com.cloudo.hj.param.CourseParam;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/**
 * Created by cloudoo on 2017/5/25.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath*:/META-INF/spring/applicationContext-*.xml"
})
public class PriCourseDetailDaoTest {

    @Resource
    private PriCourseDetailDao priCourseDetailDao;

    @Test
    public void testInsert(){


//        PriCourseDetail priCourseDetai =  genPriCourseDetailObject();
//
//
//        int i = priCourseDetailDao.save(priCourseDetai);
//
//
//        Assert.assertEquals(i,1);


        List<PriCourseDetail> details = new ArrayList<PriCourseDetail>();
        details.add(genPriCourseDetailObject());
        details.add(genPriCourseDetailObject());
        details.add(genPriCourseDetailObject());
        details.add(genPriCourseDetailObject());
        details.add(genPriCourseDetailObject());

       int re = priCourseDetailDao.saveList(details);

        Assert.assertEquals(re,5);


    }

    @Test
    public void testUpdate(){

        PriCourseDetail priCourseDetai = new PriCourseDetail();


        priCourseDetai.setId(5l);
        priCourseDetai.setShopName("sfwefw");


        int i = priCourseDetailDao.update(priCourseDetai);


        Assert.assertEquals(i,1);

    }

    @Test
    public void testQuery(){
        List<PriCourseDetail> coacherInfoList = priCourseDetailDao.findAll();

        Assert.assertNotNull(coacherInfoList);

        CourseParam param = new CourseParam();

        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.YEAR,2017);
        calendar.set(Calendar.MONDAY,5);
        calendar.set(Calendar.DAY_OF_MONTH,14);
        Date strdate = new Date(calendar.getTimeInMillis());


        param.setCoacherId(2l);
        param.setCourseDate(strdate);
        coacherInfoList = priCourseDetailDao.findByParam(param);
        Assert.assertNotNull(coacherInfoList);
    }

    public PriCourseDetail genPriCourseDetailObject(){

        PriCourseDetail priCourseDetai = new PriCourseDetail();
        priCourseDetai.setShopName("测试店");
        priCourseDetai.setSchCourId(5l);
        priCourseDetai.setCoacherId(2l);
        priCourseDetai.setCourseId(2l);


        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.YEAR,2017);
        calendar.set(Calendar.MONDAY,6);
        calendar.set(Calendar.DAY_OF_MONTH,6);
        Date strdate = new Date(calendar.getTimeInMillis());

        priCourseDetai.setCourseDate(strdate);



        priCourseDetai.setStartTm("10:00");
        priCourseDetai.setEndTm("11:00");

        return priCourseDetai;
    }

}
