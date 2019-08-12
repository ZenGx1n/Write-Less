package com.writeless.dao;

import com.writeless.entity.Message;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("messageDao")
public interface MessageDAO {

    void insert(Message message);

    void update(Message message);

    void delete(Integer number);

    Message selectByNum(Integer number);

    List<Message> selectAll();

    void updateByType(Message message);

    int count();

    List<Message> selectAllByTime(@Param("page") int page, @Param("pageSize") int pageSize);

}
