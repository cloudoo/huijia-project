package domain;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 * Created by cloudoo on 2017/5/14
 */
public class CourseInfo implements Serializable {


    private Long id;
    private String name;
    private String type;
    private String description;
    private int duration;
    private int min;
    private int max;
    private double cost ;

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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public Timestamp getOpTm() {
        return opTm;
    }

    public void setOpTm(Timestamp opTm) {
        this.opTm = opTm;
    }
}
