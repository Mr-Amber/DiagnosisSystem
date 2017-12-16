package com.ds.blog;

import com.ds.common.model.Message;
import com.jfinal.core.Controller;
import com.jfinal.validate.Validator;

/**
 * 本 ds 仅表达最为粗浅的 jfinal 用法，更为有价值的实用的企业级用法
 * 详见 JFinal 俱乐部: http://jfinal.com/club
 * 
 * BlogValidator.
 */
public class MessageValidator extends Validator {
	
	protected void validate(Controller controller) {
		validateRequiredString("blog.title", "titleMsg", "请输入Blog标题!");
		validateRequiredString("blog.content", "contentMsg", "请输入Blog内容!");
	}
	
	protected void handleError(Controller controller) {
		controller.keepModel(Message.class);
		
		String actionKey = getActionKey();
		if (actionKey.equals("/message/save"))
			controller.render("add.html");
		else if (actionKey.equals("/message/update"))
			controller.render("edit.html");
	}
}
