package com.ds.common.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings({"serial", "unchecked"})
public abstract class BaseSymptomType<M extends BaseSymptomType<M>> extends Model<M> implements IBean {

	public M setTid(java.lang.String tid) {
		set("tid", tid);
		return (M)this;
	}
	
	public java.lang.String getTid() {
		return getStr("tid");
	}

	public M setUperId(java.lang.String uperId) {
		set("uper_id", uperId);
		return (M)this;
	}
	
	public java.lang.String getUperId() {
		return getStr("uper_id");
	}

	public M setTname(java.lang.String tname) {
		set("tname", tname);
		return (M)this;
	}
	
	public java.lang.String getTname() {
		return getStr("tname");
	}

	public M setDescription(java.lang.String description) {
		set("description", description);
		return (M)this;
	}
	
	public java.lang.String getDescription() {
		return getStr("description");
	}

}
