package com.cloudo.hj.param;

import com.cloudo.hj.domain.CoacherInfo;
import com.cloudo.hj.domain.CourseInfo;
import com.cloudo.hj.domain.ShopInfo;

import java.sql.Date;

/**
 * Created by cloudpj on 17/6/7.
 */
public class CourseParam {
    private Long id;
    private String shopName;

    private Long coacherId;
    private String coacherName;

    private Long courseId;
    private String courseName;

    private int size;//可预约的人数
    private Date courseDate;//课程时间
    private String time;//时刻
    private Date schFrom;
    private Date schTo;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getShopName() {
        return shopName;
    }

    public void setShopName(String shopName) {
        this.shopName = shopName;
    }


    public Long getCoacherId() {
        return coacherId;
    }

    public void setCoacherId(Long coacherId) {
        this.coacherId = coacherId;
    }

    public String getCoacherName() {
        return coacherName;
    }

    public void setCoacherName(String coacherName) {
        this.coacherName = coacherName;
    }

    public Long getCourseId() {
        return courseId;
    }

    public void setCourseId(Long courseId) {
        this.courseId = courseId;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public Date getCourseDate() {
        return courseDate;
    }

    public void setCourseDate(Date courseDate) {
        this.courseDate = courseDate;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public Date getSchFrom() {
        return schFrom;
    }

    public void setSchFrom(Date schFrom) {
        this.schFrom = schFrom;
    }

    public Date getSchTo() {
        return schTo;
    }

    public void setSchTo(Date schTo) {
        this.schTo = schTo;
    }
}
