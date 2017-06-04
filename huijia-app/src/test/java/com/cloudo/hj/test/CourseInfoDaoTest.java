package com.cloudo.hj.test;

import com.cloudo.hj.dao.CourseInfoDao;
import com.cloudo.hj.domain.CourseInfo;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by cloudoo on 2017/5/25.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath*:/META-INF/spring/applicationContext-*.xml"
})
public class CourseInfoDaoTest {

    @Resource
    private CourseInfoDao courseInfoDao;

    @Test
    public void testInsert(){
        CourseInfo courseInfo = new CourseInfo();

        courseInfo.setName("公开课程");
        courseInfo.setType(CourseInfo.COM);
        courseInfo.setMin(5);
        courseInfo.setMax(20);
        courseInfo.setDuration(60);
        courseInfo.setNormalCost(20.5f);
        courseInfo.setCostDesc("");
        courseInfo.setCoverDir("/user/test/1.jpg");
        courseInfo.setCourseDesc("公开课程");
        courseInfo.setValid(true);

        int i = courseInfoDao.save(courseInfo);

        Assert.assertEquals(i,1);

    }

    @Test
    public void testUpdate(){
        CourseInfo courseInfo = new CourseInfo();
        courseInfo.setId(1l);
        courseInfo.setName("团课1");
//        courseInfo.setNormalCost(112.23f);
//        courseInfo.setMin(12);
//        courseInfo.setMax(20);
        int i = courseInfoDao.update(courseInfo);

        Assert.assertEquals(i,1);

    }

    @Test
    public void testQuery(){
        List<CourseInfo> courseInfoList = courseInfoDao.findAll();

        Assert.assertNotNull(courseInfoList);




    }

}
