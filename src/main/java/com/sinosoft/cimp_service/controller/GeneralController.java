package com.sinosoft.cimp_service.controller;

import com.sinosoft.cimp_service.entity.ActiveUser;
import com.sinosoft.cimp_service.pojo.ActiveUserPojo;
import com.sinosoft.cimp_service.service.GeneralService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author hiYuzu
 * @version V1.0
 * @date 2021/9/10 15:47
 */
@RestController
@RequestMapping("/data")
public class GeneralController {
    @Resource
    private GeneralService generalService;

    @PostMapping("/activeUser")
    public List<ActiveUser> activeUsers(ActiveUserPojo activeUser) {
        return generalService.activeUsers(activeUser);
    }

}
