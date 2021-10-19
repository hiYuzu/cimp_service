package com.sinosoft.cimp_service.entity;

import cn.hutool.core.annotation.Alias;
import com.sinosoft.cimp_service.util.DateUtil;

import java.util.Date;

/**
 * 市经济信息化局-市卫健委-区域停留时长
 *
 * @author hiYuzu
 * @version V1.0
 * @date 2021/9/24 15:06
 */
public class AreaStayDuration {
    @Alias("时间")
    private String time;
    @Alias("区域ID")
    private String areaCode;
    @Alias("0-30分钟")
    private int amount30;
    @Alias("31-120分钟")
    private int amount120;
    @Alias("121-240分钟")
    private int amount240;
    @Alias("241-480分钟")
    private int amount480;
    @Alias("480分钟以上")
    private int amountOver;

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

    public int getAmount30() {
        return amount30;
    }

    public void setAmount30(int amount30) {
        this.amount30 = amount30;
    }

    public int getAmount120() {
        return amount120;
    }

    public void setAmount120(int amount120) {
        this.amount120 = amount120;
    }

    public int getAmount240() {
        return amount240;
    }

    public void setAmount240(int amount240) {
        this.amount240 = amount240;
    }

    public int getAmount480() {
        return amount480;
    }

    public void setAmount480(int amount480) {
        this.amount480 = amount480;
    }

    public int getAmountOver() {
        return amountOver;
    }

    public void setAmountOver(int amountOver) {
        this.amountOver = amountOver;
    }
}
