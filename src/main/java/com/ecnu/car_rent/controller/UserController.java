package com.ecnu.car_rent.controller;

import com.alibaba.fastjson.JSONObject;
import com.ecnu.car_rent.model.*;
import com.ecnu.car_rent.service.*;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;
import javax.json.Json;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
public class UserController {

    private Logger log = Logger.getLogger(UserController.class);
    @Resource
    private UserService userService;
    @Resource
    private CarOrderService carOrderService;
    @Resource
    private NewsService newsService;
    @Resource
    private MassageService massageService;
    @Resource
    private StopOrderService stopOrderService;

    //1,使用HttpServletRequest获取
    // 2,Spring会自动将表单参数注入到方法参数，和表单的name属性保持一致。和Struts2一样------@RequestParam("name")String name
    /*@RequestMapping("/showUser")
    public String showUser(HttpServletRequest request, Model model,@RequestParam("name")String name,@RequestParam("pass")String password){
 *//*     String name = request.getParameter("name");
        log.info("request.getParameter:::::"+name);

        String[] dd=request.getParameterValues("name");
        log.info("request.getParameterValues:::::"+dd[0].toString());*//*

        log.info("RequestParam::::"+name);
        log.info("RequestParam::::"+password);

        *//*List<User> userList = userService.getAllUser();
        model.addAttribute("userList",userList);*//*
        return "showUser";
    }*/

    @RequestMapping("/deleteUser")
    public void deleteUser(HttpServletRequest request, Model model, User user) {

        return;
    }

    @RequestMapping("/my_login")
    public String showUser(HttpServletRequest request, Model model, User user) {

        List<CarOrder> unsolvedCarOrders = carOrderService.getCarOrdersByState(0);
        List<CarOrder> unfinishedCarOrders = carOrderService.getCarOrdersByState(1);
        List<CarOrder> finishedCarOrders = carOrderService.getCarOrdersByState(2);


        List<StopOrder> unfinishedStopOrders = stopOrderService.getAllUnfinishedStopOrders();
        List<StopOrder> finishedStopOrders = stopOrderService.getAllFinishedStopOrders();

        List<News> news = newsService.getAllNews();

        List<User> users = userService.getAllUsers();

        model.addAttribute("user", user);
        model.addAttribute("users", users);
        model.addAttribute("news", news);
        model.addAttribute("unfinishedStopOrders", unfinishedStopOrders);
        model.addAttribute("finishedStopOrders", finishedStopOrders);
        model.addAttribute("unsolvedCarOrders", unsolvedCarOrders);
        model.addAttribute("unfinishedCarOrders", unfinishedCarOrders);
        model.addAttribute("finishedCarOrders", finishedCarOrders);

        return "user/userMainPage";
    }



    //3,自动注入Bean属性----User user https://www.cnblogs.com/chentingk/p/6073963.html
    @RequestMapping("/admin_login")
    public String showAdmin(HttpServletRequest request, Model model, User user) {

        List<CarOrder> unsolvedCarOrders = carOrderService.getCarOrdersByState(0);
        List<CarOrder> unfinishedCarOrders = carOrderService.getCarOrdersByState(1);
        List<CarOrder> finishedCarOrders = carOrderService.getCarOrdersByState(2);


        List<StopOrder> unfinishedStopOrders = stopOrderService.getAllUnfinishedStopOrders();
        List<StopOrder> finishedStopOrders = stopOrderService.getAllFinishedStopOrders();

        List<News> news = newsService.getAllNews();

        List<User> users = userService.getAllUsers();

        model.addAttribute("user", user);
        model.addAttribute("users", users);
        model.addAttribute("news", news);
        model.addAttribute("unfinishedStopOrders", unfinishedStopOrders);
        model.addAttribute("finishedStopOrders", finishedStopOrders);
        model.addAttribute("unsolvedCarOrders", unsolvedCarOrders);
        model.addAttribute("unfinishedCarOrders", unfinishedCarOrders);
        model.addAttribute("finishedCarOrders", finishedCarOrders);


        return "admin/adminMainPage";

    }
    @RequestMapping("/login")
    @ResponseBody
    public void login(@RequestBody User user,HttpServletRequest request, HttpServletResponse response) throws IOException {

        PrintWriter out = response.getWriter();
        String username=user.getUserName();
        String password=user.getPassword();
        User resUser = userService.getUserByName(username);//根据userId查询用户
        JSONObject json =new JSONObject();
        System.out.print(resUser.getPassword());
        if(password.equals(resUser.getPassword())){//这里没有用数据库验证
            json.put("result","success");
            loginSucced(user);
        }else{
            json.put("result","error");
        }
        out.print(json);

    }

    @RequestMapping("/login2")
    @ResponseBody
    public String login(@RequestBody User user) throws IOException {

        User resUser = userService.getUserByName(user.getUserName());//根据userId查询用户

        if (!resUser.getUserName().equals(user.getUserName()))
            return "wrongName";
        else {
            if (resUser.getUserName().equals(user.getUserName()) && !resUser.getPassword().equals(user.getPassword()))
                return "wrongPassword";
            else
            {
                return loginSucced(user);

            }
        }

    }

    @RequestMapping("/loginSucced")
    public String loginSucced(User user){
        return "user/userMainPage";
    }
    @RequestMapping("/wrong")
    public String wrong(){
        return "wrong";
    }

}
