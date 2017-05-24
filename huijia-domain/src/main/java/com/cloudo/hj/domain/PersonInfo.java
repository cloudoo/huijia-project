package com.cloudo.hj.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by cloudoo on 2017/5/20.
 */
public class PersonInfo implements Serializable {

    private Long id;
    private String name;
    private int sex;
    private String cellphone;
    private String identity;//身份证号
    private Date brthDay;
    private float height;//身高
    private float weight;//体重


}
