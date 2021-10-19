package com.sinosoft.cimp_service.entity;

import cn.hutool.core.annotation.Alias;
import com.sinosoft.cimp_service.util.DateUtil;

import java.util.Date;

/**
 * 市经济信息化局-市卫健委-活跃用户归属
 *
 * @author hiYuzu
 * @version V1.0
 * @date 2021/9/24 15:02
 */
public class ActiveUserAttr {
    @Alias("时间")
    private String time;
    @Alias("区域ID")
    private String areaCode;
    @Alias("归属城市ID")
    private String cityCode;
    @Alias("人数")
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

    public String getCityCode() {
        return cityCode;
    }

    public void setCityCode(String cityCode) {
        this.cityCode = cityCode;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
}
