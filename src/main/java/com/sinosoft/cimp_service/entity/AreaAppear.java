package com.sinosoft.cimp_service.entity;

import cn.hutool.core.annotation.Alias;

import java.util.Date;

/**
 * 市经济信息化局-市卫健委-区域出现量
 *
 * @author hiYuzu
 * @version V1.0
 * @date 2021/9/24 14:58
 */
public class AreaAppear {
    @Alias("时间")
    private Date time;
    @Alias("区域ID")
    private String areaCode;
    @Alias("人数")
    private int amount;

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

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
}
