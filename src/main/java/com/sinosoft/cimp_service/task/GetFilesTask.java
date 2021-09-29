package com.sinosoft.cimp_service.task;

import com.sinosoft.cimp_service.service.ParseCsvFileService;
import com.sinosoft.cimp_service.util.FtpUtil;
import com.sinosoft.cimp_service.util.GlobalUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.io.File;

/**
 * @author hiYuzu
 * @version V1.0
 * @date 2021/9/28 9:29
 */
@Component
public class GetFilesTask {
    private final Logger LOG = LoggerFactory.getLogger(GetFilesTask.class);
    @Resource
    private ParseCsvFileService parseCsvFileService;

    @Resource
    private FtpUtil ftpUtil;

    @Scheduled(cron = "0 */30 * * * ?")
    public void getFtpFiles() {
        ftpUtil.getFiles();
    }

    @Scheduled(cron = "0 */30 * * * ?")
    public void readLocalFiles() {
        File fileDir = new File(GlobalUtil.SAVE_DIRECTORY);
        if (!fileDir.exists() && !fileDir.isDirectory()) {
            if (!fileDir.mkdirs()) {
                LOG.error("创建接收文件夹失败！");
            }
        }
        File[] files = fileDir.listFiles();
        if (files != null && files.length > 0) {
            for (File file : files) {
                try {
                    parseCsvFileService.parseCsvFile(file);
                    if (file.delete()) {
                        LOG.info("解析完成，已删除本地文件：" + file.getName());
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    LOG.error("文件[" + file.getName() + "]解析失败：" + e.getMessage());
                }
            }
        }
    }
}
