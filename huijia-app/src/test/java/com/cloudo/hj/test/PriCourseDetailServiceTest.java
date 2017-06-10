package com.cloudo.hj.test;

import com.cloudo.hj.domain.PriCourseSchInfo;
import com.cloudo.hj.param.CourseParam;
import com.cloudo.hj.service.ICourseManagerService;
import com.cloudo.hj.service.IPriCourseDetailService;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.sql.Date;
import java.util.Calendar;

/**
 * Created by cloudpj on 17/5/29.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath*:/META-INF/spring/applicationContext-*.xml"
})
public class PriCourseDetailServiceTest {

    @Autowired
    private IPriCourseDetailService priCourseDetailService;

    @Test
    public void testQuery(){

        CourseParam param = new CourseParam();

        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.YEAR,2017);
        calendar.set(Calendar.MONTH,5);
        calendar.set(Calendar.DAY_OF_MONTH,7);
        Date strdate = new Date(calendar.getTimeInMillis());

        param.setCoacherId(2l);
        param.setCourseDate(strdate);

        String[] isValid = priCourseDetailService.findPriCourseTimeRange(param);

        System.out.print(isValid);
    }
    @Test
    public void TestCrud(){




    }


}
