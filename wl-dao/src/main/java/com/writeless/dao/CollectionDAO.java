package com.writeless.dao;

import com.writeless.entity.Collect;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("collectionDao")
public interface CollectionDAO {

    void insert(Collect collect);

    void delete(int id);

    List<Collect> selectAll();

}
