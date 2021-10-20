package com.sinosoft.cimp_service.service;

import cn.hutool.core.io.resource.ResourceUtil;
import cn.hutool.core.text.csv.CsvReader;
import cn.hutool.core.text.csv.CsvUtil;
import com.sinosoft.cimp_service.dao.IParseCsvFileDao;
import com.sinosoft.cimp_service.entity.*;
import com.sinosoft.cimp_service.util.ExportCsvFileUtil;
import com.sinosoft.cimp_service.util.GlobalUtil;
import com.sinosoft.cimp_service.util.HospitalEnum;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.io.File;
import java.nio.charset.Charset;
import java.util.ArrayList;
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

    private String completeFileName;


    public void parseCsvFile(File file) throws Exception {
        String fileAbsPath = file.getAbsolutePath();
        completeFileName = file.getName();
        String fileName = completeFileName.substring(completeFileName.indexOf("_") + 1, completeFileName.indexOf("2"));
        switch (fileName) {
            // 1.瞬时人流量
            case "RT":
                parseInstantPeopleFlow(fileAbsPath);
                break;
            // 2.瞬时归属地人流量
            case "RTAttr":
                parseInstantPeopleFlowAttr(fileAbsPath);
                break;
            // 3.瞬时BI人流量籍贯归属地
            case "RTBIAttr":
                parseInstantPeopleFlowHome(fileAbsPath);
                break;
            // 4.瞬时BI人流量年龄段
            case "RTBIAgeAttr":
                parseInstantPeopleFlowAge(fileAbsPath);
                break;
            // 5.瞬时BI人流量性别
            case "RTBISexAttr":
                parseInstantPeopleFlowSex(fileAbsPath);
                break;
            // 6.瞬时流入流出
            case "inout":
                parseInstantInoutFlow(fileAbsPath);
                break;
            // 7.区域出现量
            case "Appear":
                parseAreaAppear(fileAbsPath);
                break;
            // 8.区域归属地出现量
            case "AppearAttr":
                parseAreaAppearAttr(fileAbsPath);
                break;
            // 9.区域出现量BI籍贯归属
            case "AppearBIAttr":
                parseAreaAppearHome(fileAbsPath);
                break;
            // 10.活跃用户
            case "ActiveUser":
                parseActiveUser(fileAbsPath);
                break;
            // 11.活跃用户归属
            case "ActiveAttr":
                parseActiveUserAttr(fileAbsPath);
                break;
            // 12.活跃用户BI籍贯归属
            case "ActiveBIAttr":
                parseActiveUserHome(fileAbsPath);
                break;
            // 13.活跃用户BI年龄段
            case "ActiveBIAge":
                parseActiveUserAge(fileAbsPath);
                break;
            // 14.活跃用户BI性别
            case "ActiveBISex":
                parseActiveUserSex(fileAbsPath);
                break;
            // 15.区域停留时长
            case "Stay":
                parseAreaStayDuration(fileAbsPath);
                break;
            // 16.区域停留时长归属
            case "StayAttr":
                parseAreaStayDurationAttr(fileAbsPath);
                break;
            // 17.区域停留时长BI户籍地
            case "StayBIAttr":
                parseAreaStayDurationHome(fileAbsPath);
                break;
            // 18.区域停留时长BI年龄段
            case "StayBIAge":
                parseAreaStayDurationAge(fileAbsPath);
                break;
            // 19.区域停留时长BI性别
            case "StayBISex":
                parseAreaStayDurationSex(fileAbsPath);
                break;
            // 20.日白天用户
            case "DailyDay":
                parseDailyDay(fileAbsPath);
                break;
            // 21.日夜晚用户
            case "DailyNight":
                parseDailyNight(fileAbsPath);
                break;
            // 22.日通勤半径
            case "DailyTongQin":
                parseDailyCommuteRadius(fileAbsPath);
                break;
            // 23.日通勤时间
            case "DailyTongQinTime":
                parseDailyCommuteTime(fileAbsPath);
                break;
            // 24.游客出现量
            case "AppearLY":
                parseTouristAppear(fileAbsPath);
                break;
            // 25.游客出现量归属地
            case "AppearLYAttr":
                parseTouristAppearAttr(fileAbsPath);
                break;
            default:
                throw new Exception("文件名不规范！");
        }
    }

    private void parseInstantPeopleFlow(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<InstantPeopleFlow> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), InstantPeopleFlow.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveInstantPeopleFlow(list);

            List<InstantPeopleFlow> fwEntity = new ArrayList<>();
            List<InstantPeopleFlow> fcEntity = new ArrayList<>();
            List<InstantPeopleFlow> etEntity = new ArrayList<>();
            for (InstantPeopleFlow temp : list) {
                String areaCode = temp.getAreaCode();
                if (areaCode.equals(HospitalEnum.FW.getCode())) {
                    fwEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.FC.getCode())) {
                    fcEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.ET.getCode())) {
                    etEntity.add(temp);
                }
            }
            ExportCsvFileUtil<InstantPeopleFlow> exportCsvFileUtil = new ExportCsvFileUtil<>();
            if (etEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(etEntity, InstantPeopleFlow.class, GlobalUtil.ET_FTP_DIRECTORY + completeFileName);
            }
            if (fcEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fcEntity, InstantPeopleFlow.class, GlobalUtil.FC_FTP_DIRECTORY + completeFileName);
            }
            if (fwEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fwEntity, InstantPeopleFlow.class, GlobalUtil.FW_FTP_DIRECTORY + completeFileName);
            }
        }
    }

    private void parseInstantPeopleFlowAttr(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<InstantPeopleFlowAttr> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), InstantPeopleFlowAttr.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveInstantPeopleFlowAttr(list);

            List<InstantPeopleFlowAttr> fwEntity = new ArrayList<>();
            List<InstantPeopleFlowAttr> fcEntity = new ArrayList<>();
            List<InstantPeopleFlowAttr> etEntity = new ArrayList<>();
            for (InstantPeopleFlowAttr temp : list) {
                String areaCode = temp.getAreaCode();
                if (areaCode.equals(HospitalEnum.FW.getCode())) {
                    fwEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.FC.getCode())) {
                    fcEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.ET.getCode())) {
                    etEntity.add(temp);
                }
            }
            ExportCsvFileUtil<InstantPeopleFlowAttr> exportCsvFileUtil = new ExportCsvFileUtil<>();
            if (etEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(etEntity, InstantPeopleFlowAttr.class, GlobalUtil.ET_FTP_DIRECTORY + completeFileName);
            }
            if (fcEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fcEntity, InstantPeopleFlowAttr.class, GlobalUtil.FC_FTP_DIRECTORY + completeFileName);
            }
            if (fwEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fwEntity, InstantPeopleFlowAttr.class, GlobalUtil.FW_FTP_DIRECTORY + completeFileName);
            }
        }
    }

    private void parseInstantPeopleFlowHome(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<InstantPeopleFlowHome> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), InstantPeopleFlowHome.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveInstantPeopleFlowHome(list);

            List<InstantPeopleFlowHome> fwEntity = new ArrayList<>();
            List<InstantPeopleFlowHome> fcEntity = new ArrayList<>();
            List<InstantPeopleFlowHome> etEntity = new ArrayList<>();
            for (InstantPeopleFlowHome temp : list) {
                String areaCode = temp.getAreaCode();
                if (areaCode.equals(HospitalEnum.FW.getCode())) {
                    fwEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.FC.getCode())) {
                    fcEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.ET.getCode())) {
                    etEntity.add(temp);
                }
            }
            ExportCsvFileUtil<InstantPeopleFlowHome> exportCsvFileUtil = new ExportCsvFileUtil<>();
            if (etEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(etEntity, InstantPeopleFlowHome.class, GlobalUtil.ET_FTP_DIRECTORY + completeFileName);
            }
            if (fcEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fcEntity, InstantPeopleFlowHome.class, GlobalUtil.FC_FTP_DIRECTORY + completeFileName);
            }
            if (fwEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fwEntity, InstantPeopleFlowHome.class, GlobalUtil.FW_FTP_DIRECTORY + completeFileName);
            }
        }
    }

    private void parseInstantPeopleFlowAge(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<InstantPeopleFlowAge> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), InstantPeopleFlowAge.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveInstantPeopleFlowAge(list);

            List<InstantPeopleFlowAge> fwEntity = new ArrayList<>();
            List<InstantPeopleFlowAge> fcEntity = new ArrayList<>();
            List<InstantPeopleFlowAge> etEntity = new ArrayList<>();
            for (InstantPeopleFlowAge temp : list) {
                String areaCode = temp.getAreaCode();
                if (areaCode.equals(HospitalEnum.FW.getCode())) {
                    fwEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.FC.getCode())) {
                    fcEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.ET.getCode())) {
                    etEntity.add(temp);
                }
            }
            ExportCsvFileUtil<InstantPeopleFlowAge> exportCsvFileUtil = new ExportCsvFileUtil<>();
            if (etEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(etEntity, InstantPeopleFlowAge.class, GlobalUtil.ET_FTP_DIRECTORY + completeFileName);
            }
            if (fcEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fcEntity, InstantPeopleFlowAge.class, GlobalUtil.FC_FTP_DIRECTORY + completeFileName);
            }
            if (fwEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fwEntity, InstantPeopleFlowAge.class, GlobalUtil.FW_FTP_DIRECTORY + completeFileName);
            }
        }
    }

    private void parseInstantPeopleFlowSex(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<InstantPeopleFlowSex> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), InstantPeopleFlowSex.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveInstantPeopleFlowSex(list);

            List<InstantPeopleFlowSex> fwEntity = new ArrayList<>();
            List<InstantPeopleFlowSex> fcEntity = new ArrayList<>();
            List<InstantPeopleFlowSex> etEntity = new ArrayList<>();
            for (InstantPeopleFlowSex temp : list) {
                String areaCode = temp.getAreaCode();
                if (areaCode.equals(HospitalEnum.FW.getCode())) {
                    fwEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.FC.getCode())) {
                    fcEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.ET.getCode())) {
                    etEntity.add(temp);
                }
            }
            ExportCsvFileUtil<InstantPeopleFlowSex> exportCsvFileUtil = new ExportCsvFileUtil<>();
            if (etEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(etEntity, InstantPeopleFlowSex.class, GlobalUtil.ET_FTP_DIRECTORY + completeFileName);
            }
            if (fcEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fcEntity, InstantPeopleFlowSex.class, GlobalUtil.FC_FTP_DIRECTORY + completeFileName);
            }
            if (fwEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fwEntity, InstantPeopleFlowSex.class, GlobalUtil.FW_FTP_DIRECTORY + completeFileName);
            }
        }
    }

    private void parseInstantInoutFlow(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<InstantInoutFlow> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), InstantInoutFlow.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveInstantInoutFlow(list);

            List<InstantInoutFlow> fwEntity = new ArrayList<>();
            List<InstantInoutFlow> fcEntity = new ArrayList<>();
            List<InstantInoutFlow> etEntity = new ArrayList<>();
            for (InstantInoutFlow temp : list) {
                String areaCode = temp.getAreaCode();
                if (areaCode.equals(HospitalEnum.FW.getCode())) {
                    fwEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.FC.getCode())) {
                    fcEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.ET.getCode())) {
                    etEntity.add(temp);
                }
            }
            ExportCsvFileUtil<InstantInoutFlow> exportCsvFileUtil = new ExportCsvFileUtil<>();
            if (etEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(etEntity, InstantInoutFlow.class, GlobalUtil.ET_FTP_DIRECTORY + completeFileName);
            }
            if (fcEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fcEntity, InstantInoutFlow.class, GlobalUtil.FC_FTP_DIRECTORY + completeFileName);
            }
            if (fwEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fwEntity, InstantInoutFlow.class, GlobalUtil.FW_FTP_DIRECTORY + completeFileName);
            }
        }
    }

    private void parseAreaAppear(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<AreaAppear> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), AreaAppear.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveAreaAppear(list);

            List<AreaAppear> fwEntity = new ArrayList<>();
            List<AreaAppear> fcEntity = new ArrayList<>();
            List<AreaAppear> etEntity = new ArrayList<>();
            for (AreaAppear temp : list) {
                String areaCode = temp.getAreaCode();
                if (areaCode.equals(HospitalEnum.FW.getCode())) {
                    fwEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.FC.getCode())) {
                    fcEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.ET.getCode())) {
                    etEntity.add(temp);
                }
            }
            ExportCsvFileUtil<AreaAppear> exportCsvFileUtil = new ExportCsvFileUtil<>();
            if (etEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(etEntity, AreaAppear.class, GlobalUtil.ET_FTP_DIRECTORY + completeFileName);
            }
            if (fcEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fcEntity, AreaAppear.class, GlobalUtil.FC_FTP_DIRECTORY + completeFileName);
            }
            if (fwEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fwEntity, AreaAppear.class, GlobalUtil.FW_FTP_DIRECTORY + completeFileName);
            }
        }
    }

    private void parseAreaAppearAttr(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<AreaAppearAttr> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), AreaAppearAttr.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveAreaAppearAttr(list);

            List<AreaAppearAttr> fwEntity = new ArrayList<>();
            List<AreaAppearAttr> fcEntity = new ArrayList<>();
            List<AreaAppearAttr> etEntity = new ArrayList<>();
            for (AreaAppearAttr temp : list) {
                String areaCode = temp.getAreaCode();
                if (areaCode.equals(HospitalEnum.FW.getCode())) {
                    fwEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.FC.getCode())) {
                    fcEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.ET.getCode())) {
                    etEntity.add(temp);
                }
            }
            ExportCsvFileUtil<AreaAppearAttr> exportCsvFileUtil = new ExportCsvFileUtil<>();
            if (etEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(etEntity, AreaAppearAttr.class, GlobalUtil.ET_FTP_DIRECTORY + completeFileName);
            }
            if (fcEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fcEntity, AreaAppearAttr.class, GlobalUtil.FC_FTP_DIRECTORY + completeFileName);
            }
            if (fwEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fwEntity, AreaAppearAttr.class, GlobalUtil.FW_FTP_DIRECTORY + completeFileName);
            }
        }
    }

    private void parseAreaAppearHome(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<AreaAppearHome> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), AreaAppearHome.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveAreaAppearHome(list);

            List<AreaAppearHome> fwEntity = new ArrayList<>();
            List<AreaAppearHome> fcEntity = new ArrayList<>();
            List<AreaAppearHome> etEntity = new ArrayList<>();
            for (AreaAppearHome temp : list) {
                String areaCode = temp.getAreaCode();
                if (areaCode.equals(HospitalEnum.FW.getCode())) {
                    fwEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.FC.getCode())) {
                    fcEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.ET.getCode())) {
                    etEntity.add(temp);
                }
            }
            ExportCsvFileUtil<AreaAppearHome> exportCsvFileUtil = new ExportCsvFileUtil<>();
            if (etEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(etEntity, AreaAppearHome.class, GlobalUtil.ET_FTP_DIRECTORY + completeFileName);
            }
            if (fcEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fcEntity, AreaAppearHome.class, GlobalUtil.FC_FTP_DIRECTORY + completeFileName);
            }
            if (fwEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fwEntity, AreaAppearHome.class, GlobalUtil.FW_FTP_DIRECTORY + completeFileName);
            }
        }
    }

    private void parseActiveUser(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<ActiveUser> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), ActiveUser.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveActiveUser(list);

            List<ActiveUser> fwEntity = new ArrayList<>();
            List<ActiveUser> fcEntity = new ArrayList<>();
            List<ActiveUser> etEntity = new ArrayList<>();
            for (ActiveUser temp : list) {
                String areaCode = temp.getAreaCode();
                if (areaCode.equals(HospitalEnum.FW.getCode())) {
                    fwEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.FC.getCode())) {
                    fcEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.ET.getCode())) {
                    etEntity.add(temp);
                }
            }
            ExportCsvFileUtil<ActiveUser> exportCsvFileUtil = new ExportCsvFileUtil<>();
            if (etEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(etEntity, ActiveUser.class, GlobalUtil.ET_FTP_DIRECTORY + completeFileName);
            }
            if (fcEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fcEntity, ActiveUser.class, GlobalUtil.FC_FTP_DIRECTORY + completeFileName);
            }
            if (fwEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fwEntity, ActiveUser.class, GlobalUtil.FW_FTP_DIRECTORY + completeFileName);
            }
        }
    }

    private void parseActiveUserAttr(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<ActiveUserAttr> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), ActiveUserAttr.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveActiveUserAttr(list);

            List<ActiveUserAttr> fwEntity = new ArrayList<>();
            List<ActiveUserAttr> fcEntity = new ArrayList<>();
            List<ActiveUserAttr> etEntity = new ArrayList<>();
            for (ActiveUserAttr temp : list) {
                String areaCode = temp.getAreaCode();
                if (areaCode.equals(HospitalEnum.FW.getCode())) {
                    fwEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.FC.getCode())) {
                    fcEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.ET.getCode())) {
                    etEntity.add(temp);
                }
            }
            ExportCsvFileUtil<ActiveUserAttr> exportCsvFileUtil = new ExportCsvFileUtil<>();
            if (etEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(etEntity, ActiveUserAttr.class, GlobalUtil.ET_FTP_DIRECTORY + completeFileName);
            }
            if (fcEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fcEntity, ActiveUserAttr.class, GlobalUtil.FC_FTP_DIRECTORY + completeFileName);
            }
            if (fwEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fwEntity, ActiveUserAttr.class, GlobalUtil.FW_FTP_DIRECTORY + completeFileName);
            }
        }
    }

    private void parseActiveUserHome(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<ActiveUserHome> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), ActiveUserHome.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveActiveUserHome(list);

            List<ActiveUserHome> fwEntity = new ArrayList<>();
            List<ActiveUserHome> fcEntity = new ArrayList<>();
            List<ActiveUserHome> etEntity = new ArrayList<>();
            for (ActiveUserHome temp : list) {
                String areaCode = temp.getAreaCode();
                if (areaCode.equals(HospitalEnum.FW.getCode())) {
                    fwEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.FC.getCode())) {
                    fcEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.ET.getCode())) {
                    etEntity.add(temp);
                }
            }
            ExportCsvFileUtil<ActiveUserHome> exportCsvFileUtil = new ExportCsvFileUtil<>();
            if (etEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(etEntity, ActiveUserHome.class, GlobalUtil.ET_FTP_DIRECTORY + completeFileName);
            }
            if (fcEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fcEntity, ActiveUserHome.class, GlobalUtil.FC_FTP_DIRECTORY + completeFileName);
            }
            if (fwEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fwEntity, ActiveUserHome.class, GlobalUtil.FW_FTP_DIRECTORY + completeFileName);
            }
        }
    }

    private void parseActiveUserAge(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<ActiveUserAge> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), ActiveUserAge.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveActiveUserAge(list);

            List<ActiveUserAge> fwEntity = new ArrayList<>();
            List<ActiveUserAge> fcEntity = new ArrayList<>();
            List<ActiveUserAge> etEntity = new ArrayList<>();
            for (ActiveUserAge temp : list) {
                String areaCode = temp.getAreaCode();
                if (areaCode.equals(HospitalEnum.FW.getCode())) {
                    fwEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.FC.getCode())) {
                    fcEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.ET.getCode())) {
                    etEntity.add(temp);
                }
            }
            ExportCsvFileUtil<ActiveUserAge> exportCsvFileUtil = new ExportCsvFileUtil<>();
            if (etEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(etEntity, ActiveUserAge.class, GlobalUtil.ET_FTP_DIRECTORY + completeFileName);
            }
            if (fcEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fcEntity, ActiveUserAge.class, GlobalUtil.FC_FTP_DIRECTORY + completeFileName);
            }
            if (fwEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fwEntity, ActiveUserAge.class, GlobalUtil.FW_FTP_DIRECTORY + completeFileName);
            }
        }
    }

    private void parseActiveUserSex(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<ActiveUserSex> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), ActiveUserSex.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveActiveUserSex(list);

            List<ActiveUserSex> fwEntity = new ArrayList<>();
            List<ActiveUserSex> fcEntity = new ArrayList<>();
            List<ActiveUserSex> etEntity = new ArrayList<>();
            for (ActiveUserSex temp : list) {
                String areaCode = temp.getAreaCode();
                if (areaCode.equals(HospitalEnum.FW.getCode())) {
                    fwEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.FC.getCode())) {
                    fcEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.ET.getCode())) {
                    etEntity.add(temp);
                }
            }
            ExportCsvFileUtil<ActiveUserSex> exportCsvFileUtil = new ExportCsvFileUtil<>();
            if (etEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(etEntity, ActiveUserSex.class, GlobalUtil.ET_FTP_DIRECTORY + completeFileName);
            }
            if (fcEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fcEntity, ActiveUserSex.class, GlobalUtil.FC_FTP_DIRECTORY + completeFileName);
            }
            if (fwEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fwEntity, ActiveUserSex.class, GlobalUtil.FW_FTP_DIRECTORY + completeFileName);
            }
        }
    }

    private void parseAreaStayDuration(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<AreaStayDuration> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), AreaStayDuration.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveAreaStayDuration(list);

            List<AreaStayDuration> fwEntity = new ArrayList<>();
            List<AreaStayDuration> fcEntity = new ArrayList<>();
            List<AreaStayDuration> etEntity = new ArrayList<>();
            for (AreaStayDuration temp : list) {
                String areaCode = temp.getAreaCode();
                if (areaCode.equals(HospitalEnum.FW.getCode())) {
                    fwEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.FC.getCode())) {
                    fcEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.ET.getCode())) {
                    etEntity.add(temp);
                }
            }
            ExportCsvFileUtil<AreaStayDuration> exportCsvFileUtil = new ExportCsvFileUtil<>();
            if (etEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(etEntity, AreaStayDuration.class, GlobalUtil.ET_FTP_DIRECTORY + completeFileName);
            }
            if (fcEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fcEntity, AreaStayDuration.class, GlobalUtil.FC_FTP_DIRECTORY + completeFileName);
            }
            if (fwEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fwEntity, AreaStayDuration.class, GlobalUtil.FW_FTP_DIRECTORY + completeFileName);
            }
        }
    }

    private void parseAreaStayDurationAttr(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<AreaStayDurationAttr> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), AreaStayDurationAttr.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveAreaStayDurationAttr(list);

            List<AreaStayDurationAttr> fwEntity = new ArrayList<>();
            List<AreaStayDurationAttr> fcEntity = new ArrayList<>();
            List<AreaStayDurationAttr> etEntity = new ArrayList<>();
            for (AreaStayDurationAttr temp : list) {
                String areaCode = temp.getAreaCode();
                if (areaCode.equals(HospitalEnum.FW.getCode())) {
                    fwEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.FC.getCode())) {
                    fcEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.ET.getCode())) {
                    etEntity.add(temp);
                }
            }
            ExportCsvFileUtil<AreaStayDurationAttr> exportCsvFileUtil = new ExportCsvFileUtil<>();
            if (etEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(etEntity, AreaStayDurationAttr.class, GlobalUtil.ET_FTP_DIRECTORY + completeFileName);
            }
            if (fcEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fcEntity, AreaStayDurationAttr.class, GlobalUtil.FC_FTP_DIRECTORY + completeFileName);
            }
            if (fwEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fwEntity, AreaStayDurationAttr.class, GlobalUtil.FW_FTP_DIRECTORY + completeFileName);
            }
        }
    }

    private void parseAreaStayDurationHome(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<AreaStayDurationHome> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), AreaStayDurationHome.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveAreaStayDurationHome(list);

            List<AreaStayDurationHome> fwEntity = new ArrayList<>();
            List<AreaStayDurationHome> fcEntity = new ArrayList<>();
            List<AreaStayDurationHome> etEntity = new ArrayList<>();
            for (AreaStayDurationHome temp : list) {
                String areaCode = temp.getAreaCode();
                if (areaCode.equals(HospitalEnum.FW.getCode())) {
                    fwEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.FC.getCode())) {
                    fcEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.ET.getCode())) {
                    etEntity.add(temp);
                }
            }
            ExportCsvFileUtil<AreaStayDurationHome> exportCsvFileUtil = new ExportCsvFileUtil<>();
            if (etEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(etEntity, AreaStayDurationHome.class, GlobalUtil.ET_FTP_DIRECTORY + completeFileName);
            }
            if (fcEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fcEntity, AreaStayDurationHome.class, GlobalUtil.FC_FTP_DIRECTORY + completeFileName);
            }
            if (fwEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fwEntity, AreaStayDurationHome.class, GlobalUtil.FW_FTP_DIRECTORY + completeFileName);
            }
        }
    }

    private void parseAreaStayDurationAge(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<AreaStayDurationAge> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), AreaStayDurationAge.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveAreaStayDurationAge(list);

            List<AreaStayDurationAge> fwEntity = new ArrayList<>();
            List<AreaStayDurationAge> fcEntity = new ArrayList<>();
            List<AreaStayDurationAge> etEntity = new ArrayList<>();
            for (AreaStayDurationAge temp : list) {
                String areaCode = temp.getAreaCode();
                if (areaCode.equals(HospitalEnum.FW.getCode())) {
                    fwEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.FC.getCode())) {
                    fcEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.ET.getCode())) {
                    etEntity.add(temp);
                }
            }
            ExportCsvFileUtil<AreaStayDurationAge> exportCsvFileUtil = new ExportCsvFileUtil<>();
            if (etEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(etEntity, AreaStayDurationAge.class, GlobalUtil.ET_FTP_DIRECTORY + completeFileName);
            }
            if (fcEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fcEntity, AreaStayDurationAge.class, GlobalUtil.FC_FTP_DIRECTORY + completeFileName);
            }
            if (fwEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fwEntity, AreaStayDurationAge.class, GlobalUtil.FW_FTP_DIRECTORY + completeFileName);
            }
        }
    }

    private void parseAreaStayDurationSex(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<AreaStayDurationSex> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), AreaStayDurationSex.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveAreaStayDurationSex(list);

            List<AreaStayDurationSex> fwEntity = new ArrayList<>();
            List<AreaStayDurationSex> fcEntity = new ArrayList<>();
            List<AreaStayDurationSex> etEntity = new ArrayList<>();
            for (AreaStayDurationSex temp : list) {
                String areaCode = temp.getAreaCode();
                if (areaCode.equals(HospitalEnum.FW.getCode())) {
                    fwEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.FC.getCode())) {
                    fcEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.ET.getCode())) {
                    etEntity.add(temp);
                }
            }
            ExportCsvFileUtil<AreaStayDurationSex> exportCsvFileUtil = new ExportCsvFileUtil<>();
            if (etEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(etEntity, AreaStayDurationSex.class, GlobalUtil.ET_FTP_DIRECTORY + completeFileName);
            }
            if (fcEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fcEntity, AreaStayDurationSex.class, GlobalUtil.FC_FTP_DIRECTORY + completeFileName);
            }
            if (fwEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fwEntity, AreaStayDurationSex.class, GlobalUtil.FW_FTP_DIRECTORY + completeFileName);
            }
        }
    }

    private void parseDailyDay(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<DailyDay> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), DailyDay.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveDailyDay(list);

            List<DailyDay> fwEntity = new ArrayList<>();
            List<DailyDay> fcEntity = new ArrayList<>();
            List<DailyDay> etEntity = new ArrayList<>();
            for (DailyDay temp : list) {
                String areaCode = temp.getAreaCode();
                if (areaCode.equals(HospitalEnum.FW.getCode())) {
                    fwEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.FC.getCode())) {
                    fcEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.ET.getCode())) {
                    etEntity.add(temp);
                }
            }
            ExportCsvFileUtil<DailyDay> exportCsvFileUtil = new ExportCsvFileUtil<>();
            if (etEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(etEntity, DailyDay.class, GlobalUtil.ET_FTP_DIRECTORY + completeFileName);
            }
            if (fcEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fcEntity, DailyDay.class, GlobalUtil.FC_FTP_DIRECTORY + completeFileName);
            }
            if (fwEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fwEntity, DailyDay.class, GlobalUtil.FW_FTP_DIRECTORY + completeFileName);
            }
        }
    }

    private void parseDailyNight(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<DailyNight> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), DailyNight.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveDailyNight(list);

            List<DailyNight> fwEntity = new ArrayList<>();
            List<DailyNight> fcEntity = new ArrayList<>();
            List<DailyNight> etEntity = new ArrayList<>();
            for (DailyNight temp : list) {
                String areaCode = temp.getAreaCode();
                if (areaCode.equals(HospitalEnum.FW.getCode())) {
                    fwEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.FC.getCode())) {
                    fcEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.ET.getCode())) {
                    etEntity.add(temp);
                }
            }
            ExportCsvFileUtil<DailyNight> exportCsvFileUtil = new ExportCsvFileUtil<>();
            if (etEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(etEntity, DailyNight.class, GlobalUtil.ET_FTP_DIRECTORY + completeFileName);
            }
            if (fcEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fcEntity, DailyNight.class, GlobalUtil.FC_FTP_DIRECTORY + completeFileName);
            }
            if (fwEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fwEntity, DailyNight.class, GlobalUtil.FW_FTP_DIRECTORY + completeFileName);
            }
        }
    }

    private void parseDailyCommuteRadius(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<DailyCommuteRadius> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), DailyCommuteRadius.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveDailyCommuteRadius(list);

            List<DailyCommuteRadius> fwEntity = new ArrayList<>();
            List<DailyCommuteRadius> fcEntity = new ArrayList<>();
            List<DailyCommuteRadius> etEntity = new ArrayList<>();
            for (DailyCommuteRadius temp : list) {
                String areaCode;
                if (temp.getWorkAreaCode().startsWith("300101")) {
                    areaCode = temp.getWorkAreaCode();
                } else if (temp.getLiveAreaCode().startsWith("300101")) {
                    areaCode = temp.getLiveAreaCode();
                } else {
                    continue;
                }
                if (areaCode.equals(HospitalEnum.FW.getCode())) {
                    fwEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.FC.getCode())) {
                    fcEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.ET.getCode())) {
                    etEntity.add(temp);
                }
            }
            ExportCsvFileUtil<DailyCommuteRadius> exportCsvFileUtil = new ExportCsvFileUtil<>();
            if (etEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(etEntity, DailyCommuteRadius.class, GlobalUtil.ET_FTP_DIRECTORY + completeFileName);
            }
            if (fcEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fcEntity, DailyCommuteRadius.class, GlobalUtil.FC_FTP_DIRECTORY + completeFileName);
            }
            if (fwEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fwEntity, DailyCommuteRadius.class, GlobalUtil.FW_FTP_DIRECTORY + completeFileName);
            }
        }
    }

    private void parseDailyCommuteTime(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<DailyCommuteTime> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), DailyCommuteTime.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveDailyCommuteTime(list);

            List<DailyCommuteTime> fwEntity = new ArrayList<>();
            List<DailyCommuteTime> fcEntity = new ArrayList<>();
            List<DailyCommuteTime> etEntity = new ArrayList<>();
            for (DailyCommuteTime temp : list) {
                String areaCode;
                if (temp.getWorkAreaCode().startsWith("300101")) {
                    areaCode = temp.getWorkAreaCode();
                } else if (temp.getLiveAreaCode().startsWith("300101")) {
                    areaCode = temp.getLiveAreaCode();
                } else {
                    continue;
                }
                if (areaCode.equals(HospitalEnum.FW.getCode())) {
                    fwEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.FC.getCode())) {
                    fcEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.ET.getCode())) {
                    etEntity.add(temp);
                }
            }
            ExportCsvFileUtil<DailyCommuteTime> exportCsvFileUtil = new ExportCsvFileUtil<>();
            if (etEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(etEntity, DailyCommuteTime.class, GlobalUtil.ET_FTP_DIRECTORY + completeFileName);
            }
            if (fcEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fcEntity, DailyCommuteTime.class, GlobalUtil.FC_FTP_DIRECTORY + completeFileName);
            }
            if (fwEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fwEntity, DailyCommuteTime.class, GlobalUtil.FW_FTP_DIRECTORY + completeFileName);
            }
        }
    }

    private void parseTouristAppear(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<TouristAppear> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), TouristAppear.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveTouristAppear(list);

            List<TouristAppear> fwEntity = new ArrayList<>();
            List<TouristAppear> fcEntity = new ArrayList<>();
            List<TouristAppear> etEntity = new ArrayList<>();
            for (TouristAppear temp : list) {
                String areaCode = temp.getAreaCode();
                if (areaCode.equals(HospitalEnum.FW.getCode())) {
                    fwEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.FC.getCode())) {
                    fcEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.ET.getCode())) {
                    etEntity.add(temp);
                }
            }
            ExportCsvFileUtil<TouristAppear> exportCsvFileUtil = new ExportCsvFileUtil<>();
            if (etEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(etEntity, TouristAppear.class, GlobalUtil.ET_FTP_DIRECTORY + completeFileName);
            }
            if (fcEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fcEntity, TouristAppear.class, GlobalUtil.FC_FTP_DIRECTORY + completeFileName);
            }
            if (fwEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fwEntity, TouristAppear.class, GlobalUtil.FW_FTP_DIRECTORY + completeFileName);
            }
        }
    }

    private void parseTouristAppearAttr(String fileAbsPath) {
        CsvReader reader = CsvUtil.getReader();
        List<TouristAppearAttr> list = reader.read(ResourceUtil.getReader(fileAbsPath, Charset.forName("GBK")), TouristAppearAttr.class);
        if (list.size() > 0) {
            parseCsvFileDao.batchSaveTouristAppearAttr(list);

            List<TouristAppearAttr> fwEntity = new ArrayList<>();
            List<TouristAppearAttr> fcEntity = new ArrayList<>();
            List<TouristAppearAttr> etEntity = new ArrayList<>();
            for (TouristAppearAttr temp : list) {
                String areaCode = temp.getAreaCode();
                if (areaCode.equals(HospitalEnum.FW.getCode())) {
                    fwEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.FC.getCode())) {
                    fcEntity.add(temp);
                } else if (areaCode.equals(HospitalEnum.ET.getCode())) {
                    etEntity.add(temp);
                }
            }
            ExportCsvFileUtil<TouristAppearAttr> exportCsvFileUtil = new ExportCsvFileUtil<>();
            if (etEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(etEntity, TouristAppearAttr.class, GlobalUtil.ET_FTP_DIRECTORY + completeFileName);
            }
            if (fcEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fcEntity, TouristAppearAttr.class, GlobalUtil.FC_FTP_DIRECTORY + completeFileName);
            }
            if (fwEntity.size() > 0) {
                exportCsvFileUtil.createCsvFile(fwEntity, TouristAppearAttr.class, GlobalUtil.FW_FTP_DIRECTORY + completeFileName);
            }
        }
    }
}
