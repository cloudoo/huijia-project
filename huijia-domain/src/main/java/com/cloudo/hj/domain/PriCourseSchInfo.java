package com.cloudo.hj.domain;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;

/**
 * Created by cloudoo on 2017/5/20.
 */
public class PriCourseSchInfo implements Serializable {

    private Long id;
    private String shopName;
    private ShopInfo shopInfo;
    private Long coacherId;
    private CoacherInfo coacherInfo;

    private Long courseId;
    private CourseInfo courseInfo;

    private int size;//可预约的人数
    private Date schStartDt;
    private Date schEndDt;
    private String startTm; //开始时刻 9：00
    private String endTm; //结束时刻 00：00
    private String weeks;//每周安排
    private String cardsType;//使用点卡类型
    private String otherType;//其他支付类型
    private Timestamp opTm;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public ShopInfo getShopInfo() {
        return shopInfo;
    }

    public void setShopInfo(ShopInfo shopInfo) {
        this.shopInfo = shopInfo;
    }

    public CoacherInfo getCoacherInfo() {
        return coacherInfo;
    }

    public void setCoacherInfo(CoacherInfo coacherInfo) {
        this.coacherInfo = coacherInfo;
    }

    public CourseInfo getCourseInfo() {
        return courseInfo;
    }

    public void setCourseInfo(CourseInfo courseInfo) {
        this.courseInfo = courseInfo;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public Date getSchStartDt() {
        return schStartDt;
    }

    public void setSchStartDt(Date schStartDt) {
        this.schStartDt = schStartDt;
    }

    public Date getSchEndDt() {
        return schEndDt;
    }

    public void setSchEndDt(Date schEndDt) {
        this.schEndDt = schEndDt;
    }

    public String getStartTm() {
        return startTm;
    }

    public void setStartTm(String startTm) {
        this.startTm = startTm;
    }

    public String getEndTm() {
        return endTm;
    }

    public void setEndTm(String endTm) {
        this.endTm = endTm;
    }

    public String getWeeks() {
        return weeks;
    }

    public void setWeeks(String weeks) {
        this.weeks = weeks;
    }

    public String getCardsType() {
        return cardsType;
    }

    public void setCardsType(String cardsType) {
        this.cardsType = cardsType;
    }

    public String getOtherType() {
        return otherType;
    }

    public void setOtherType(String otherType) {
        this.otherType = otherType;
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

    public Long getCourseId() {
        return courseId;
    }

    public void setCourseId(Long courseId) {
        this.courseId = courseId;
    }

    public Timestamp getOpTm() {
        return opTm;
    }

    public void setOpTm(Timestamp opTm) {
        this.opTm = opTm;
    }
}
