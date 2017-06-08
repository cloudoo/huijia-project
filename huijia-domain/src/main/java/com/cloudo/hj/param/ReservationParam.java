package com.cloudo.hj.param;

import java.sql.Timestamp;

/**
 * Created by cloudpj on 17/6/8.
 */
public class ReservationParam {

    private Timestamp bookFrom;
    private Timestamp bookTo;
    private String shopName;
    private String coacherName;
    private String type;

    public Timestamp getBookFrom() {
        return bookFrom;
    }

    public void setBookFrom(Timestamp bookFrom) {
        this.bookFrom = bookFrom;
    }

    public Timestamp getBookTo() {
        return bookTo;
    }

    public void setBookTo(Timestamp bookTo) {
        this.bookTo = bookTo;
    }

    public String getShopName() {
        return shopName;
    }

    public void setShopName(String shopName) {
        this.shopName = shopName;
    }

    public String getCoacherName() {
        return coacherName;
    }

    public void setCoacherName(String coacherName) {
        this.coacherName = coacherName;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
