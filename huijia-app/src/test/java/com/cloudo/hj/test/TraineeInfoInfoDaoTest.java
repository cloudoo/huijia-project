package com.cloudo.hj.test;

import com.cloudo.hj.dao.TraineeInfoDao;
import com.cloudo.hj.domain.TraineeInfo;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by cloudpj on 17/6/4.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath*:/META-INF/spring/applicationContext-*.xml"
})
public class TraineeInfoInfoDaoTest {

    @Resource
    private TraineeInfoDao traineeInfoDao;

    @Test
    public void testInsert(){
        TraineeInfo traineeInfo = new TraineeInfo();

        traineeInfo.setCoacherId(2l);
        traineeInfo.setName("风铃草3");
        traineeInfo.setCellphone("138475874628");
        traineeInfo.setDisType(1);
        traineeInfo.setGender(1);
        traineeInfo.setHeight(160.3f);
        int i = traineeInfoDao.save(traineeInfo);

        Assert.assertEquals(i,1);

    }


    @Test
    public void testFind(){
        List<TraineeInfo> list = traineeInfoDao.findAll();

        Assert.assertNotNull(list);
    }
    @Test
    public void testUpdate(){

         TraineeInfo traineeInfo = traineeInfoDao.find(2l);
        List<TraineeInfo> traineeInfoList = traineeInfoDao.findAll();
          Assert.assertNotNull(traineeInfoList);

        Assert.assertNotNull(traineeInfo);

        TraineeInfo traineeInfo2 = new TraineeInfo();
        traineeInfo2.setName("sfwef");
        traineeInfo2.setCellphone("fwefwef");
//        traineeInfo2.setFitNeeds("fit,swiming");
        traineeInfo2.setId(2l);
//        traineeInfo2.setStatus(2);
//        traineeInfo2.setGender(1);
        traineeInfo2.setWeight(45.6f);
        traineeInfoDao.update(traineeInfo2);
        traineeInfo = traineeInfoDao.find(2l);


        Assert.assertNotNull(traineeInfo);
//        Assert.assertEquals(2l, traineeInfo2.getStatus());
//        Assert.assertEquals(1, traineeInfo2.getGender());
    }
}
