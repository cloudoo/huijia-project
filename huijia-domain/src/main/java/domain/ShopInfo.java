package domain;

import java.io.Serializable;

/**
 * Created by cloudoo on 2017/5/20.
 */
public class ShopInfo implements Serializable {

    private Long id;
    private String name;
    private String contractName;
    private String cellphone;
    private String telephone;
    private String provice;
    private String city;
    private String distinct;
    private String country;
    private int order;
    private String smsSuff;
    private String mapinfo;
    private String circulation;//交路信息

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

    public String getContractName() {
        return contractName;
    }

    public void setContractName(String contractName) {
        this.contractName = contractName;
    }

    public String getCellphone() {
        return cellphone;
    }

    public void setCellphone(String cellphone) {
        this.cellphone = cellphone;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getProvice() {
        return provice;
    }

    public void setProvice(String provice) {
        this.provice = provice;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDistinct() {
        return distinct;
    }

    public void setDistinct(String distinct) {
        this.distinct = distinct;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public int getOrder() {
        return order;
    }

    public void setOrder(int order) {
        this.order = order;
    }

    public String getSmsSuff() {
        return smsSuff;
    }

    public void setSmsSuff(String smsSuff) {
        this.smsSuff = smsSuff;
    }

    public String getMapinfo() {
        return mapinfo;
    }

    public void setMapinfo(String mapinfo) {
        this.mapinfo = mapinfo;
    }

    public String getCirculation() {
        return circulation;
    }

    public void setCirculation(String circulation) {
        this.circulation = circulation;
    }
}
