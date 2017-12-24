package com.ecnu.car_rent.service.impl;

import com.ecnu.car_rent.dao.StopOrderMapper;
import com.ecnu.car_rent.model.StopOrder;
import com.ecnu.car_rent.service.StopOrderService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
@Transactional(rollbackFor = Exception.class)
public class StopOrderServiceImpl implements StopOrderService {
    @Resource
    private StopOrderMapper stopOrderMapper;


    public boolean addNewStopOrder(StopOrder order) {
        order.setGetName("");
        if (order.getStopOrderId() != null || order.getAddress() == null || order.getMoney() == null || order.getDescription() == null)
            return false;
        else {
            if (stopOrderMapper.insertSelective(order) != 0) {
                return true;
            } else
                return false;
        }

    }

    @Override
    public boolean deleteStopOrderById(int id) {
        if (stopOrderMapper.deleteByPrimaryKey(id) != 0) {
            return true;
        } else
            return false;
    }

    @Override
    public boolean updateStopOrder(StopOrder order) {
        if (stopOrderMapper.updateByPrimaryKeySelective(order) != 0) {
            return true;
        } else
            return false;
    }

    @Override
    public boolean changeStateToFinishedById(StopOrder order) {
        if (order.getGetName() != null && order.getGetName() != "") {
            return updateStopOrder(order);
        } else
            return false;
    }

    @Override
    public StopOrder getStopOrderById(int id) {
        return stopOrderMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<StopOrder> getAllFinishedStopOrdersByGetName(String getName) {
        return stopOrderMapper.selectAllFinishedStopOrdersByGetName(getName);
    }

    @Override
    public List<StopOrder> getAllUnfinishedStopOrders() {
        String emptyString = "";
        return stopOrderMapper.selectAllUnfinishedStopOrders(emptyString);
    }

    @Override
    public List<StopOrder> getAllFinishedStopOrders() {
        String emptyString = "";
        return stopOrderMapper.selectAllFinishedStopOrders(emptyString);
    }

    @Override
    public List<StopOrder> getAllStopOrders() {
        return stopOrderMapper.selectAllStopOrders();
    }
}
