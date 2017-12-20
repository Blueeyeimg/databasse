package com.ecnu.car_rent.service.impl;

import com.ecnu.car_rent.dao.CarOrderMapper;
import com.ecnu.car_rent.model.CarOrder;
import com.ecnu.car_rent.service.CarOrderService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional(rollbackFor = Exception.class)
public class CarOrderServiceImpl implements CarOrderService {
    @Resource
    private CarOrderMapper carOrderMapper;

    public boolean addNewCarOrder(CarOrder order) {
        if (carOrderMapper.insertSelective(order) != 0) {
            return true;
        } else
            return false;
    }

    public boolean deleteCarOrderById(int id) {
        if (carOrderMapper.deleteByPrimaryKey(id) != 0) {
            return true;
        } else
            return false;

    }
//    boolean deleteCarOrderByName(String name);
//    boolean deleteCarOrderBygetName(String getName);
//    boolean deleteCarOrderByHasName(String hasName);

    public boolean updateUnfinishedCarOrder(CarOrder order) {
        if (carOrderMapper.updateByPrimaryKey(order) != 0) {
            return true;
        } else
            return false;

    }

    public boolean changeStateToUnfinished(int id) {
        CarOrder order = carOrderMapper.selectByPrimaryKey(id);
        order.setType(1);
        return updateUnfinishedCarOrder(order);
    }

    public boolean changeStateToFinished(int id) {
        CarOrder order = carOrderMapper.selectByPrimaryKey(id);
        order.setType(2);
        return updateUnfinishedCarOrder(order);
    }

    public int changeNameToInvalid(String name) {
        List<CarOrder> hasOrders = getCarOrderByHasName(name);
        int i, j;
        for (i = 0; i < hasOrders.size(); i++) {
            CarOrder order = hasOrders.get(i);
            order.setHasName(order.getHasName() + "(Invalid)");
            carOrderMapper.updateByPrimaryKey(order);
        }
        List<CarOrder> getOrders = getCarOrderByGetName(name);
        for (j = 0; j < getOrders.size(); j++) {
            CarOrder order = getOrders.get(i);
            order.setHasName(order.getGetName() + "(Invalid)");
            carOrderMapper.updateByPrimaryKey(order);
        }
        return i + j;
    }

    public CarOrder getCarOrderById(int id) {
        return carOrderMapper.selectByPrimaryKey(id);
    }

    public List<CarOrder> getCarOrderByGetName(String getName) {
        return carOrderMapper.selectCarOrderByGetName(getName);
    }

    public List<CarOrder> getCarOrderByHasName(String hasName) {
        return carOrderMapper.selectCarOrderByHasName(hasName);
    }

    public List<CarOrder> getCarOrderByname(String name) {
        return carOrderMapper.selectCarOrderByName(name);
    }

    public List<CarOrder> getCarOrdersByState(int state) {
        return carOrderMapper.selectCarOrdersByState(state);
    }

    public List<CarOrder> getAllCarOrders() {
        return carOrderMapper.selectAllCarOrders();
    }
}
