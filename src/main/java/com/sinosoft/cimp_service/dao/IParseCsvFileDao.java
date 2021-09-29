package com.sinosoft.cimp_service.dao;

import com.sinosoft.cimp_service.entity.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author hiYuzu
 * @version V1.0
 * @date 2021/9/28 11:30
 */
public interface IParseCsvFileDao {
    /**
     * 批量保存瞬时人流量{@link InstantPeopleFlow}
     *
     * @param list {@link InstantPeopleFlow}
     */
    void batchSaveInstantPeopleFlow(@Param("list") List<InstantPeopleFlow> list);

    /**
     * 批量保存瞬时归属地人流量{@link InstantPeopleFlowAttr}
     *
     * @param list {@link InstantPeopleFlowAttr}
     */
    void batchSaveInstantPeopleFlowAttr(@Param("list") List<InstantPeopleFlowAttr> list);

    /**
     * 批量保存瞬时BI人流量籍贯归属地{@link InstantPeopleFlowHome}
     *
     * @param list {@link InstantPeopleFlowHome}
     */
    void batchSaveInstantPeopleFlowHome(@Param("list") List<InstantPeopleFlowHome> list);

    /**
     * 批量保存瞬时BI人流量年龄段{@link InstantPeopleFlowAge}
     *
     * @param list {@link InstantPeopleFlowAge}
     */
    void batchSaveInstantPeopleFlowAge(@Param("list") List<InstantPeopleFlowAge> list);

    /**
     * 批量保存瞬时BI人流量性别{@link InstantPeopleFlowSex}
     *
     * @param list {@link InstantPeopleFlowSex}
     */
    void batchSaveInstantPeopleFlowSex(@Param("list") List<InstantPeopleFlowSex> list);

    /**
     * 批量保存瞬时流入流出{@link InstantInoutFlow}
     *
     * @param list {@link InstantInoutFlow}
     */
    void batchSaveInstantInoutFlow(@Param("list") List<InstantInoutFlow> list);

    /**
     * 批量保存区域出现量{@link AreaAppear}
     *
     * @param list {@link AreaAppear}
     */
    void batchSaveAreaAppear(@Param("list") List<AreaAppear> list);

    /**
     * 批量保存区域归属地出现量{@link AreaAppearAttr}
     *
     * @param list {@link AreaAppearAttr}
     */
    void batchSaveAreaAppearAttr(@Param("list") List<AreaAppearAttr> list);

    /**
     * 批量保存区域出现量BI籍贯归属{@link AreaAppearHome}
     *
     * @param list {@link AreaAppearHome}
     */
    void batchSaveAreaAppearHome(@Param("list") List<AreaAppearHome> list);

    /**
     * 批量保存活跃用户{@link ActiveUser}
     *
     * @param list {@link ActiveUser}
     */
    void batchSaveActiveUser(@Param("list") List<ActiveUser> list);

    /**
     * 批量保存活跃用户归属{@link ActiveUserAttr}
     *
     * @param list {@link ActiveUserAttr}
     */
    void batchSaveActiveUserAttr(@Param("list") List<ActiveUserAttr> list);

    /**
     * 批量保存活跃用户BI籍贯归属{@link ActiveUserHome}
     *
     * @param list {@link ActiveUserHome}
     */
    void batchSaveActiveUserHome(@Param("list") List<ActiveUserHome> list);

    /**
     * 批量保存活跃用户BI年龄段{@link ActiveUserAge}
     *
     * @param list {@link ActiveUserAge}
     */
    void batchSaveActiveUserAge(@Param("list") List<ActiveUserAge> list);

    /**
     * 批量保存活跃用户BI性别{@link ActiveUserSex}
     *
     * @param list {@link ActiveUserSex}
     */
    void batchSaveActiveUserSex(@Param("list") List<ActiveUserSex> list);

    /**
     * 批量保存区域停留时长{@link AreaStayDuration}
     *
     * @param list {@link AreaStayDuration}
     */
    void batchSaveAreaStayDuration(@Param("list") List<AreaStayDuration> list);

    /**
     * 批量保存区域停留时长归属{@link AreaStayDurationAttr}
     *
     * @param list {@link AreaStayDurationAttr}
     */
    void batchSaveAreaStayDurationAttr(@Param("list") List<AreaStayDurationAttr> list);

    /**
     * 批量保存区域停留时长BI户籍地{@link AreaStayDurationHome}
     *
     * @param list {@link AreaStayDurationHome}
     */
    void batchSaveAreaStayDurationHome(@Param("list") List<AreaStayDurationHome> list);

    /**
     * 批量保存区域停留时长BI年龄段{@link AreaStayDurationAge}
     *
     * @param list {@link AreaStayDurationAge}
     */
    void batchSaveAreaStayDurationAge(@Param("list") List<AreaStayDurationAge> list);

    /**
     * 批量保存区域停留时长BI性别{@link AreaStayDurationSex}
     *
     * @param list {@link AreaStayDurationSex}
     */
    void batchSaveAreaStayDurationSex(@Param("list") List<AreaStayDurationSex> list);

    /**
     * 批量保存日白天用户{@link DailyDay}
     *
     * @param list {@link DailyDay}
     */
    void batchSaveDailyDay(@Param("list") List<DailyDay> list);

    /**
     * 批量保存日夜晚用户{@link DailyNight}
     *
     * @param list {@link DailyNight}
     */
    void batchSaveDailyNight(@Param("list") List<DailyNight> list);

    /**
     * 批量保存日通勤半径{@link DailyCommuteRadius}
     *
     * @param list {@link DailyCommuteRadius}
     */
    void batchSaveDailyCommuteRadius(@Param("list") List<DailyCommuteRadius> list);

    /**
     * 批量保存日通勤时间{@link DailyCommuteTime}
     *
     * @param list {@link DailyCommuteTime}
     */
    void batchSaveDailyCommuteTime(@Param("list") List<DailyCommuteTime> list);


    /**
     * 批量保存游客出现量{@link TouristAppear}
     *
     * @param list {@link TouristAppear}
     */
    void batchSaveTouristAppear(@Param("list") List<TouristAppear> list);

    /**
     * 批量保存游客出现量归属地{@link TouristAppearAttr}
     *
     * @param list {@link TouristAppearAttr}
     */
    void batchSaveTouristAppearAttr(@Param("list") List<TouristAppearAttr> list);
}
