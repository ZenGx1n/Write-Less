package com.writeless.biz;

import com.writeless.entity.Message;
import java.util.List;

public interface MessageBiz {

    List<Message> getAll();

    void add(Message message);

    void edit(Message message);

    void remove(Integer number);

    Message getByNum(Integer number);

    void editByType(Message message);

}
