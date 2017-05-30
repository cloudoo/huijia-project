package com.cloudo.hj.domain;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;

/**
 * Created by cloudoo on 2017/5/14
 */
public class CoacherInfo implements Serializable{

    private Long id;
    private String account;
    private String name;
    private int gender=-1;//0 男，1 女
    private String cellphone;
    private int type=-1;// 0内部 1外部
    private Date brithday;
    private String shopInfo;//门店信息
    private int order=-1;// 排序
    private int status=-1;//0未激活，1激活
    //教练信息
    private int techage=-1;//教龄信息
    private int techCountTime=-1;//累计教学时间
    private String speciality;//专长 逗号分隔
    private String certification;//认证
    private String graduateSch;//毕业学校
    private String tags;
    private String introducs;//简介
    private String description;//描述
    private String picDir;//图片

    private Timestamp opTm;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
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

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getCellphone() {
        return cellphone;
    }

    public void setCellphone(String cellphone) {
        this.cellphone = cellphone;
    }

    public Date getBrithday() {
        return brithday;
    }

    public void setBrithday(Date brithday) {
        this.brithday = brithday;
    }

    public String getShopInfo() {
        return shopInfo;
    }

    public void setShopInfo(String shopInfo) {
        this.shopInfo = shopInfo;
    }

    public int getOrder() {
        return order;
    }

    public void setOrder(int order) {
        this.order = order;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getTechage() {
        return techage;
    }

    public void setTechage(int techage) {
        this.techage = techage;
    }

    public int getTechCountTime() {
        return techCountTime;
    }

    public void setTechCountTime(int techCountTime) {
        this.techCountTime = techCountTime;
    }

    public String getSpeciality() {
        return speciality;
    }

    public void setSpeciality(String speciality) {
        this.speciality = speciality;
    }

    public String getCertification() {
        return certification;
    }

    public void setCertification(String certification) {
        this.certification = certification;
    }

    public String getGraduateSch() {
        return graduateSch;
    }

    public void setGraduateSch(String graduateSch) {
        this.graduateSch = graduateSch;
    }

    public String getTags() {
        return tags;
    }

    public void setTags(String tags) {
        this.tags = tags;
    }

    public String getIntroducs() {
        return introducs;
    }

    public void setIntroducs(String introducs) {
        this.introducs = introducs;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPicDir() {
        return picDir;
    }

    public void setPicDir(String picDir) {
        this.picDir = picDir;
    }

    public Timestamp getOpTm() {
        return opTm;
    }

    public void setOpTm(Timestamp opTm) {
        this.opTm = opTm;
    }
}
