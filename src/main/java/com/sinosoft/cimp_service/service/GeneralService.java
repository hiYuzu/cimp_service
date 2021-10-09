package com.sinosoft.cimp_service.service;

import com.sinosoft.cimp_service.dao.IGeneralDao;
import com.sinosoft.cimp_service.entity.ActiveUser;
import com.sinosoft.cimp_service.pojo.ActiveUserPojo;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author hiYuzu
 * @version V1.0
 * @date 2021/9/10 15:49
 */
@Service("generalService")
public class GeneralService {

    @Resource
    private IGeneralDao generalDao;

    public List<ActiveUser> activeUsers(ActiveUserPojo activeUser) {
        return generalDao.activeUsers(activeUser);
    }
}
