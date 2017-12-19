package com.ecnu.car_rent.service.impl;

import com.ecnu.car_rent.model.CarOrder;
import com.ecnu.car_rent.service.CarOrderService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

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
public boolean updateUnfinishedCarOrder(CarOrder order) {
    return true;
}

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

    public List<CarOrder> getCarOrderByGetName(String getName) {
        return null;
    }

    public List<CarOrder> getCarOrderByHasName(String hasName) {
        return null;
    }

    public List<CarOrder> getCarOrderByname(String name) {
        return null;
    }

    public List<CarOrder> getCarOrdersByState(int state) {
        return null;
    }

    public List<CarOrder> getAllUncheckCarOrders() {
        return null;
    }

    public List<CarOrder> getAllUnfinishedCarOrders() {
        return null;
    }

    public List<CarOrder> getAllFinishedCarOrders() {
        return null;
    }

    public List<CarOrder> getAllCarOrders() {
        return null;
    }
}
