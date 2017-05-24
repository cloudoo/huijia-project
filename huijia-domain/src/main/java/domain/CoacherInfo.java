package domain;

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
    private int gender;
    private String cellphone;
    private int type;//内部外部
    private Date brithday;
    private String shopInfo;//门店信息
    private int order;// 排序

    //教练信息
    private int techage;//教龄信息
    private int techcountTime;//累计教学时间
    private String speciality;//专长 逗号分隔
    private String certification;
    private String graduateSch;//毕业学校
    private String tags;
    private String introducs;//简介
    private String description;
    private String picDir;

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

    public int getTechage() {
        return techage;
    }

    public void setTechage(int techage) {
        this.techage = techage;
    }

    public int getTechcountTime() {
        return techcountTime;
    }

    public void setTechcountTime(int techcountTime) {
        this.techcountTime = techcountTime;
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
