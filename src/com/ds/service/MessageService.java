package com.ds.service;

import com.ds.common.model.Message;
import com.ds.vo.MessageVO;
import com.jfinal.plugin.activerecord.Page;

public interface MessageService {
    /** 获取某个照片下的所有回复 */
    public Page<Message> getMessageByPId(MessageVO messageVO);
    /** 获取某个照片的回复数 */
    public int getMessageCountByPId(String pid);
    /** 增加回复 */
    public boolean addMessage(Message message);
}
