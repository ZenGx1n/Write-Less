package com.writeless.dao;

import com.writeless.entity.Log;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("logDao")
public interface LogDAO {

    void insert(Log log);

    List<Log> selectByType(@Param("type") String type, @Param("page") int page, @Param("pageSize") int pageSize);

    int count(String operation);

}
