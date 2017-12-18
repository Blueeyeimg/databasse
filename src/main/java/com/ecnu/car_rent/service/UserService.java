package com.ecnu.car_rent.service;

import com.ecnu.car_rent.model.User;

/**
 * Created by Zhangxq on 2016/7/15.
 */
public interface UserService {

    boolean insertNewUser(User user);//姓名相同等返回false

    boolean deleteUserById(int id);//同时修改含有该用户的订单（CarOrder、StopOrder）里的getName/hasName字段做修改（changeNameToInvalid（））

    boolean deleteUserByName(String name);//同时修改含有该用户的订单（CarOrder、StopOrder）里的getName/hasName字段做修改（changeNameToInvalid（））
    // int deleteAllUsers();


    User getUserById(Integer userId);
    User getUserByName(String name);
    User[] getAllUsers();//获得所有用户
}
