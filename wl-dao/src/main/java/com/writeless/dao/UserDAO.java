package com.writeless.dao;

import com.writeless.entity.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("userDao")
public interface UserDAO {

    void insert(User user);

    void update(User user);

    void delete(Integer id);

    User selectById(Integer id);

    User selectByUsername(String username);

    List<User> selectAll();

}
