package com.cloudo.hj.vo;


import java.sql.Timestamp;

/**
 * Created by cloudpj on 17/6/11.
 */
public class ReservationVo {

    private Long id;
    private String courseName;
    private String coacherName;
    private String coverDir;
    private Timestamp startTm;
    private Timestamp endTm;
    private int cuSize;
    private String courseDesc;
    private String type;
    private String status;
    private Timestamp reservaTm;
    private Timestamp cancelTm;
    private String cacelReason;
    private String cards;
    private Timestamp opTm;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getCoacherName() {
        return coacherName;
    }

    public void setCoacherName(String coacherName) {
        this.coacherName = coacherName;
    }

    public Timestamp getStartTm() {
        return startTm;
    }

    public void setStartTm(Timestamp startTm) {
        this.startTm = startTm;
    }

    public Timestamp getEndTm() {
        return endTm;
    }

    public void setEndTm(Timestamp endTm) {
        this.endTm = endTm;
    }

    public int getCuSize() {
        return cuSize;
    }

    public void setCuSize(int cuSize) {
        this.cuSize = cuSize;
    }

    public String getCourseDesc() {
        return courseDesc;
    }

    public void setCourseDesc(String courseDesc) {
        this.courseDesc = courseDesc;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Timestamp getReservaTm() {
        return reservaTm;
    }

    public void setReservaTm(Timestamp reservaTm) {
        this.reservaTm = reservaTm;
    }

    public Timestamp getCancelTm() {
        return cancelTm;
    }

    public void setCancelTm(Timestamp cancelTm) {
        this.cancelTm = cancelTm;
    }

    public String getCacelReason() {
        return cacelReason;
    }

    public void setCacelReason(String cacelReason) {
        this.cacelReason = cacelReason;
    }

    public String getCards() {
        return cards;
    }

    public void setCards(String cards) {
        this.cards = cards;
    }

    public Timestamp getOpTm() {
        return opTm;
    }

    public void setOpTm(Timestamp opTm) {
        this.opTm = opTm;
    }

    public String getCoverDir() {
        return coverDir;
    }

    public void setCoverDir(String coverDir) {
        this.coverDir = coverDir;
    }
}
