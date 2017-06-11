package com.cloudo.hj.domain;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;

/**
 * Created by cloudoo on 2017/5/20.
 */
public class PriCourseDetail implements Serializable {

    private Long id;
    private Long schCourId;
    private String shopName;
    private Long coacherId;
    private Long courseId;

    private int size;//可预约的人数
    private int cuSize = 0;//当前人数
    private Date courseDate;//
    private String startTm; //开始时刻 9：00
    private String endTm; //结束时刻 00：00
    private String cardsType;//使用点卡类型，多个类型的卡
    private String otherType;//其他支付类型，卡id
    private Timestamp opTm;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getSchCourId() {
        return schCourId;
    }

    public void setSchCourId(Long schCourId) {
        this.schCourId = schCourId;
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

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public int getCuSize() {
        return cuSize;
    }

    public void setCuSize(int cuSize) {
        this.cuSize = cuSize;
    }

    public Date getCourseDate() {
        return courseDate;
    }

    public void setCourseDate(Date courseDate) {
        this.courseDate = courseDate;
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

    public Timestamp getOpTm() {
        return opTm;
    }

    public void setOpTm(Timestamp opTm) {
        this.opTm = opTm;
    }
}
