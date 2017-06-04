package com.cloudo.hj.serviceimpl;

import com.cloudo.hj.dao.CourseInfoDao;
import com.cloudo.hj.dao.PriCourseDetailDao;
import com.cloudo.hj.dao.PriCourseSchInfoDao;
import com.cloudo.hj.domain.CoacherInfo;
import com.cloudo.hj.domain.PriCourseDetail;
import com.cloudo.hj.domain.PriCourseSchInfo;
import com.cloudo.hj.service.ICoacherInfoService;
import com.cloudo.hj.service.ICourseManagerService;
import com.cloudo.hj.service.IPriCourseSchInfoService;
import org.apache.commons.lang.time.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/**
 * Created by cloudpj on 17/6/4.
 */
@Repository(value = "courseManagerService")
public class CourseManagerService implements ICourseManagerService {

    @Autowired
    private PriCourseSchInfoDao priCourseSchInfoDao;

    @Autowired
    private PriCourseDetailDao priCourseDetailDao;



    @Override
    public boolean makePriCourseSch(PriCourseSchInfo priCourseSchInfo) {

        int i = priCourseSchInfoDao.save(priCourseSchInfo);
        if(i>0){

        }

        return false;
    }

    public List<PriCourseDetail> genCourseDetail(PriCourseSchInfo priCourseSchInfo){
        List<PriCourseDetail> details = new ArrayList<PriCourseDetail>();

        Date startDt = new Date(priCourseSchInfo.getSchStartDt().getTime());

        for(; startDt.before(priCourseSchInfo.getSchEndDt()); ){

               PriCourseDetail courseDetail = new PriCourseDetail();
               courseDetail.setSchCourId(priCourseSchInfo.getId());
               courseDetail.setCourseDate(startDt);
               courseDetail.setCardsType(priCourseSchInfo.getCardsType());
               courseDetail.setCoacherId(priCourseSchInfo.getCoacherId());
               courseDetail.setShopName(priCourseSchInfo.getShopName());
               courseDetail.setStartTm(priCourseSchInfo.getStartTm());
               courseDetail.setEndTm(priCourseSchInfo.getEndTm());
               courseDetail.setSize(priCourseSchInfo.getSize());


               details.add(courseDetail);
        }

        return details;
    }

    public List<Date> genDateByWeeks(Date strDt,Date endDt,String weeks){
        List<Date> datas = new ArrayList<Date>();
        Calendar strCal = Calendar.getInstance();
        strCal.setTimeInMillis(strDt.getTime());

        Calendar endCal = Calendar.getInstance();
        endCal.setTimeInMillis(endDt.getTime());

        String[] weekGroup = weeks.split(",");

        while(strCal.getTimeInMillis()<endCal.getTimeInMillis()){

           int week = strCal.get(Calendar.DAY_OF_WEEK);
        }

        return datas;
    }
}
