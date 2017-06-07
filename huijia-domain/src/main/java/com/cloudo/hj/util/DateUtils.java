package com.cloudo.hj.util;

/**
 * Created by cloudpj on 17/6/7.
 */
public class DateUtils {

    public static java.sql.Date getNowDate(){
        java.util.Date tDate = new java.util.Date();
        java.sql.Date date = new java.sql.Date(tDate.getTime());
        return date;
    }
}
