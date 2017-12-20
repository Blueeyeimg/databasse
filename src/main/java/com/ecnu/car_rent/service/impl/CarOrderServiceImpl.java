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
        if (order.getState() == 0) {
            if (carOrderMapper.updateByPrimaryKeySelective(order) != 0) {
                return true;
            } else
                return false;
        } else
            return false;


    }

    public boolean changeStateToUnfinished(int id) {
        CarOrder order = carOrderMapper.selectByPrimaryKey(id);
        if (order.getState() == 0) {
            order.setState(1);
            if (carOrderMapper.updateByPrimaryKey(order) != 0) {
                return true;
            } else
                return false;
        } else
            return false;
    }

    public boolean changeStateToFinished(CarOrder order) {
        if (order.getState() == 1) {
            order.setState(2);
            if (carOrderMapper.updateByPrimaryKey(order) != 0) {
                return true;
            } else
                return false;
        } else
            return false;

    }

    public int changeNameToInvalid(String name) {
        List<CarOrder> hasOrders = getCarOrdersByHasName(name);
        int i, j;
        for (i = 0; i < hasOrders.size(); i++) {
            CarOrder order = hasOrders.get(i);
            order.setHasName(order.getHasName() + "(Invalid)");
            carOrderMapper.updateByPrimaryKey(order);
        }
        List<CarOrder> getOrders = getCarOrdersByGetName(name);
        for (j = 0; j < getOrders.size(); j++) {
            CarOrder order = getOrders.get(j);
            order.setGetName(order.getGetName() + "(Invalid)");
            carOrderMapper.updateByPrimaryKey(order);
        }
        return i + j;
    }

    public CarOrder getCarOrderById(int id) {
        return carOrderMapper.selectByPrimaryKey(id);
    }

    public List<CarOrder> getCarOrdersByGetName(String getName) {
        return carOrderMapper.selectCarOrdersByGetName(getName);
    }

    public List<CarOrder> getCarOrdersByHasName(String hasName) {
        return carOrderMapper.selectCarOrdersByHasName(hasName);
    }

    public List<CarOrder> getCarOrdersByName(String name) {
        return carOrderMapper.selectCarOrdersByName(name);
    }

    public List<CarOrder> getCarOrdersByState(int state) {
        return carOrderMapper.selectCarOrdersByState(state);
    }

    @Override
    public List<CarOrder> getCarOrdersByType(int type) {
        return carOrderMapper.seleteCarOrdersByType(type);
    }

    public List<CarOrder> getAllCarOrders() {
        return carOrderMapper.selectAllCarOrders();
    }
}
