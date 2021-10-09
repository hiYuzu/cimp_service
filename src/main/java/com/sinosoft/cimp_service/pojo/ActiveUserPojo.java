package com.sinosoft.cimp_service.pojo;

/**
 * @author hiYuzu
 * @version V1.0
 * @date 2021/10/9 15:09
 */
public class ActiveUserPojo {
    private String startTime;
    private String endTime;
    private String areaCode;
    private Integer amount;

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public String getAreaCode() {
        return areaCode;
    }

    public void setAreaCode(String areaCode) {
        this.areaCode = areaCode;
    }

    public Integer getAmount() {
        return amount;
    }

    public void setAmount(Integer amount) {
        this.amount = amount;
    }
}
