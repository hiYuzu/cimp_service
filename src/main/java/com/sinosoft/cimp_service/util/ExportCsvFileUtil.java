package com.sinosoft.cimp_service.util;

import cn.hutool.core.text.csv.CsvUtil;
import cn.hutool.core.text.csv.CsvWriter;
import cn.hutool.core.util.CharsetUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.File;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author hiYuzu
 * @version V1.0
 * @date 2021/10/20 11:29
 */
public class ExportCsvFileUtil<T> {
    private final Logger LOG = LoggerFactory.getLogger(ExportCsvFileUtil.class);

    public void createCsvFile(List<T> list, Class<T> clazz, String path) {
        try {
            File csvFile = new File(path);
            CsvWriter writer = CsvUtil.getWriter(csvFile, CharsetUtil.CHARSET_GBK);

            Field[] fields = clazz.getDeclaredFields();
            String[] listName = new String[fields.length];
            for (int i = 0; i < listName.length; i++) {
                listName[i] = fields[i].getName();
            }

            List<String[]> result = new ArrayList<>();
            Arrays.sort(listName);
            result.add(listName);

            for (T temp : list) {
                Field[] declaredFields = temp.getClass().getDeclaredFields();
                String[] listValue = new String[declaredFields.length];
                for (int i = 0; i < listValue.length; i++) {
                    declaredFields[i].setAccessible(true);
                    int position = Arrays.binarySearch(listName, declaredFields[i].getName());
                    listValue[position] = String.valueOf(declaredFields[i].get(temp));
                }
                result.add(listValue);
            }
            writer.write(result);
            writer.close();
        } catch (Exception e) {
            LOG.error(e.getMessage());
        }
    }
}
