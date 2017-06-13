package com.cloudo.hj.domain;

import java.io.Serializable;
import java.sql.Timestamp;
import java.sql.Date;

/**
 * Created by cloudoo on 2017/5/20.
 * 会员信息
 */
public class TraineeInfo implements Serializable {

    private Long id;
    private String wxOpenId; //微信openid
    private String name;
    private int gender = -1;//0 男，1 女

    private String cellphone;
    private String shopInfo;//门店信息
    private int status = -1;//审核状态 0 不通过 1 通过
    private Timestamp registerTm;//

    private String identit;//身份证号
    private Date brithday;
    private Float height;//身高
    private Float weight;//体重
    private int disType = 1;//到店距离类型 1：1公里以内，2：1～2公里，3:2～3公里，4:3～5公里，5：5公里以上
    private String memo;//备注信息


    private String fitNeeds;//健身需求
    private Long coacherId =  null;//主教练信息
    private String coacherName;//主教练名字
    private String career;//行业
    private String post;//职位
    private String history;//过往病史
    private String picDir;
    private Timestamp opTm;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getWxOpenId() {
        return wxOpenId;
    }

    public void setWxOpenId(String wxOpenId) {
        this.wxOpenId = wxOpenId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getGender() {
        return gender;
    }

    public void setGender(int gender) {
        this.gender = gender;
    }

    public String getCellphone() {
        return cellphone;
    }

    public void setCellphone(String cellphone) {
        this.cellphone = cellphone;
    }

    public String getShopInfo() {
        return shopInfo;
    }

    public void setShopInfo(String shopInfo) {
        this.shopInfo = shopInfo;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Timestamp getRegisterTm() {
        return registerTm;
    }

    public void setRegisterTm(Timestamp registerTm) {
        this.registerTm = registerTm;
    }

    public String getIdentit() {
        return identit;
    }

    public void setIdentit(String identit) {
        this.identit = identit;
    }

    public Date getBrithday() {
        return brithday;
    }

    public void setBrithday(Date brithday) {
        this.brithday = brithday;
    }

    public Float getHeight() {
        return height;
    }

    public void setHeight(Float height) {
        this.height = height;
    }

    public Float getWeight() {
        return weight;
    }

    public void setWeight(Float weight) {
        this.weight = weight;
    }

    public int getDisType() {
        return disType;
    }

    public void setDisType(int disType) {
        this.disType = disType;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    public String getFitNeeds() {
        return fitNeeds;
    }

    public void setFitNeeds(String fitNeeds) {
        this.fitNeeds = fitNeeds;
    }

    public Long getCoacherId() {
        return coacherId;
    }

    public void setCoacherId(Long coacherId) {
        this.coacherId = coacherId;
    }

    public String getCareer() {
        return career;
    }

    public void setCareer(String career) {
        this.career = career;
    }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post;
    }

    public String getHistory() {
        return history;
    }

    public void setHistory(String history) {
        this.history = history;
    }

    public String getPicDir() {
        return picDir;
    }

    public void setPicDir(String picDir) {
        this.picDir = picDir;
    }

    public String getCoacherName() {
        return coacherName;
    }

    public void setCoacherName(String coacherName) {
        this.coacherName = coacherName;
    }

    public Timestamp getOpTm() {
        return opTm;
    }

    public void setOpTm(Timestamp opTm) {
        this.opTm = opTm;
    }
}
