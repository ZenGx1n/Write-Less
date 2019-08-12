package com.writeless.biz;

import com.writeless.entity.User;

import java.util.List;

public interface UserBiz {

    List<User> getAll();

    void add(User user);

    void edit(User user);

    void remove(Integer id);

    User getById(Integer id);

    User getByUsername(String username);

}
