package com.ds.common.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings({"serial", "unchecked"})
public abstract class BaseMessage<M extends BaseMessage<M>> extends Model<M> implements IBean {

	public M setMid(java.lang.String mid) {
		set("mid", mid);
		return (M)this;
	}
	
	public java.lang.String getMid() {
		return getStr("mid");
	}

	public M setSenderId(java.lang.String senderId) {
		set("sender_id", senderId);
		return (M)this;
	}
	
	public java.lang.String getSenderId() {
		return getStr("sender_id");
	}

	public M setReceiveId(java.lang.String receiveId) {
		set("receive_id", receiveId);
		return (M)this;
	}
	
	public java.lang.String getReceiveId() {
		return getStr("receive_id");
	}

	public M setPid(java.lang.String pid) {
		set("pid", pid);
		return (M)this;
	}
	
	public java.lang.String getPid() {
		return getStr("pid");
	}

	public M setContent(java.lang.String content) {
		set("content", content);
		return (M)this;
	}
	
	public java.lang.String getContent() {
		return getStr("content");
	}

	public M setTime(java.util.Date time) {
		set("time", time);
		return (M)this;
	}
	
	public java.util.Date getTime() {
		return get("time");
	}

}