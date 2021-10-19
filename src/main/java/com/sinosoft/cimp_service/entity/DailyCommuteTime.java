package com.sinosoft.cimp_service.entity;

import cn.hutool.core.annotation.Alias;
import com.sinosoft.cimp_service.util.DateUtil;

import java.util.Date;

/**
 * 市经济信息化局-市卫健委-日通勤时间
 *
 * @author hiYuzu
 * @version V1.0
 * @date 2021/9/24 15:15
 */
public class DailyCommuteTime {
    @Alias("时间")
    private String time;
    @Alias("工作区域")
    private String workAreaCode;
    @Alias("居住区域")
    private String liveAreaCode;
    @Alias("时长")
    private double duration;

    public Date getTime() {
        return DateUtil.parseDate(time);
    }

    public void setTime(String time) {
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

    public double getDuration() {
        return duration;
    }

    public void setDuration(double duration) {
        this.duration = duration;
    }
}
