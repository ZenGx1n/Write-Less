package com.writeless.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("globalController")
public class GlobalController {

    @RequestMapping("/home")
    public String home() {
        return "home";
    }

    @RequestMapping("/to_login")
    public String toLogin() {
        return "to_login";
    }
}
