package com.sinosoft.cimp_service.dao;

import com.sinosoft.cimp_service.entity.ActiveUser;
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
     * @return {@link List}<{@link ActiveUser}>
     */
    @Select("select * from active_user")
    List<ActiveUser> activeUser();

    /**
     * 活跃用户
     *
     * @param activeUser {@link ActiveUser}
     * @return {@link List}<{@link ActiveUser}>
     */
    @Select("select * from active_user where area_code = #{areaCode} and time = #{time} and amount = #{amount}")
    List<ActiveUser> activeUsers(ActiveUser activeUser);
}
