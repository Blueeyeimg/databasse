package com.ecnu.car_rent.service.impl;

import com.ecnu.car_rent.dao.UserMapper;
import com.ecnu.car_rent.model.User;
import com.ecnu.car_rent.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * Created by Zhangxq on 2016/7/15.
 */

@Service
@Transactional(rollbackFor = Exception.class)
public class UserServiceImpl implements UserService {
    
    @Resource
    private UserMapper userMapper;

    public boolean insertNewUser(User user) {
        userMapper.insert(user);
        return true;
    }

    public boolean deleteUserById(int id) {
        return true;
    }

    public boolean deleteUserByName(String name) {
        return true;
    }
    // int deleteAllUsers();


    public User getUserById(Integer userId) {
        return new User();
    }

    public User getUserByName(String name) {
        return new User();
    }

    public User[] getAllUsers() {
        return new User[1];
    }
}
