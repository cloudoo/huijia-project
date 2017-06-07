package com.cloudo.hj.serviceimpl;

import com.cloudo.hj.dao.CourseInfoDao;
import com.cloudo.hj.dao.PriCourseDetailDao;
import com.cloudo.hj.dao.PriCourseSchInfoDao;
import com.cloudo.hj.domain.CoacherInfo;
import com.cloudo.hj.domain.PriCourseDetail;
import com.cloudo.hj.domain.PriCourseSchInfo;
import com.cloudo.hj.param.CourseParam;
import com.cloudo.hj.service.ICoacherInfoService;
import com.cloudo.hj.service.ICourseManagerService;
import com.cloudo.hj.service.IPriCourseSchInfoService;
import org.apache.commons.lang.time.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

/**
 * Created by cloudpj on 17/6/4.
 */
@Service(value = "courseManagerService")
public class CourseManagerService implements ICourseManagerService {

    @Autowired
    private PriCourseSchInfoDao priCourseSchInfoDao;

    @Autowired
    private PriCourseDetailDao priCourseDetailDao;


    @Override
    public boolean hasVaildSch(PriCourseSchInfo priCourseSchInfo) {

        CourseParam param = new CourseParam();
        param.setSchFrom(priCourseSchInfo.getSchStartDt());
        param.setSchTo(priCourseSchInfo.getSchEndDt());
        param.setCoacherId(priCourseSchInfo.getCoacherId());
        List<PriCourseSchInfo> schInfos = priCourseSchInfoDao.findByParam(param);
//FIXME:目前只考虑时间上的冲突，即默认只有一个培训教室
        if(schInfos!=null&&schInfos.size()>0){
            for(PriCourseSchInfo schInfo:schInfos){
                if((compareTime(schInfo.getStartTm(),priCourseSchInfo.getStartTm())<=0
                        &&compareTime(schInfo.getEndTm(),priCourseSchInfo.getStartTm())>0)
                      ||
                        (compareTime(schInfo.getStartTm(),priCourseSchInfo.getEndTm())<0
                                &&compareTime(schInfo.getEndTm(),priCourseSchInfo.getEndTm())>=0)
                        ){
                    return false;
                }
            }

        }

        return true;
    }

    @Override
    public boolean makePriCourseSch(PriCourseSchInfo priCourseSchInfo) {

        int i = priCourseSchInfoDao.save(priCourseSchInfo);
        if(i>0){
            List<PriCourseDetail> priCourseDetails = genCourseDetail(priCourseSchInfo);
            int re = priCourseDetailDao.saveList(priCourseDetails);
            return re>0;
        }
        return false;
    }

    @Override
    public List<PriCourseDetail> findCourseDetail(CourseParam param) {


        return null;
    }

    public List<PriCourseDetail> genCourseDetail(PriCourseSchInfo priCourseSchInfo){
        List<PriCourseDetail> details = new ArrayList<PriCourseDetail>();

        Date startDt = new Date(priCourseSchInfo.getSchStartDt().getTime());
        List<Date> detailDate = genDateByWeeks(priCourseSchInfo.getSchStartDt(),
                priCourseSchInfo.getSchEndDt(),priCourseSchInfo.getWeeks());

        for(Date date:detailDate ){

               PriCourseDetail courseDetail = new PriCourseDetail();
               courseDetail.setSchCourId(priCourseSchInfo.getId());
               courseDetail.setCourseDate(date);
               courseDetail.setCardsType(priCourseSchInfo.getCardsType());
               courseDetail.setCoacherId(priCourseSchInfo.getCoacherId());
               courseDetail.setCourseId(priCourseSchInfo.getCourseId());
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

    public  int compareTime(String aTm,String bTm){

        String[] aTms = aTm.split(":");
        int ah = Integer.parseInt(aTms[0]);
        int am = Integer.parseInt(aTms[1]);
        String[] bTms = bTm.split(":");
        int bh = Integer.parseInt(bTms[0]);
        int bm = Integer.parseInt(bTms[1]);
        if(ah<bh){
            return  -1;
        }else if(ah>bh){
            return 1;
        }else if(ah==bh){
            if(am==bm){
                return 0;
            }else if(am>bm){
                return 1;
            }else{
                return -1;
            }
        }
        return 0;
    }

    public static void main(String[] args) {
        CourseManagerService courseManagerService = new CourseManagerService();
        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.YEAR,2017);
        calendar.set(Calendar.MONTH,5);
        calendar.set(Calendar.DAY_OF_MONTH,6);
        Date strdate = new Date(calendar.getTimeInMillis());

        calendar.set(Calendar.YEAR,2017);
        calendar.set(Calendar.MONTH,6);
        calendar.set(Calendar.DAY_OF_MONTH,11);
        Date endDate = new Date(calendar.getTimeInMillis());

        List<Date> list = courseManagerService.genDateByWeeks(strdate,endDate,new String("2,4,5"));

//        for(Date date:list){
//           System.out.println(date.toString());
//        }

        System.out.println(courseManagerService.compareTime("8:00","9:11"));
        System.out.println(courseManagerService.compareTime("9:10","13:11"));
        System.out.println(courseManagerService.compareTime("13:24","13:11"));
        System.out.println(courseManagerService.compareTime("13:24","13:24"));





    }

}
