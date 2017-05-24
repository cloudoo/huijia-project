package com.cloudo.hj.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * Created by cloudoo on 2017/5/20.
 */
public class CommonCourseInfo implements Serializable {

    private Long id;
    private ShopInfo shopInfo;
    private CourseInfo courseInfo;
    private Date startTm;
    private Date endTm;
    private List<CoacherInfo> coacherInfoList;
    private CoacherInfo mainCoacher;
    private String description;//规则描述
    private int min;//最小开课人数
    private int max;//最大开课人数
    private String card;//试用会员卡

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

    public CourseInfo getCourseInfo() {
        return courseInfo;
    }

    public void setCourseInfo(CourseInfo courseInfo) {
        this.courseInfo = courseInfo;
    }

    public Date getStartTm() {
        return startTm;
    }

    public void setStartTm(Date startTm) {
        this.startTm = startTm;
    }

    public Date getEndTm() {
        return endTm;
    }

    public void setEndTm(Date endTm) {
        this.endTm = endTm;
    }

    public List<CoacherInfo> getCoacherInfoList() {
        return coacherInfoList;
    }

    public void setCoacherInfoList(List<CoacherInfo> coacherInfoList) {
        this.coacherInfoList = coacherInfoList;
    }

    public CoacherInfo getMainCoacher() {
        return mainCoacher;
    }

    public void setMainCoacher(CoacherInfo mainCoacher) {
        this.mainCoacher = mainCoacher;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getMin() {
        return min;
    }

    public void setMin(int min) {
        this.min = min;
    }

    public int getMax() {
        return max;
    }

    public void setMax(int max) {
        this.max = max;
    }

    public String getCard() {
        return card;
    }

    public void setCard(String card) {
        this.card = card;
    }
}
