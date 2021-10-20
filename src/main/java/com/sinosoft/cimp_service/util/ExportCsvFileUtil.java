package com.sinosoft.cimp_service.util;

import cn.hutool.core.text.csv.CsvUtil;
import cn.hutool.core.text.csv.CsvWriter;
import cn.hutool.core.util.CharsetUtil;
import com.sinosoft.cimp_service.task.GetFilesTask;
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
    private final Logger LOG = LoggerFactory.getLogger(GetFilesTask.class);

    public void createCsvFile(List<T> list, Class<T> clazz, String path){
        try {
            //构造文件
            File csvFile = new File(path);
            CsvWriter writer = CsvUtil.getWriter(csvFile, CharsetUtil.CHARSET_GBK);
            Field[] fields = clazz.getDeclaredFields();
            // 获取UserList对象的字段名称，作为第一行listName
            String[] listName = new String[fields.length];
            for(int i=0;i<listName.length;i++){
                listName[i] = fields[i].getName();
            }
            List<String[]> result= new ArrayList<>();
            //对listName进行排序，保证Arrays.binarySearch返回值不为负数
            Arrays.sort(listName);
            result.add(listName);
            for(T temp : list){
                Field[] declaredFields = temp.getClass().getDeclaredFields();
                String[] listValue = new String[declaredFields.length];
                for(int i=0;i<listValue.length;i++){
                    //设置为允许操作
                    declaredFields[i].setAccessible(true);
                    //获取与listName中对应属性名的索引值
                    int position = Arrays.binarySearch(listName,declaredFields[i].getName());
                    //将属性值添加到listValue对应的索引位置下
                    listValue[position] = String.valueOf(declaredFields[i].get(temp)) ;
                }
                result.add(listValue);
            }
            writer.write(result);
            writer.close();
        }
        catch (Exception e){
            LOG.error(e.getMessage());
        }
    }
}
