package com.cloudo.hj.test;

import com.cloudo.hj.dao.BaseDao;
import com.cloudo.hj.dao.CoacherInfoDao;
import com.cloudo.hj.domain.CoacherInfo;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.List;

/**
 * Created by cloudoo on 2017/5/25.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath*:/META-INF/spring/applicationContext-*.xml"
})
public class CoachInfoDaoTest {

    @Resource
    private CoacherInfoDao coacherInfoDao;

    @Test
    public void testInsert(){
        CoacherInfo coacherInfo = new CoacherInfo();
        coacherInfo.setAccount("test3");
        coacherInfo.setName("黎明中");
        coacherInfo.setCellphone("13540808889");
        coacherInfo.setShopInfo("世界佛教为哦风景");
        coacherInfo.setGender(0);
        coacherInfo.setType(0);
        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.YEAR,1991);
        calendar.set(Calendar.MONDAY,5);
        calendar.set(Calendar.DAY_OF_MONTH,19);
        Date date = new Date(calendar.getTimeInMillis());

        coacherInfo.setBrithday(date);
        coacherInfo.setTags("帅哥,肌肉,测试");
        coacherInfo.setCertification("高级按摩师");
        coacherInfo.setIntroducs("瑜伽等课程 ◇ 2016年8月-9月通过悠季瑜伽（广州）ITTC哈他瑜伽100小时中级教师培训 ");

        int i = coacherInfoDao.save(coacherInfo);

        Assert.assertEquals(i,1);

    }

    @Test
    public void testUpdate(){
        CoacherInfo coacherInfo = new CoacherInfo();
        coacherInfo.setCellphone("1365737924");
        coacherInfo.setId(1l);
        coacherInfo.setTechage(12);
        coacherInfo.setOrder(2);
        int i = coacherInfoDao.update(coacherInfo);

        Assert.assertEquals(i,1);

    }

    @Test
    public void testQuery(){
        List<CoacherInfo> coacherInfoList = coacherInfoDao.findAll();

        Assert.assertNotNull(coacherInfoList);


        CoacherInfo coacherInfo = new CoacherInfo();
        coacherInfo.setCellphone("135%");

        coacherInfoList = coacherInfoDao.findSimple(coacherInfo);

        Assert.assertNotNull(coacherInfoList);

    }

}
