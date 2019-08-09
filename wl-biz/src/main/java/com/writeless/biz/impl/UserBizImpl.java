package com.writeless.biz.impl;

import com.writeless.biz.UserBiz;
import com.writeless.dao.UserDAO;
import com.writeless.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userBiz")
public class UserBizImpl implements UserBiz {

    @Autowired
    private UserDAO userDAO;


    /**
     * 获取全部用户
     * @return
     */
    public List<User> getAll() {
        return userDAO.selectAll();
    }
}
