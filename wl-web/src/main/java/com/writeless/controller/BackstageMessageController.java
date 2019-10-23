package com.writeless.controller;

import com.writeless.biz.MessageBiz;
import com.writeless.biz.UserBiz;
import com.writeless.entity.Message;
import com.writeless.entity.User;
import com.writeless.utils.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by ZenGx1n
 * 2019/10/7 20:09
 */

@Controller("backstageMessageController")
@RequestMapping("/backstageMessage")
public class BackstageMessageController {

    @Autowired
    private MessageBiz messageBiz;

    @Autowired
    private UserBiz userBiz;

    @RequestMapping("/new_message")
    public String newMessage(Map<String, Object> map) {
        map.put("list", messageBiz.getAll());

        return "new_message_list";
    }

    @RequestMapping("/processed_message")
    public String processedMessage(Map<String, Object> map) {
        map.put("list", messageBiz.getByType("processed"));

        return "processed_message_list";
    }

    @RequestMapping("/unprocessed_message")
    public String unprocessedMessage(Map<String, Object> map) {
        map.put("list", messageBiz.getByType("unprocessed"));

        return "unprocessed_message";
    }

    @RequestMapping(value = "/detail", params = "number")
    public String detail(Map<String, Object> map, Integer number) {
        map.put("message", messageBiz.getByNum(number));

        return "message_detail";
    }

    @RequestMapping(value = "/remove", params = "number")
    public String remove(Integer number) {
        messageBiz.remove(number);

        return "redirect:new_message";
    }

    @RequestMapping("/to_add")
    public String toAdd(Map<String, Object> map) {
        map.put("message", new Message());
        map.put("user", userBiz.getAll());

        return "message_add";
    }

    @RequestMapping("/add")
    public String add(Message message) {
        messageBiz.add(message);

        return "redirect:new_message";
    }

    @RequestMapping(value = "to_edit", params = "number")
    public String toEdit(Map<String, Object> map, Integer number) {
        map.put("message", messageBiz.getByNum(number));

        return "message_edit";
    }

    @RequestMapping("/edit")
    public String edit(Message message) {
        messageBiz.edit(message);

        return "redirect:new_message";
    }

    @RequestMapping(value = "editStatus", params = "number")
    public String editStatus(Integer number, @RequestParam String status) {
        int s = Integer.parseInt(status);
        Message message = new Message();
        message.setStatus(s);
        message.setNumber(number);
        messageBiz.edit(message);

        return "redirect:detail?number=" + number;
    }


//    private Pager getPage(Integer page) {
//        Pager pager = new Pager();
//        Integer page1 = page;   //当前页码
//        Integer pageIndex = 1;
//        if (pageIndex != null && (!"".equals(pageIndex))) {
//            try {
//                pageIndex = page1;
//            } catch (NumberFormatException e) {
//                e.printStackTrace();
//            }
//        }
//
//        Integer count = messageBiz.count();
//        // 取页码的时候，做一些判断
//        pageIndex = pageIndex <= 0 ? 1 : pageIndex;
//        Integer last = count % 10 == 0 ? (count / 10) : ((count / 10) + 1);
//        // 判断页码是否越界 了
//        pageIndex = pageIndex >= last ? last : pageIndex;
//        Integer pageParam = (pageIndex - 1) * 10;
//
//        pager.setPageParam(pageParam);
//        pager.setPageIndex(pageIndex);
//        pager.setTotalPages(last);
//
//        return pager;
//    }

}
