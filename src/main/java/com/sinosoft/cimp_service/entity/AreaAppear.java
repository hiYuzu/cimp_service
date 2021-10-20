package com.sinosoft.cimp_service.entity;

import cn.hutool.core.annotation.Alias;
import com.sinosoft.cimp_service.util.DateUtil;

import java.util.Date;

/**
 * 市经济信息化局-市卫健委-区域出现量
 *
 * @author hiYuzu
 * @version V1.0
 * @date 2021/9/24 14:58
 */
public class AreaAppear {
    @Alias("sd_date")
    private String time;
    @Alias("areaid")
    private String areaCode;
    @Alias("sd_total")
    private int amount;

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

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
}
