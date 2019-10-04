package com.writeless.controller;

import com.writeless.biz.UserBiz;
import com.writeless.entity.User;
import com.writeless.global.Contant;
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
    public String list(Map<String, Object> map) {
        map.put("list", userBiz.getAll());

        return "user_list";
    }

    @RequestMapping(value = "/to_add")
    public String toAdd(Map<String, Object> map) {
        map.put("user", new User());
        //获取职业
        map.put("post", Contant.getPost());

        return "user_add";
    }

    @RequestMapping(value = "/add")
    public String add(User user) {
        userBiz.add(user);

        return "redirect:list";
    }

    @RequestMapping(value = "/to_edit", params = "id")
    public String toEdit(Map<String ,Object> map, Integer id) {
        map.put("user", userBiz.getById(id));
        map.put("post", Contant.getPost());

        return "user_edit";
    }

    @RequestMapping(value = "/edit")
    public String edit(User user) {
        userBiz.edit(user);

        return "redirect:list";
    }

    @RequestMapping(value = "/remove", params = "id")
    public String remove(Integer id) {
        userBiz.remove(id);

        return "redirect:list";
    }

    @RequestMapping(value = "/detail", params = "id")
    public String detail(Integer id, Map<String, Object> map) {

        map.put("list", userBiz.getById(id));

        return "user_detail";

    }

}
