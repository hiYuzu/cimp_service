package com.sinosoft.cimp_service.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author hiYuzu
 * @version V1.0
 * @date 2021/10/9 11:02
 */
public class DateUtil {

    private static final String DATE_PATTERN = "yyyyMMdd";

    /**
     * 获取日期（8）
     *
     * @return yyyyMMdd
     */
    public static String getDate() {
        SimpleDateFormat sdf = new SimpleDateFormat(DATE_PATTERN);
        return sdf.format(new Date());
    }
}
