package com.writeless.biz;

import com.writeless.entity.Collect;

import java.util.List;

public interface CollectionBiz {

    void add(Collect collect);

    void remove(int id);

    List<Collect> getAll();


}
