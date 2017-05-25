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
        coacherInfo.setAccount("test");
        coacherInfo.setName("风动随心");
        coacherInfo.setCellphone("13540808888");
        coacherInfo.setShopInfo("温建宝 健身 南山店");
        coacherInfo.setGender(0);
        coacherInfo.setType(0);
        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.YEAR,1990);
        calendar.set(Calendar.MONDAY,3);
        calendar.set(Calendar.DAY_OF_MONTH,15);
        Date date = new Date(calendar.getTimeInMillis());

        coacherInfo.setBrithday(date);
        coacherInfo.setTags("帅哥,肌肉,测试");
        coacherInfo.setCertification("高级按摩师");
        coacherInfo.setIntroducs("◇ 2013年4月参加初中高瑜伽教练资格培训 ◇ 2015年10月参加OM国际瑜伽联盟空中瑜伽培训 ◇ 2016年1月通过悠季瑜伽（广州）TTC哈他瑜伽250小时基础教师培训 ◇ 2016年2月-3月学习悠季瑜伽（广州）哈他瑜伽初级，哈他瑜伽一级，高温瑜伽，髋与肩的打开，阿斯汤加瑜伽等课程 ◇ 2016年7月-8月学习悠季瑜伽（广州）女性瑜伽，哈他瑜伽核心，扭转的智慧，克里亚瑜伽与冥想，瑜伽休息术，太阳致敬式瑜伽等课程 ◇ 2016年8月-9月通过悠季瑜伽（广州）ITTC哈他瑜伽100小时中级教师培训 ");

        int i = coacherInfoDao.save(coacherInfo);

        Assert.assertEquals(i,1);

    }

    @Test
    public void testUpdate(){
        CoacherInfo coacherInfo = new CoacherInfo();
        coacherInfo.setId(1l);
        coacherInfo.setTechage(12);
        coacherInfo.setOrder(2);
        int i = coacherInfoDao.update(coacherInfo);

        Assert.assertEquals(i,1);

    }

}
