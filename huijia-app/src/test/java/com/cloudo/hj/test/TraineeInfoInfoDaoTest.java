package com.cloudo.hj.test;

import com.cloudo.hj.dao.TraineeInfoDao;
import com.cloudo.hj.domain.TraineeInfo;
import com.cloudo.hj.param.TraineerParam;
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

        traineeInfo.setCoacherId(3l);
        traineeInfo.setWxOpenId("sdfwer123434dsfwef");
        traineeInfo.setName("风铃草4");
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
        String wx = "sfewr23423fwdfwef";
        TraineerParam param = new TraineerParam();
        param.setWxOpenId(wx);
        List<TraineeInfo> infos = traineeInfoDao.findByParam(param);
        Assert.assertEquals(1,infos.size());
    }
    @Test
    public void testUpdate(){

         TraineeInfo traineeInfo = traineeInfoDao.find(5l);
        List<TraineeInfo> traineeInfoList = traineeInfoDao.findAll();
          Assert.assertNotNull(traineeInfoList);

        Assert.assertNotNull(traineeInfo);

        TraineeInfo traineeInfo2 = new TraineeInfo();
        traineeInfo2.setId(5l);
        traineeInfo2.setWxOpenId("sfewr23423fwdfwef");
//        traineeInfo2.setName("温教授");
        traineeInfo2.setCellphone("13545458956");
//        traineeInfo2.setFitNeeds("fit,swiming");

//        traineeInfo2.setStatus(2);
//        traineeInfo2.setGender(1);
//        traineeInfo2.setWeight(65.6f);
        traineeInfoDao.update(traineeInfo2);
        traineeInfo = traineeInfoDao.find(5l);


        Assert.assertNotNull(traineeInfo);
//        Assert.assertEquals(2l, traineeInfo2.getStatus());
//        Assert.assertEquals(1, traineeInfo2.getGender());
    }
}
