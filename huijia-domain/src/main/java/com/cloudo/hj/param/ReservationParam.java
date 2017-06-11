package com.cloudo.hj.param;

import java.sql.Timestamp;

/**
 * Created by cloudpj on 17/6/8.
 */
public class ReservationParam {

    private Long id;
    private Timestamp bookFrom;
    private Timestamp bookTo;
    private Timestamp courseDate;
    private Long traineeId;
    private String shopName;
    private String coacherName;
    private String type;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Timestamp getBookFrom() {
        return bookFrom;
    }

    public void setBookFrom(Timestamp bookFrom) {
        this.bookFrom = bookFrom;
    }

    public Timestamp getBookTo() {
        return bookTo;
    }

    public Timestamp getCourseDate() {
        return courseDate;
    }

    public Long getTraineeId() {
        return traineeId;
    }

    public void setTraineeId(Long traineeId) {
        this.traineeId = traineeId;
    }

    public void setCourseDate(Timestamp courseDate) {
        this.courseDate = courseDate;
    }

    public void setBookTo(Timestamp bookTo) {
        this.bookTo = bookTo;
    }

    public String getShopName() {
        return shopName;
    }

    public void setShopName(String shopName) {
        this.shopName = shopName;
    }

    public String getCoacherName() {
        return coacherName;
    }

    public void setCoacherName(String coacherName) {
        this.coacherName = coacherName;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
