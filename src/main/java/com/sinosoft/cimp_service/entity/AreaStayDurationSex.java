package com.sinosoft.cimp_service.entity;

import cn.hutool.core.annotation.Alias;

import java.util.Date;

/**
 * 市经济信息化局-市卫健委-区域停留时长BI性别
 *
 * @author hiYuzu
 * @version V1.0
 * @date 2021/9/24 15:09
 */
public class AreaStayDurationSex {
    @Alias("时间")
    private Date time;
    @Alias("区域ID")
    private String areaCode;
    @Alias("时间段")
    private String duration;
    @Alias("男性人数")
    private int amountMale;
    @Alias("女性人数")
    private int amountFemale;

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getAreaCode() {
        return areaCode;
    }

    public void setAreaCode(String areaCode) {
        this.areaCode = areaCode;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public int getAmountMale() {
        return amountMale;
    }

    public void setAmountMale(int amountMale) {
        this.amountMale = amountMale;
    }

    public int getAmountFemale() {
        return amountFemale;
    }

    public void setAmountFemale(int amountFemale) {
        this.amountFemale = amountFemale;
    }
}
