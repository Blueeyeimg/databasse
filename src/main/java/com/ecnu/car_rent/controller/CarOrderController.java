package com.ecnu.car_rent.controller;

import com.ecnu.car_rent.model.CarOrder;
import com.ecnu.car_rent.service.CarOrderService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.Date;

@Controller
public class CarOrderController {
    @Resource
    private CarOrderService carOrderService;
    @RequestMapping("/hehe")
    public String hehe(CarOrder carOrder){
        carOrder.setDate(new Date());
        carOrder.setType(1);
        carOrder.setHasName("jk");
        carOrderService.addNewCarOrder(carOrder);
        return "user/userMainPage";
    }



}
