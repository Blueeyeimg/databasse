package com.ecnu.car_rent.dao;

import com.ecnu.car_rent.model.StopOrder;

import java.util.List;

public interface StopOrderMapper {

    List<StopOrder> selectAllFinishedStopOrdersByGetName(String getName);//按id逆序,获取某个人的所有已完成stopOrder

    List<StopOrder> selectAllUnfinishedStopOrders(String emptyString);

    List<StopOrder> selectAllFinishedStopOrders(String emptyString);

    List<StopOrder> selectAllStopOrders();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table stop_order
     *
     * @mbggenerated Tue Dec 19 14:39:15 CST 2017
     */
    int deleteByPrimaryKey(Integer stopOrderId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table stop_order
     *
     * @mbggenerated Tue Dec 19 14:39:15 CST 2017
     */
    int insert(StopOrder record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table stop_order
     *
     * @mbggenerated Tue Dec 19 14:39:15 CST 2017
     */
    int insertSelective(StopOrder record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table stop_order
     *
     * @mbggenerated Tue Dec 19 14:39:15 CST 2017
     */
    StopOrder selectByPrimaryKey(Integer stopOrderId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table stop_order
     *
     * @mbggenerated Tue Dec 19 14:39:15 CST 2017
     */
    int updateByPrimaryKeySelective(StopOrder record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table stop_order
     *
     * @mbggenerated Tue Dec 19 14:39:15 CST 2017
     */
    int updateByPrimaryKeyWithBLOBs(StopOrder record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table stop_order
     *
     * @mbggenerated Tue Dec 19 14:39:15 CST 2017
     */
    int updateByPrimaryKey(StopOrder record);
}