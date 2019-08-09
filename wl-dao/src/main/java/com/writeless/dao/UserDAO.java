package com.writeless.dao;

import com.writeless.entity.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("userDao")
public interface UserDAO {

    void insert(User user);

    void update(User user);

    void delete(String id);

    User selectById(String id);

    List<User> selectAll();

}
