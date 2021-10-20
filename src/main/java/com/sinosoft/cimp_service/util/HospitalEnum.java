package com.sinosoft.cimp_service.util;

/**
 * @author hiYuzu
 * @version V1.0
 * @date 2021/10/20 10:54
 */
public enum HospitalEnum {
    ET("300101468"),
    FC("300101469"),
    FW("300101470");

    private String code;

    HospitalEnum(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
