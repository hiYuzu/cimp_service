package com.sinosoft.cimp_service.entity;

import cn.hutool.core.annotation.Alias;
import com.sinosoft.cimp_service.util.DateUtil;

import java.util.Date;

/**
 * 市经济信息化局-市卫健委-瞬时BI人流量性别
 *
 * @author hiYuzu
 * @version V1.0
 * @date 2021/9/24 14:55
 */
public class InstantPeopleFlowSex {
    @Alias("时间")
    private String time;
    @Alias("区域ID")
    private String areaCode;
    @Alias("男性人数")
    private int amountMale;
    @Alias("女性人数")
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
