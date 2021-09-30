package com.sinosoft.cimp_service.dao;

import com.sinosoft.cimp_service.entity.ActiveUser;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author hiYuzu
 * @version V1.0
 * @date 2021/9/10 16:00
 */
public interface IGeneralDao {

    /**
     * 活跃用户
     *
     * @param activeUser {@link ActiveUser}
     * @return {@link List}<{@link ActiveUser}>
     */
    List<ActiveUser> activeUsers(@Param("activeUser") ActiveUser activeUser);
}
