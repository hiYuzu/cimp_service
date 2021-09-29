package com.sinosoft.cimp_service.controller;

import com.sinosoft.cimp_service.entity.ActiveUser;
import com.sinosoft.cimp_service.service.GeneralService;
import org.springframework.web.bind.annotation.GetMapping;
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

    @GetMapping("/activeUser")
    public List<ActiveUser> activeUser() {
        return generalService.activeUser();
    }

}
