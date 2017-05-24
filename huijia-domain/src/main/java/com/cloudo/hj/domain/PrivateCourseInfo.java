package com.cloudo.hj.domain;

import java.io.Serializable;
import java.sql.Date;

/**
 * Created by cloudoo on 2017/5/20.
 */
public class PrivateCourseInfo  implements Serializable {

    private Long id;
    private ShopInfo shopInfo;
    private CoacherInfo coacherInfo;
    private CourseInfo courseInfo;
    private int size;//可预约的人数
    private Date startDt;
    private Date endDt;
    private String startTm; //开始时刻 9：00
    private String endTm; //结束时刻 00：00
    private String weeks;//每周安排
    private String cards;//使用点卡类型
    private String otherType;//其他支付类型

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

    public Date getStartDt() {
        return startDt;
    }

    public void setStartDt(Date startDt) {
        this.startDt = startDt;
    }

    public Date getEndDt() {
        return endDt;
    }

    public void setEndDt(Date endDt) {
        this.endDt = endDt;
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

    public String getCards() {
        return cards;
    }

    public void setCards(String cards) {
        this.cards = cards;
    }

    public String getOtherType() {
        return otherType;
    }

    public void setOtherType(String otherType) {
        this.otherType = otherType;
    }
}
