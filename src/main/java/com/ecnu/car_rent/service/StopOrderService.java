package com.ecnu.car_rent.service;

import com.ecnu.car_rent.model.StopOrder;

import java.util.List;

public interface StopOrderService {

    boolean addNewStopOrder(StopOrder order);//初始getName为空，状态由getName是否为空判断未完成/已完成


    boolean deleteStopOrderById(int id);//管理员可删除任意订单


    boolean updateStopOrder(StopOrder order);//利用order.id修改原StopOrder


    boolean changeStateToFinishedById(StopOrder order);//设置获得车位的用户以表示订单状态为已完成


    StopOrder getStopOrderById(int id);

    List<StopOrder> getAllFinishedStopOrdersByGetName(String getName);//按id逆序,获取某个人的所有已完成stopOrder

    List<StopOrder> getAllUnfinishedStopOrders();

    List<StopOrder> getAllFinishedStopOrders();

    List<StopOrder> getAllStopOrders();

}
