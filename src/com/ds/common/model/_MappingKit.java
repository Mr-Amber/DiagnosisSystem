package com.ds.common.model;

import com.jfinal.plugin.activerecord.ActiveRecordPlugin;

/**
 * Generated by JFinal, do not modify this file.
 * <pre>
 * Example:
 * public void configPlugin(Plugins me) {
 *     ActiveRecordPlugin arp = new ActiveRecordPlugin(...);
 *     _MappingKit.mapping(arp);
 *     me.add(arp);
 * }
 * </pre>
 */
public class _MappingKit {
	
	public static void mapping(ActiveRecordPlugin arp) {
		arp.addMapping("message", "mid", Message.class);
		arp.addMapping("photo", "pid", Photo.class);
		arp.addMapping("symptom_type", "tid", SymptomType.class);
		arp.addMapping("user", "uid", User.class);
	}
}

