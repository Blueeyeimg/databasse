package com.ecnu.car_rent.service.impl;

import com.ecnu.car_rent.dao.UserMapper;
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

    public boolean insertNewUser(User user) {
        if (userMapper.insertSelective(user) != 0)
            return true;
        else
            return false;

    }

    public boolean deleteUserById(int id) {
        if (userMapper.deleteByPrimaryKey(id) != 0)
            return true;
        else
            return false;

    }

    public boolean deleteUserByName(String name) {
        if (userMapper.deleteByUserName(name) != 0)
            return true;
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
