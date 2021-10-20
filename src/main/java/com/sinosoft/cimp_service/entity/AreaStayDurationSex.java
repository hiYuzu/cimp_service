package com.sinosoft.cimp_service.entity;

import cn.hutool.core.annotation.Alias;
import com.sinosoft.cimp_service.util.DateUtil;

import java.util.Date;

/**
 * 市经济信息化局-市卫健委-区域停留时长BI性别
 *
 * @author hiYuzu
 * @version V1.0
 * @date 2021/9/24 15:09
 */
public class AreaStayDurationSex {
    @Alias("sd_date")
    private String time;
    @Alias("areaid")
    private String areaCode;
    @Alias("data_type")
    private String duration;
    @Alias("sd_total1")
    private int amountMale;
    @Alias("sd_total2")
    private int amountFemale;

    public Date getTime() {
        return DateUtil.parseDate(time);
    }

    public void setTime(String time) {
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
