package com.writeless.biz.impl;

import com.writeless.biz.UserBiz;
import com.writeless.dao.UserDAO;
import com.writeless.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
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

    /**
     * 添加用户
     * @param user
     */
    public void add(User user) {
        user.setCreateTime(new Date());
        userDAO.insert(user);
    }

    /**
     * 编辑用户信息
     * @param user
     */
    public void edit(User user) {
        userDAO.update(user);
    }

    /**
     * 删除用户
     * @param id
     */
    public void remove(Integer id) {
        userDAO.delete(id);
    }

    /**
     * 通过id获取用户信息
     * @param id
     * @return
     */
    public User getById(Integer id) {
        return userDAO.selectById(id);
    }

    /**
     * 通过username获取用户信息
     * @param username
     * @return
     */
    public User getByUsername(String username) {
        return userDAO.selectByUsername(username);
    }
}
