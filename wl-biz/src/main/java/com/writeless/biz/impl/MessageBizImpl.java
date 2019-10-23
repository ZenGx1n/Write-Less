package com.writeless.biz.impl;

import com.writeless.biz.MessageBiz;
import com.writeless.dao.MessageDAO;
import com.writeless.entity.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service("messageBiz")
public class MessageBizImpl implements MessageBiz {

    @Autowired
    private MessageDAO messageDAO;

    /**
     * 获取全部留言
     * @return
     */
    public List<Message> getAll() {
        return messageDAO.selectAll();
    }

    /**
     * 获取某个用户的全部留言
     * @return
     */
    public List<Message> getByUser(Integer userId) {
        return messageDAO.selectByUser(userId);
    }

    /**
     * 添加留言
     * @param message
     */
    public void add(Message message) {
        message.setCreateTime(new Date());
        message.setStatus(1);
        messageDAO.insert(message);
    }

    /**
     * 修改留言
     * @param message
     */
    public void edit(Message message) {
        message.setLastEditTime(new Date());
        messageDAO.update(message);
    }

    /**
     * 删除留言
     * @param number
     */
    public void remove(Integer number) {
        messageDAO.delete(number);
    }

    /**
     * 通过编号获取留言
     * @param number
     * @return
     */
    public Message getByNum(Integer number) {
        return messageDAO.selectByNum(number);
    }

    /**
     * 根据传进来的值修改留言 实现点赞，反对和修改状态
     * @param message
     */
    public void editByType(Message message) {
        messageDAO.updateByType(message);
    }

    /**
     * 获取留言表的总条目
     * @return
     */
    public int count() {
        return messageDAO.count();
    }

    /**
     * 根据创建时间倒序查询全部留言
     * @param page
     * @param pageSize
     * @return
     */
    public List<Message> getAllByTime(int page, int pageSize) {
        return messageDAO.selectAllByTime(page, pageSize);
    }

    public List<Message> getByType(String type) {
        return messageDAO.selectByType(type);
    }

    public List<Message> getAllByAgree(int page, int pageSize) {
        return messageDAO.selectAllByAgree(page, pageSize);
    }


}
