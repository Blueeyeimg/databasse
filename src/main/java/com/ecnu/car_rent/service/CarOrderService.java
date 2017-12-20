package com.ecnu.car_rent.service;

import com.ecnu.car_rent.model.CarOrder;

import java.util.List;


public interface CarOrderService {

    boolean addNewCarOrder(CarOrder order);//默认的state字段为0（待审核）,getName,setName有一个为null/空,id为自增字段不需要


    boolean deleteCarOrderById(int id);
//    boolean deleteCarOrderByName(String name);
//    boolean deleteCarOrderBygetName(String getName);
//    boolean deleteCarOrderByHasName(String hasName)；
boolean updateUnfinishedCarOrder(CarOrder order);//用户想修改，order里面有id，由此id更新原订单，用户想修改

    boolean changeStateToUnfinished(int id);//state: 0:待审核，1:未完成，2:已完成,此处表示管理员审核后由待审核状态改为未完成

    boolean changeStateToFinished(CarOrder order);

    int changeNameToInvalid(String name);//将订单中包含的已经删除的用户名后面添加字符串"（无效）"字段


    CarOrder getCarOrderById(int id);

    List<CarOrder> getCarOrdersByGetName(String getName);//按id逆序

    List<CarOrder> getCarOrdersByHasName(String hasName);//按id逆序

    List<CarOrder> getCarOrdersByName(String name);//按id逆序

    List<CarOrder> getCarOrdersByState(int state);//按id逆序

    List<CarOrder> getCarOrdersByType(int type);//按id逆序

    List<CarOrder> getAllCarOrders();//按id逆序


}
