package com.writeless.biz.impl;

import com.writeless.biz.CollectionBiz;
import com.writeless.dao.CollectionDAO;
import com.writeless.entity.Collect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("collectionBiz")
public class CollectionBizImpl implements CollectionBiz {

    @Autowired
    private CollectionDAO collectionDAO;

    /**
     * 添加收藏
     * @param collect
     */
    public void add(Collect collect) {
        collectionDAO.insert(collect);
    }

    /**
     * 移除一个收藏
     * @param id
     */
    public void remove(int id) {
        collectionDAO.delete(id);
    }

    /**
     * 获取全部收藏
     * @return
     */
    public List<Collect> getAll() {
        return collectionDAO.selectAll();
    }
}
