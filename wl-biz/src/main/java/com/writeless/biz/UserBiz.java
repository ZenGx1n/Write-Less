package com.writeless.biz;

import com.writeless.entity.User;

import java.util.List;

public interface UserBiz {

    /**
     * 获取全部用户
     * @return
     */
    List<User> getAll();

}
