package com.writeless.controller;

import com.writeless.biz.MessageBiz;
import com.writeless.entity.Message;
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

@Controller("messageController")
@RequestMapping("/message")
public class MessageController {

    @Autowired
    private MessageBiz messageBiz;

    @RequestMapping(value = "/my_message", method = RequestMethod.GET)
    @ResponseBody
    public Map<String, Object> myMessage() {
        Map<String, Object> modelMap = new HashMap<String, Object>();
        Message message = new Message();
        try {
            message = messageBiz.getByNum(1);
            modelMap.put("message", message);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return modelMap;
    }

}
