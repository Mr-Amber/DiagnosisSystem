package com.ds.service.impl;

import com.ds.common.model.Message;
import com.ds.service.MessageService;
import com.ds.vo.MessageVO;
import com.jfinal.plugin.activerecord.Page;

public class MessageServieImpl implements MessageService {
    private static MessageServieImpl instance = new MessageServieImpl();
    private MessageServieImpl() {}
    public static MessageServieImpl getInstance() {
        return instance;
    }

    @Override
    public Page<Message> getMessageByPId(MessageVO messageVO) {
        return Message.dao.filterMessages(messageVO);
    }

    @Override
    public int getMessageCountByPId(String pid) {
        return Message.dao.getMessageCountByPId(pid);
    }

    @Override
    public boolean addMessage(Message message) {
            return Message.dao.add(message);
    }
}
