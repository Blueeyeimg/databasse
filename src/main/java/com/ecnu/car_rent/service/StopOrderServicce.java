package com.ecnu.car_rent.service;

import com.ecnu.car_rent.model.StopOrder;

public interface StopOrderServicce {

    boolean addNewStopOrder(StopOrder order);//初始getName为空，状态由getName是否为空判断未完成/已完成


    boolean deleteStopOrderById();//管理员可删除任意订单


    boolean updateStopOrder(StopOrder order);//利用order.id修改原StopOrder


    boolean changeStateToFinished(String getName);//设置获得车位的用户以表示订单状态为已完成


    StopOrder getStopOrderById(int id);

    StopOrder[] getStopOrderByGetName(String getName);//按id逆序

}
