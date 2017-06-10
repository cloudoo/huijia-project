package com.cloudo.hj.test;

import com.cloudo.hj.domain.CoacherInfo;
import com.cloudo.hj.domain.PriCourseSchInfo;
import com.cloudo.hj.service.ICoacherInfoService;
import com.cloudo.hj.service.ICourseManagerService;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.sql.Date;
import java.util.Calendar;
import java.util.List;

/**
 * Created by cloudpj on 17/5/29.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath*:/META-INF/spring/applicationContext-*.xml"
})
public class CourseManagerServiceTest {

    @Autowired
    private ICourseManagerService courseManagerService;

    @Test
    public void testQuery(){


        boolean isValid = courseManagerService.hasVaildSch(genPriCourseInfo());

        System.out.print(isValid);
    }
    @Test
    public void TestCrud(){


       boolean res =  courseManagerService.makePriCourseSch(genPriCourseInfo());

       Assert.assertEquals(true,res);

    }

    public PriCourseSchInfo genPriCourseInfo(){

        PriCourseSchInfo priCourseSchInfo = new PriCourseSchInfo();
        priCourseSchInfo.setShopName("海珠区荟佳店");
        priCourseSchInfo.setCoacherId(2l);
        priCourseSchInfo.setCourseId(3l);


        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.YEAR,2017);
        calendar.set(Calendar.MONTH,5);
        calendar.set(Calendar.DAY_OF_MONTH,6);
        Date strdate = new Date(calendar.getTimeInMillis());

        priCourseSchInfo.setSchStartDt(strdate);

        calendar.set(Calendar.YEAR,2017);
        calendar.set(Calendar.MONTH,5);
        calendar.set(Calendar.DAY_OF_MONTH,30);
        Date endDate = new Date(calendar.getTimeInMillis());

        priCourseSchInfo.setSchEndDt(endDate);

        priCourseSchInfo.setStartTm("15:00");
        priCourseSchInfo.setEndTm("23:00");
        priCourseSchInfo.setWeeks("1,2,3,4,5,6");

        return priCourseSchInfo;
    }


}
