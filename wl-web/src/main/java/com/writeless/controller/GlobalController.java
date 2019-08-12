package com.writeless.controller;

import com.writeless.biz.GlobalBiz;
import com.writeless.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller("globalController")
public class GlobalController {

    @Autowired
    private GlobalBiz globalBiz;

    @RequestMapping("/home")
    public String home() {
        return "redirect:/message/new_list?page=1";
    }

    @RequestMapping("/to_login")
    public String toLogin() {
        return "to_login";
    }

    @RequestMapping("/login")
    public String login(HttpSession session, @RequestParam String username, @RequestParam String password) {
        User user = globalBiz.login(username, password);
        if(user == null) {
            return "redirect:to_login";
        }
        session.setAttribute("user", user);

        return "redirect:home";
    }
}
