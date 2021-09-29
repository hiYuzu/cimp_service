package com.sinosoft.cimp_service.entity;

import cn.hutool.core.annotation.Alias;

import java.util.Date;

/**
 * 市经济信息化局-市卫健委-日通勤半径
 *
 * @author hiYuzu
 * @version V1.0
 * @date 2021/9/24 15:15
 */
public class DailyCommuteRadius {
    @Alias("时间")
    private Date time;
    @Alias("工作区域")
    private String workAreaCode;
    @Alias("居住区域")
    private String liveAreaCode;
    @Alias("距离")
    private double distance;

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getWorkAreaCode() {
        return workAreaCode;
    }

    public void setWorkAreaCode(String workAreaCode) {
        this.workAreaCode = workAreaCode;
    }

    public String getLiveAreaCode() {
        return liveAreaCode;
    }

    public void setLiveAreaCode(String liveAreaCode) {
        this.liveAreaCode = liveAreaCode;
    }

    public double getDistance() {
        return distance;
    }

    public void setDistance(double distance) {
        this.distance = distance;
    }
}
