package com.sinosoft.cimp_service.util;

/**
 * @author hiYuzu
 * @version V1.0
 * @date 2021/9/27 18:15
 */
public class GlobalUtil {
    /**
     * 本地存储位置
     */
    public static final String SAVE_DIRECTORY = "/opt/xlsj/temp/";
    /**
     * 已处理文件
     */
    public static final String PROCESSED_DIRECTORY = "/opt/xlsj/files-" + DateUtil.getDate() + "/";
    /**
     * 阜外医院数据保存位置
     */
    public static final String FW_FTP_DIRECTORY = "/opt/ftp/bjfw/";
    /**
     * 妇产医院数据保存位置
     */
    public static final String FC_FTP_DIRECTORY = "/opt/ftp/bjfc/";
    /**
     * 儿童医院数据保存位置
     */
    public static final String ET_FTP_DIRECTORY = "/opt/ftp/bjet/";
}
