package com.writeless.biz;

import com.writeless.entity.User;

public interface GlobalBiz {

    User login(String username, String password);

    void changePassword(User user);

}
