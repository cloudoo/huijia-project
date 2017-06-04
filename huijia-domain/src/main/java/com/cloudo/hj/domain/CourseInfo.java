package com.cloudo.hj.domain;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 * Created by cloudoo on 2017/5/14
 */
public class CourseInfo implements Serializable {


    public static int PRI=1;//私教课程
    public static int COM=2;//私教克／团课
    public static int AUT=3;//自主课程
    private Long id;
    private String name;
    private int type = 0;
    private String coverDir;//封面路径
    private int duration;//课程时长，分钟

    private int min = 0;//最小开课人数
    private int max = 0;//最大开课人数
    private Float normalCost = 0.00f;//课程标准价格
    private String costDesc;//费用说明
    private String courseDesc;//
    private Boolean valid;//
    private Timestamp opTm;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getCoverDir() {
        return coverDir;
    }

    public void setCoverDir(String coverDir) {
        this.coverDir = coverDir;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
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

    public Float getNormalCost() {
        return normalCost;
    }

    public void setNormalCost(Float normalCost) {
        this.normalCost = normalCost;
    }

    public Boolean getValid() {
        return valid;
    }

    public void setValid(Boolean valid) {
        this.valid = valid;
    }

    public String getCostDesc() {
        return costDesc;
    }

    public void setCostDesc(String costDesc) {
        this.costDesc = costDesc;
    }

    public String getCourseDesc() {
        return courseDesc;
    }

    public void setCourseDesc(String courseDesc) {
        this.courseDesc = courseDesc;
    }


    public Timestamp getOpTm() {
        return opTm;
    }

    public void setOpTm(Timestamp opTm) {
        this.opTm = opTm;
    }
}
