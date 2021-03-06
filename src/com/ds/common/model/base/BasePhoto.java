package com.ds.common.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings({"serial", "unchecked"})
public abstract class BasePhoto<M extends BasePhoto<M>> extends Model<M> implements IBean {

	public M setPid(java.lang.String pid) {
		set("pid", pid);
		return (M)this;
	}
	
	public java.lang.String getPid() {
		return getStr("pid");
	}

	public M setUid(java.lang.String uid) {
		set("uid", uid);
		return (M)this;
	}
	
	public java.lang.String getUid() {
		return getStr("uid");
	}

	public M setDid(java.lang.String did) {
		set("did", did);
		return (M)this;
	}
	
	public java.lang.String getDid() {
		return getStr("did");
	}

	public M setTid(java.lang.String tid) {
		set("tid", tid);
		return (M)this;
	}
	
	public java.lang.String getTid() {
		return getStr("tid");
	}

	public M setPosition(java.lang.String position) {
		set("position", position);
		return (M)this;
	}
	
	public java.lang.String getPosition() {
		return getStr("position");
	}

	public M setPhotoType(java.lang.Integer photoType) {
		set("photo_type", photoType);
		return (M)this;
	}
	
	public java.lang.Integer getPhotoType() {
		return getInt("photo_type");
	}

	public M setUploadDate(java.util.Date uploadDate) {
		set("upload_date", uploadDate);
		return (M)this;
	}
	
	public java.util.Date getUploadDate() {
		return get("upload_date");
	}

	public M setTime(java.lang.Integer time) {
		set("time", time);
		return (M)this;
	}
	
	public java.lang.Integer getTime() {
		return getInt("time");
	}

}
