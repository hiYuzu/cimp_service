package com.sinosoft.cimp_service.util;

import cn.hutool.core.io.FileUtil;
import cn.hutool.extra.ftp.Ftp;
import cn.hutool.extra.ftp.FtpMode;
import com.sinosoft.cimp_service.model.FtpModel;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author hiYuzu
 * @version V1.0
 * @date 2021/9/27 18:04
 */
@Component
public class FtpUtil {
    private final Logger LOG = LoggerFactory.getLogger(FtpUtil.class);
    @Resource
    private FtpModel ftpModel;

    public void getFiles() {
        try {
            Ftp ftp = new Ftp(ftpModel.getHost(), ftpModel.getPort(), ftpModel.getName(), ftpModel.getPwd());

            if (ftpModel.isActive()) {
                ftp.setMode(FtpMode.Active);
            }
            String ftpDir = ftpModel.getFtpDir();
            ftp.cd(ftpDir);
            ftp.recursiveDownloadFolder(ftpDir, FileUtil.file(GlobalUtil.SAVE_DIRECTORY));
            ftp.delDir(ftpDir);
            ftp.close();
        } catch (Exception e) {
            e.printStackTrace();
            LOG.error(e.getMessage());
        }
    }
}
