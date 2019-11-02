package com.writeless.controller;

import com.writeless.biz.GlobalBiz;
import com.writeless.entity.User;
import com.writeless.global.Result;
import com.writeless.global.ResultGenerator;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Map;

@Controller("globalController")
public class GlobalController {

    @Autowired
    private GlobalBiz globalBiz;

    @RequestMapping("/home")
    public String home() {
        return "redirect:/message/new_list";
    }

    @RequestMapping("/to_login")
    public String toLogin() {
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public void login(HttpSession session, HttpServletResponse response, @RequestParam String username, @RequestParam String password) {
        User user = globalBiz.login(username, password);
        JSONObject jsonObject = null;
        if(user == null) {
            jsonObject = new JSONObject("{flag:false}");
        } else {
            session.setAttribute("user", user);
            jsonObject = new JSONObject("{flag:true}");
        }
        try {
            response.getOutputStream().write(jsonObject.toString().getBytes("utf-8"));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "/logout")
    public String logout(HttpSession session) {
        session.setAttribute("user", null);
        return "redirect:home";
    }
}
