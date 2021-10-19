package com.sinosoft.cimp_service.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author hiYuzu
 * @version V1.0
 * @date 2021/10/9 11:02
 */
public class DateUtil {

    private static final String DATE_PATTERN = "yyyyMMdd";
    private static final String DATE_TI_PATTERN = "yyyyMMddHHmm";

    /**
     * 获取日期（8）
     *
     * @return yyyyMMdd
     */
    public static String getDate() {
        SimpleDateFormat sdf = new SimpleDateFormat(DATE_PATTERN);
        return sdf.format(new Date());
    }

    /**
     * 将字符串转为 Date，用于数据库存储
     *
     * @param source 两种格式，12 位或 8 位，此外返回 null（不规范数据）
     * @return {@link Date}
     */
    public static Date parseDate(String source) {
        SimpleDateFormat sdf;
        try {
            if (source.length() == 12) {
                sdf = new SimpleDateFormat(DATE_TI_PATTERN);
            } else if (source.length() == 8) {
                sdf = new SimpleDateFormat(DATE_PATTERN);
            } else {
                return null;
            }
            return sdf.parse(source);
        } catch (ParseException pe) {
            return null;
        }
    }
}
