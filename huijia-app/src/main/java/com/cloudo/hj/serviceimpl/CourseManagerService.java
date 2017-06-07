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
           String we = String.valueOf(week);
           if(weeks.indexOf(we)>-1){
               datas.add(new Date(strCal.getTimeInMillis()));
           }

            strCal.add(Calendar.DAY_OF_MONTH,1);
        }

        return datas;
    }

    public static void main(String[] args) {
        CourseManagerService courseManagerService = new CourseManagerService();
        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.YEAR,2017);
        calendar.set(Calendar.MONDAY,6);
        calendar.set(Calendar.DAY_OF_MONTH,6);
        Date strdate = new Date(calendar.getTimeInMillis());

        calendar.set(Calendar.YEAR,2017);
        calendar.set(Calendar.MONDAY,7);
        calendar.set(Calendar.DAY_OF_MONTH,11);
        Date endDate = new Date(calendar.getTimeInMillis());

        List<Date> list = courseManagerService.genDateByWeeks(strdate,endDate,new String("2,4,5"));

        for(Date date:list){
           System.out.println(date.toString());
        }
    }
}
