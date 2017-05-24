package domain;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 * Created by cloudoo on 2017/5/20.
 */
public class Trainee implements Serializable {

    private Long id;
    private PersonInfo privateInfo;
    private String account;
    private String weixin;
    private String picDir;
    private CoacherInfo coacherInfo;
    private int status;//审核状态
    private Timestamp registerTm;
    private int distence;
    private String memo;



}
