package com.ecnu.car_rent.service.impl;

import com.ecnu.car_rent.dao.CarOrderMapper;
import com.ecnu.car_rent.dao.UserMapper;
import com.ecnu.car_rent.model.CarOrder;
import com.ecnu.car_rent.model.User;
import com.ecnu.car_rent.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Zhangxq on 2016/7/15.
 */

@Service
@Transactional(rollbackFor = Exception.class)
public class UserServiceImpl implements UserService {
    
    @Resource
    private UserMapper userMapper;
    @Resource
    private CarOrderMapper carOrderMapper;

    public boolean addNewUser(User user) {
        if (user.getUserId() != null || user.getIsadmin() == null || user.getUserName() == null || user.getPassword() == null)
            return false;
        else {
            if (userMapper.selectUserByName(user.getUserName()) == null) {
                if (userMapper.insertSelective(user) != 0)
                    return true;
                else
                    return false;
            } else
                return false;
        }

    }

    public boolean deleteUserById(int id) {
        User user = userMapper.selectByPrimaryKey(id);

        if (userMapper.deleteByPrimaryKey(id) != 0) {
            List<CarOrder> hasOrders = carOrderMapper.selectCarOrdersByHasName(user.getUserName());

            for (int i = 0; i < hasOrders.size(); i++) {
                CarOrder order = hasOrders.get(i);
                order.setHasName(order.getHasName() + "(Invalid)");
                carOrderMapper.updateByPrimaryKey(order);
            }
            List<CarOrder> getOrders = carOrderMapper.selectCarOrdersByGetName(user.getUserName());
            for (int j = 0; j < getOrders.size(); j++) {
                CarOrder order = getOrders.get(j);
                order.setGetName(order.getGetName() + "(Invalid)");
                carOrderMapper.updateByPrimaryKey(order);
            }
            return true;
        }
        else
            return false;

    }

    public boolean deleteUserByName(String name) {

        if (userMapper.deleteByUserName(name) != 0) {
            List<CarOrder> hasOrders = carOrderMapper.selectCarOrdersByHasName(name);

            for (int i = 0; i < hasOrders.size(); i++) {
                CarOrder order = hasOrders.get(i);
                order.setHasName(order.getHasName() + "(Invalid)");
                carOrderMapper.updateByPrimaryKey(order);
            }
            List<CarOrder> getOrders = carOrderMapper.selectCarOrdersByGetName(name);
            for (int j = 0; j < getOrders.size(); j++) {
                CarOrder order = getOrders.get(j);
                order.setGetName(order.getGetName() + "(Invalid)");
                carOrderMapper.updateByPrimaryKey(order);
            }
            return true;
        }
        else
            return false;
    }
    // int deleteAllUsers();


    public User getUserById(Integer userId) {
        return userMapper.selectByPrimaryKey(userId);
    }

    public User getUserByName(String name) {
        return userMapper.selectUserByName(name);
    }

    public List<User> getAllUsers() {
        return userMapper.selectAllUsers();
    }
}
