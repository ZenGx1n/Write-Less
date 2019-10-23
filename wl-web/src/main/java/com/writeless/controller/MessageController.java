package com.writeless.controller;

import com.writeless.biz.MessageBiz;
import com.writeless.entity.Message;
import com.writeless.utils.Pager;
import com.writeless.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller("messageController")
@RequestMapping("/message")
public class MessageController {

    @Autowired
    private MessageBiz messageBiz;

//    @RequestMapping(value = "/my_message", method = RequestMethod.GET)
//    @ResponseBody
//    public Map<String, Object> myMessage() {
//        Map<String, Object> modelMap = new HashMap<String, Object>();
//        Message message = new Message();
//        try {
//            message = messageBiz.getByNum(1);
//            modelMap.put("message", message);
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//
//        return modelMap;
//    }

    @RequestMapping(value = "/my_message", method = RequestMethod.GET)
    public String myMessage(HttpSession session, Map<String, Object> map) {

        User user = (User) session.getAttribute("user");
        map.put("list", messageBiz.getByUser(user.getId()));

        return "my_message";
    }

    @RequestMapping(value = "/agree_message")
    public String agreeMessage(HttpSession session, @RequestParam Integer page, Map<String, Object> map) {
        map.put("myMessage", getMyMessageSize(session));
        Pager pager = getPage(page);
        int pageIndex = pager.getPageIndex();
        map.put("newList", messageBiz.getAllByAgree(pager.getPageParam(), 10));
        map.put("last", pager.getTotalPages());
        map.put("page", pageIndex);
        map.put("pageOne", pageIndex - 1);
        map.put("pageTwo", pageIndex);
        map.put("pageThree", pageIndex + 1);
        map.put("pageFour", pageIndex + 2);

        return "new_list";
    }

    @RequestMapping("/add_message")
    public String addMessage(@RequestParam String content, Map<String, Object> map, HttpSession session) {
        User user = (User) session.getAttribute("user");
        Message message = new Message();
        message.setUserId(user.getId());
        message.setContent(content);

        messageBiz.add(message);

        return "redirect:new_list?page=1";
    }

    @RequestMapping("/new_list")
    public String newList(HttpSession session, @RequestParam Integer page, Map<String, Object> map) {

        map.put("myMessage", getMyMessageSize(session));
        Pager pager = getPage(page);
        int pageIndex = pager.getPageIndex();
        map.put("newList", messageBiz.getAllByTime(pager.getPageParam(), 10));
        map.put("last", pager.getTotalPages());
        map.put("page", pageIndex);
        map.put("pageOne", pageIndex - 1);
        map.put("pageTwo", pageIndex);
        map.put("pageThree", pageIndex + 1);
        map.put("pageFour", pageIndex + 2);

        return "new_list";
    }

    /**
     * 获取登录用户留言总数
     * @param session
     * @return
     */
    private Integer getMyMessageSize(HttpSession session) {
        User user = (User) session.getAttribute("user");
        if (user != null && !"".equals(user)) {
            List<Message> messages = new ArrayList<Message>();
            messages = messageBiz.getByUser(user.getId());
            return messages.size();
        }

        return 0;
    }

    private Pager getPage(Integer page) {
        Pager pager = new Pager();
        Integer page1 = page;   //当前页码
        Integer pageIndex = 1;
        if (pageIndex != null && (!"".equals(pageIndex))) {
            try {
                pageIndex = page1;
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }

        Integer count = messageBiz.count();
        // 取页码的时候，做一些判断
        pageIndex = pageIndex <= 0 ? 1 : pageIndex;
        Integer last = count % 10 == 0 ? (count / 10) : ((count / 10) + 1);
        // 判断页码是否越界 了
        pageIndex = pageIndex >= last ? last : pageIndex;
        Integer pageParam = (pageIndex - 1) * 10;

        pager.setPageParam(pageParam);
        pager.setPageIndex(pageIndex);
        pager.setTotalPages(last);

        return pager;
    }

}
