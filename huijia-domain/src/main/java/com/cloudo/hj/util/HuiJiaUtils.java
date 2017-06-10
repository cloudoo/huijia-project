package com.cloudo.hj.util;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by cloudpj on 17/6/7.
 */
public class HuiJiaUtils {

    public static java.sql.Date getNowDate(){
        java.util.Date tDate = new java.util.Date();
        java.sql.Date date = new java.sql.Date(tDate.getTime());
        return date;
    }

    /**
     * ru如果 aTM 早于 bTm 则返回 －1 ，相等返回1 ，否则返回 1
     * @param aTm
     * @param bTm
     * @return
     */
    public  static int compareTime(String aTm,String bTm){

        String[] aTms = aTm.split(":");
        int ah = Integer.parseInt(aTms[0]);
        int am = Integer.parseInt(aTms[1]);
        String[] bTms = bTm.split(":");
        int bh = Integer.parseInt(bTms[0]);
        int bm = Integer.parseInt(bTms[1]);
        if(ah<bh){
            return  -1;
        }else if(ah>bh){
            return 1;
        }else if(ah==bh){
            if(am==bm){
                return 0;
            }else if(am>bm){
                return 1;
            }else{
                return -1;
            }
        }
        return 0;
    }

    public static List<String> genTime(String start,String end){

         List<String> times = new ArrayList<String>();
        String[] aTms = start.split(":");
        int ah = Integer.parseInt(aTms[0]);
        int am = Integer.parseInt(aTms[1]);
        String[] bTms = end.split(":");
        int bh = Integer.parseInt(bTms[0]);
        int bm = Integer.parseInt(bTms[1]);

        for(int a=ah;a<=bh;a++){

                String t1 = a+":"+"00";
                String t2 = a+":"+"30";
               times.add(t1);
               times.add(t2);
        }


        return times;
    }

    public static void main(String[] args){
        List<String> times = HuiJiaUtils.genTime("9:00","20:30");
        for(String time:times){
            System.out.println(time);

        }
    }

}
