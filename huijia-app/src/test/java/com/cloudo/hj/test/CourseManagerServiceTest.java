package com.cloudo.hj.test;

import com.cloudo.hj.domain.CoacherInfo;
import com.cloudo.hj.service.ICoacherInfoService;
import com.cloudo.hj.service.ICourseManagerService;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

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
    public void TestCrud(){

        courseManagerService.makePriCourseSch(null);

    }
}
