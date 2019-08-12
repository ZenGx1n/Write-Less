package com.writeless.biz.impl;

import com.writeless.biz.GlobalBiz;
import com.writeless.dao.UserDAO;
import com.writeless.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("globalBiz")
public class GlobalBizImpl implements GlobalBiz {

    @Autowired
    private UserDAO userDAO;

    /**
     * 用户登录
     * @param username
     * @param password
     * @return
     */
    public User login(String username, String password) {
        User user = userDAO.selectByUsername(username);
        if(user != null && user.getPassword().equals(password)) {
            return user;
        }
        return null;
    }

    public void changePassword(User user) {

    }
}
