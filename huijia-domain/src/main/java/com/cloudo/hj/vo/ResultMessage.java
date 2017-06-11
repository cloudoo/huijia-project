package com.cloudo.hj.vo;

import java.io.Serializable;

/**
 * Created by cloudpj on 17/6/10.
 */
public class ResultMessage<T> implements Serializable{

    private boolean success;
    /** 成功信息或失败的状态(代码) */
    private String status;
    /** 状态对应的可读原因消息，尤其是失败时的 */
    private String reason;
    /** 发起请求的URL */
    private String url;


    private T result;

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public T getResult() {
        return result;
    }

    public void setResult(T result) {
        this.result = result;
    }
}
