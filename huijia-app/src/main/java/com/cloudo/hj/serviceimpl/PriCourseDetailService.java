package com.cloudo.hj.serviceimpl;

import com.cloudo.hj.dao.BaseDao;
import com.cloudo.hj.dao.PriCourseDetailDao;
import com.cloudo.hj.domain.PriCourseDetail;
import com.cloudo.hj.param.CourseParam;
import com.cloudo.hj.service.AbstractBaseService;
import com.cloudo.hj.service.IPriCourseDetailService;
import com.cloudo.hj.util.HuiJiaUtils;
import com.cloudo.hj.util.WeiXinUtil;
import com.cloudo.hj.vo.PriCourseVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by cloudpj on 17/6/7.
 */
@Service(value="priCourseDetailService")
public class PriCourseDetailService extends AbstractBaseService<PriCourseDetail,CourseParam> implements IPriCourseDetailService{

    @Autowired
    private PriCourseDetailDao baseDao;

    @Override
    public PriCourseDetailDao getBaseDao() {
        return this.baseDao;
    }

    public void setBaseDao(PriCourseDetailDao baseDao){
        this.baseDao = baseDao;
    }

    @Override
    public String[] findPriCourseTimeRange(CourseParam param) {


        List<PriCourseDetail> detailList = baseDao.findByParam(param);
        PriCourseDetail tempCourse = detailList.get(0);
        String min = tempCourse.getStartTm();
        String max = tempCourse.getEndTm();
        for(PriCourseDetail courseDetail:detailList){
            if( HuiJiaUtils.compareTime(min,courseDetail.getStartTm())>1){
                    min = courseDetail.getStartTm();
            }
            if(HuiJiaUtils.compareTime(max,courseDetail.getEndTm())<1){
                max = courseDetail.getEndTm();
            }
        }
        String[] mm = new String[]{min,max};
        return mm;
    }

    @Override
    public List<PriCourseVo> findSimple(CourseParam param) {

        //TODO:做一些逻辑判断
        List<PriCourseVo> list = baseDao.findSimple(param);
        List<PriCourseVo> re = new ArrayList<PriCourseVo>();
        for(PriCourseVo priCourseVo:list){
             if(HuiJiaUtils.compareTime(priCourseVo.getStartTm(),param.getTime())<=0 &&
                     HuiJiaUtils.compareTime(priCourseVo.getEndTm(),param.getTime())>=0){
                 re.add(priCourseVo);
             }
        }
        return  re;
    }
}
