package com.writeless.controller;

import com.writeless.biz.UserBiz;
import com.writeless.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller("userController")
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserBiz userBiz;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    @ResponseBody
    public Map<String, Object> list() {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        List<User> users = new ArrayList<User>();

        try {
            users = userBiz.getAll();
            modelMap.put("list", users);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return modelMap;
    }

}
