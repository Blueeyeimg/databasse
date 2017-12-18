package com.ecnu.car_rent.service;

import com.ecnu.car_rent.model.CarOrder;


public interface CarOrderService {

    boolean addNewCarOrder(CarOrder order);//默认的state字段为0（待审核）,getName,setName有一个为null/空,id为自增字段不需要

    boolean deleteCarOrderById(int id);
//    boolean deleteCarOrderByName(String name);
//    boolean deleteCarOrderBygetName(String getName);
//    boolean deleteCarOrderByHasName(String hasName);

    boolean changeStateToUnfinished(int id);//state: 0:待审核，1:未完成，2:已完成

    boolean changeStateToFinished(int id);

    int changeNameToInvalid(String name);//将订单中包含的已经删除的用户名后面添加字符串"（无效）"字段

    CarOrder getCarOrderById(int id);

    CarOrder[] getCarOrderByGetName(String getName);//按id逆序

    CarOrder[] getCarOrderByHasName(String hasName);//按id逆序

    CarOrder[] getCarOrderByname(String name);//按id逆序

    CarOrder[] getCarOrdersByState(int state);//按id逆序

    CarOrder[] getAllCarOrders();//按id逆序


}
