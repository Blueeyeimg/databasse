package com.ecnu.car_rent.service.impl;

import com.ecnu.car_rent.model.CarOrder;
import com.ecnu.car_rent.service.CarOrderService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(rollbackFor = Exception.class)
public class CarOrderServiceImpl implements CarOrderService {

    public boolean addNewCarOrder(CarOrder order) {
        return true;
    }

    public boolean deleteCarOrderById(int id) {
        return true;
    }
//    boolean deleteCarOrderByName(String name);
//    boolean deleteCarOrderBygetName(String getName);
//    boolean deleteCarOrderByHasName(String hasName);

    public boolean changeStateToUnfinished(int id) {
        return true;
    }

    public boolean changeStateToFinished(int id) {
        return true;
    }

    public int changeNameToInvalid(String name) {
        return 0;
    }

    public CarOrder getCarOrderById(int id) {
        return new CarOrder();
    }

    public CarOrder[] getCarOrderByGetName(String getName) {
        return new CarOrder[1];
    }

    public CarOrder[] getCarOrderByHasName(String hasName) {
        return new CarOrder[1];
    }

    public CarOrder[] getCarOrderByname(String name) {
        return new CarOrder[1];
    }

    public CarOrder[] getCarOrdersByState(int state) {
        return new CarOrder[1];
    }

    public CarOrder[] getAllCarOrders() {
        return new CarOrder[1];
    }
}
