package com.cloudo.hj.domain;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 * Created by cloudoo on 2017/5/20.
 */
public class ReservationInfo implements Serializable {

    private Long id;

    private Timestamp startTm;
    private TraineeInfo traineeInfo;
    private CoacherInfo coacherInfo;
    private CourseInfo courseInfo;
    private String type;
    private int status;
    private Timestamp registDt;
    private Timestamp cancelTm;
    private String cancelReason;
    private String cards;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Timestamp getStartTm() {
        return startTm;
    }

    public void setStartTm(Timestamp startTm) {
        this.startTm = startTm;
    }

    public TraineeInfo getTraineeInfo() {
        return traineeInfo;
    }

    public void setTraineeInfo(TraineeInfo traineeInfo) {
        this.traineeInfo = traineeInfo;
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Timestamp getRegistDt() {
        return registDt;
    }

    public void setRegistDt(Timestamp registDt) {
        this.registDt = registDt;
    }

    public Timestamp getCancelTm() {
        return cancelTm;
    }

    public void setCancelTm(Timestamp cancelTm) {
        this.cancelTm = cancelTm;
    }

    public String getCancelReason() {
        return cancelReason;
    }

    public void setCancelReason(String cancelReason) {
        this.cancelReason = cancelReason;
    }

    public String getCards() {
        return cards;
    }

    public void setCards(String cards) {
        this.cards = cards;
    }
}
