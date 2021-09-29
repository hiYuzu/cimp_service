package com.sinosoft.cimp_service.entity;

import cn.hutool.core.annotation.Alias;

import java.util.Date;

/**
 * 市经济信息化局-市卫健委-活跃用户BI年龄段
 *
 * @author hiYuzu
 * @version V1.0
 * @date 2021/9/24 15:04
 */
public class ActiveUserAge {
    @Alias("时间")
    private Date time;
    @Alias("区域")
    private String areaCode;
    @Alias("1-5岁人数")
    private int amount5;
    @Alias("6-10岁人数")
    private int amount10;
    @Alias("11-15岁人数")
    private int amount15;
    @Alias("16-20岁人数")
    private int amount20;
    @Alias("21-25岁人数")
    private int amount25;
    @Alias("26-30岁人数")
    private int amount30;
    @Alias("31-35岁人数")
    private int amount35;
    @Alias("36-40岁人数")
    private int amount40;
    @Alias("41-45岁人数")
    private int amount45;
    @Alias("46-50岁人数")
    private int amount50;
    @Alias("51-55岁人数")
    private int amount55;
    @Alias("56-60岁人数")
    private int amount60;
    @Alias("61-65岁人数")
    private int amount65;
    @Alias("66-70岁人数")
    private int amount70;
    @Alias("70+岁")
    private int amountOver;

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

    public int getAmount5() {
        return amount5;
    }

    public void setAmount5(int amount5) {
        this.amount5 = amount5;
    }

    public int getAmount10() {
        return amount10;
    }

    public void setAmount10(int amount10) {
        this.amount10 = amount10;
    }

    public int getAmount15() {
        return amount15;
    }

    public void setAmount15(int amount15) {
        this.amount15 = amount15;
    }

    public int getAmount20() {
        return amount20;
    }

    public void setAmount20(int amount20) {
        this.amount20 = amount20;
    }

    public int getAmount25() {
        return amount25;
    }

    public void setAmount25(int amount25) {
        this.amount25 = amount25;
    }

    public int getAmount30() {
        return amount30;
    }

    public void setAmount30(int amount30) {
        this.amount30 = amount30;
    }

    public int getAmount35() {
        return amount35;
    }

    public void setAmount35(int amount35) {
        this.amount35 = amount35;
    }

    public int getAmount40() {
        return amount40;
    }

    public void setAmount40(int amount40) {
        this.amount40 = amount40;
    }

    public int getAmount45() {
        return amount45;
    }

    public void setAmount45(int amount45) {
        this.amount45 = amount45;
    }

    public int getAmount50() {
        return amount50;
    }

    public void setAmount50(int amount50) {
        this.amount50 = amount50;
    }

    public int getAmount55() {
        return amount55;
    }

    public void setAmount55(int amount55) {
        this.amount55 = amount55;
    }

    public int getAmount60() {
        return amount60;
    }

    public void setAmount60(int amount60) {
        this.amount60 = amount60;
    }

    public int getAmount65() {
        return amount65;
    }

    public void setAmount65(int amount65) {
        this.amount65 = amount65;
    }

    public int getAmount70() {
        return amount70;
    }

    public void setAmount70(int amount70) {
        this.amount70 = amount70;
    }

    public int getAmountOver() {
        return amountOver;
    }

    public void setAmountOver(int amountOver) {
        this.amountOver = amountOver;
    }
}
