package com.cloudo.hj.domain;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 * Created by cloudoo on 2017/5/20.
 */
public class ReservationInfo implements Serializable {

    private Long id;

    private Timestamp startTm;
    private String shopName;
    private Long traineeId;
    private Long coacherId;
    private Long courseId;
    private String type;
    private int status;
    private Timestamp reservaTm;
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

    public String getShopName() {
        return shopName;
    }

    public void setShopName(String shopName) {
        this.shopName = shopName;
    }

    public Long getTraineeId() {
        return traineeId;
    }

    public void setTraineeId(Long traineeId) {
        this.traineeId = traineeId;
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
