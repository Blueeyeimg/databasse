package com.ecnu.car_rent.service.impl;

import com.ecnu.car_rent.model.StopOrder;
import com.ecnu.car_rent.service.StopOrderServicce;

import java.util.List;

public class StopOrderServicceImpl implements StopOrderServicce {

    public boolean addNewStopOrder(StopOrder order) {
        return true;
    }


    public boolean deleteStopOrderById() {
        return true;
    }


    public boolean updateStopOrder(StopOrder order) {
        return true;
    }


    public boolean changeStateToFinished(String getName) {
        return true;
    }


    public StopOrder getStopOrderById(int id) {
        return new StopOrder();
    }

    public List<StopOrder> getStopOrderByGetName(String getName) {
        return null;
    }

    public List<StopOrder> getAllUnfinishedStopOrderByGetName() {
        return null;
    }

    public List<StopOrder> getAllFinishedStopOrderByGetName() {
        return null;
    }

    public List<StopOrder> getAllStopOrderByGetName() {
        return null;
    }


}
