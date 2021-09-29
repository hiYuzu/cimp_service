package com.sinosoft.cimp_service.service;

import cn.hutool.core.io.resource.ResourceUtil;
import cn.hutool.core.text.csv.CsvReader;
import cn.hutool.core.text.csv.CsvUtil;
import com.sinosoft.cimp_service.dao.IParseCsvFileDao;
import com.sinosoft.cimp_service.entity.*;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.io.File;
import java.nio.charset.Charset;
import java.util.List;

/**
 * @author hiYuzu
 * @version V1.0
 * @date 2021/9/28 9:53
 */
@Service("parseCsvFileService")
@Transactional(rollbackFor = Exception.class)
public class ParseCsvFileService {

    @Resource
    private IParseCsvFileDao parseCsvFileDao;

    public void parseCsvFile(File file) throws Exception {
        String fileAbsPath = file.getAbsolutePath();
        String fileName = file.getName();
        fileName = fileName.substring(fileName.indexOf("_") + 1, fileName.indexOf("2"));
        switch (fileName) {
            // 1.瞬时人流量
            case "RT" : parseInstantPeopleFlow(fileAbsPath); break;
            // 2.瞬时归属地人流量
            case "RTAttr" : parseInstantPeopleFlowAttr(fileAbsPath); break;
            // 3.瞬时BI人流量籍贯归属地
            case "RTBIAttr" : parseInstantPeopleFlowHome(fileAbsPath); break;
            // 4.瞬时BI人流量年龄段
            case "RTBIAgeAttr" : parseInstantPeopleFlowAge(fileAbsPath); break;
            // 5.瞬时BI人流量性别
            case "RTBISexAttr" : parseInstantPeopleFlowSex(fileAbsPath); break;
            // 6.瞬时流入流出
            case "inout" : parseInstantInoutFlow(fileAbsPath); break;
            // 7.区域出现量
            case "Appear" : parseAreaAppear(fileAbsPath); break;
            // 8.区域归属地出现量
            case "AppearAttr" : parseAreaAppearAttr(fileAbsPath); break;
            // 9.区域出现量BI籍贯归属
            case "AppearBIAttr" : parseAreaAppearHome(fileAbsPath); break;
            // 10.活跃用户
            case "ActiveUser" : parseActiveUser(fileAbsPath); break;
            // 11.活跃用户归属
            case "ActiveAttr" : parseActiveUserAttr(fileAbsPath); break;
            // 12.活跃用户BI籍贯归属
            case "ActiveBIAttr" : parseActiveUserHome(fileAbsPath); break;
            // 13.活跃用户BI年龄段
            case "ActiveBIAge" : parseActiveUserAge(fileAbsPath); break;
            // 14.活跃用户BI性别
            case "ActiveBISex" : parseActiveUserSex(fileAbsPath); break;
            // 15.区域停留时长
            case "Stay" : parseAreaStayDuration(fileAbsPath); break;
            // 16.区域停留时长归属
            case "StayAttr" : parseAreaStayDurationAttr(fileAbsPath); break;
            // 17.区域停留时长BI户籍地
            case "StayBIAttr" : parseAreaStayDurationHome(fileAbsPath); break;
            // 18.区域停留时长BI年龄段
            case "StayBIAge" : parseAreaStayDurationAge(fileAbsPath); break;
            // 19.区域停留时长BI性别
            case "StayBISex" : parseAreaStayDurationSex(fileAbsPath); break;
            // 20.日白天用户
            case "DailyDay" : parseDailyDay(fileAbsPath); break;
            // 21.日夜晚用户
            case "DailyNight" : parseDailyNight(fileAbsPath); break;
            // 22.日通勤半径
            case "DailyTongQin" : parseDailyCommuteRadius(fileAbsPath); break;
            // 23.日通勤时间
            case "DailyTongQinTime" : parseDailyCommuteTime(fileAbsPath); break;
            // 24.游客出现量
            case "AppearLY" : parseTouristAppear(fileAbsPath); break;
            // 25.游客出现量归属地
            case "AppearLYAttr" : parseTouristAppearAttr(fileAbsPath); break;
            default: throw new Exception("文件名不规范！");
        }
    }

    private void parseInstantPeopleFlow(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<InstantPeopleFlow> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), InstantPeopleFlow.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveInstantPeopleFlow(list);
        }
    }

    private void parseInstantPeopleFlowAttr(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<InstantPeopleFlowAttr> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), InstantPeopleFlowAttr.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveInstantPeopleFlowAttr(list);
        }
    }

    private void parseInstantPeopleFlowHome(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<InstantPeopleFlowHome> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), InstantPeopleFlowHome.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveInstantPeopleFlowHome(list);
        }
    }

    private void parseInstantPeopleFlowAge(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<InstantPeopleFlowAge> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), InstantPeopleFlowAge.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveInstantPeopleFlowAge(list);
        }
    }

    private void parseInstantPeopleFlowSex(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<InstantPeopleFlowSex> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), InstantPeopleFlowSex.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveInstantPeopleFlowSex(list);
        }
    }

    private void parseInstantInoutFlow(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<InstantInoutFlow> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), InstantInoutFlow.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveInstantInoutFlow(list);
        }
    }

    private void parseAreaAppear(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<AreaAppear> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), AreaAppear.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveAreaAppear(list);
        }
    }

    private void parseAreaAppearAttr(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<AreaAppearAttr> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), AreaAppearAttr.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveAreaAppearAttr(list);
        }
    }

    private void parseAreaAppearHome(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<AreaAppearHome> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), AreaAppearHome.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveAreaAppearHome(list);
        }
    }

    private void parseActiveUser(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<ActiveUser> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), ActiveUser.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveActiveUser(list);
        }
    }

    private void parseActiveUserAttr(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<ActiveUserAttr> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), ActiveUserAttr.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveActiveUserAttr(list);
        }
    }

    private void parseActiveUserHome(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<ActiveUserHome> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), ActiveUserHome.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveActiveUserHome(list);
        }
    }

    private void parseActiveUserAge(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<ActiveUserAge> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), ActiveUserAge.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveActiveUserAge(list);
        }
    }

    private void parseActiveUserSex(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<ActiveUserSex> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), ActiveUserSex.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveActiveUserSex(list);
        }
    }

    private void parseAreaStayDuration(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<AreaStayDuration> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), AreaStayDuration.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveAreaStayDuration(list);
        }
    }

    private void parseAreaStayDurationAttr(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<AreaStayDurationAttr> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), AreaStayDurationAttr.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveAreaStayDurationAttr(list);
        }
    }

    private void parseAreaStayDurationHome(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<AreaStayDurationHome> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), AreaStayDurationHome.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveAreaStayDurationHome(list);
        }
    }

    private void parseAreaStayDurationAge(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<AreaStayDurationAge> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), AreaStayDurationAge.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveAreaStayDurationAge(list);
        }
    }

    private void parseAreaStayDurationSex(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<AreaStayDurationSex> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), AreaStayDurationSex.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveAreaStayDurationSex(list);
        }
    }

    private void parseDailyDay(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<DailyDay> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), DailyDay.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveDailyDay(list);
        }
    }

    private void parseDailyNight(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<DailyNight> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), DailyNight.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveDailyNight(list);
        }
    }

    private void parseDailyCommuteRadius(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<DailyCommuteRadius> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), DailyCommuteRadius.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveDailyCommuteRadius(list);
        }
    }

    private void parseDailyCommuteTime(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<DailyCommuteTime> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), DailyCommuteTime.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveDailyCommuteTime(list);
        }
    }

    private void parseTouristAppear(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<TouristAppear> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), TouristAppear.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveTouristAppear(list);
        }
    }

    private void parseTouristAppearAttr(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<TouristAppearAttr> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), TouristAppearAttr.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveTouristAppearAttr(list);
        }
    }
}
