package com.writeless.biz;

import com.writeless.entity.Message;
import java.util.List;

public interface MessageBiz {

    List<Message> getAll();

    List<Message> getByUser(Integer userId);

    void add(Message message);

    void edit(Message message);

    void remove(Integer number);

    Message getByNum(Integer number);

    void editByType(Message message);

    int count();

    List<Message> getAllByTime(int page, int pageSize);

    List<Message> getAllByAgree(int page, int pageSize);

    List<Message> getByType(String type);

}
