package com.ds.common.model;

import com.ds.common.model.base.BaseMessage;
import com.ds.vo.MessageVO;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.SqlPara;
import com.jfinal.plugin.activerecord.Sqls;

public class Message extends BaseMessage<Message> {
    public static final Message dao = new Message();

    public Page<Message> filterMessages(MessageVO messageVO) {
        String[] sqlPart = Sqls.get("searchMessages").trim().split(" from", 2);
        String select = sqlPart[0];

        sqlPart = sqlPart[1].split("where|and|order");
        String except = "from"+sqlPart[0];
        String order = "order"+ sqlPart[sqlPart.length-1];

        int k = 0;
        if(messageVO.isFilterSender()){
            sqlPart[0].replaceFirst("\\?", messageVO.getSender_id());
            k++;
        }
        else{
            sqlPart[0] = null;
        }

        if(messageVO.isFilterReceiver()){
            sqlPart[1].replaceFirst("\\?", messageVO.getReceiver_id());
            k++;
        }
        else{
            sqlPart[1] = null;
        }

        if(messageVO.isFilterPhoto()){
            sqlPart[2].replaceFirst("\\?", messageVO.getPid());
            k++;
        }
        else{
            sqlPart[2] = null;
        }

        if(k>0)
            except += "where";

        for(int i=0; i<3; i++) {
            if(sqlPart[i] != null) {
                except += sqlPart + ((--k==0)?"":"and");
            }
        }

        except += order;

        Page<Message> page = dao.paginate(messageVO.getPage(), messageVO.getCountInPage(),
                select, except);
        return page;
    }

    public int getMessageCountByPId(String pid){
        Message message = dao().findFirst(Sqls.get("showMessageNums"), pid);
        Long num = message.get("count");
        return num.intValue();
    }

    public boolean add(Message message){
        return message.save();
    }
}
