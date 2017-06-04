package com.cloudo.hj.param;

import java.sql.Timestamp;
import java.util.Calendar;

/**
 * Created by cloudpj on 17/6/4.
 */
public class TraineerParam {

    private Long id;
    private String name;
    private String cellphone;
    private Timestamp registTmFrom;
    private Timestamp registTmTo;

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

    public String getCellphone() {
        return cellphone;
    }

    public void setCellphone(String cellphone) {
        this.cellphone = cellphone;
    }

    public Timestamp getRegistTmFrom() {
        return registTmFrom;
    }

    public void setRegistTmFrom(Timestamp registTmFrom) {
        this.registTmFrom = registTmFrom;
    }

    public void setRegistTmFrom(String yyyyMMdd){

        String year = yyyyMMdd.substring(0,4);
        String month = yyyyMMdd.substring(4,6);
        String day = yyyyMMdd.substring(6,8);
        Calendar calendar = Calendar.getInstance();
        calendar.set(Integer.parseInt(year),Integer.parseInt(month),Integer.parseInt(day),0,0,0);
        Timestamp fromTm = new Timestamp(calendar.getTimeInMillis());
        setRegistTmFrom(fromTm);

    }


    public void setRegistTmTo(String yyyyMMdd){

        String year = yyyyMMdd.substring(0,4);
        String month = yyyyMMdd.substring(4,6);
        String day = yyyyMMdd.substring(6,8);
        Calendar calendar = Calendar.getInstance();
        calendar.set(Integer.parseInt(year),Integer.parseInt(month),Integer.parseInt(day),23,59,59);
        Timestamp toTm = new Timestamp(calendar.getTimeInMillis());
        setRegistTmFrom(toTm);

    }

    public Timestamp getRegistTmTo() {
        return registTmTo;
    }

    public void setRegistTmTo(Timestamp registTmTo) {
        this.registTmTo = registTmTo;
    }
}
