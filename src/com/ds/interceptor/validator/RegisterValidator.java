package com.ds.interceptor.validator;

import com.jfinal.core.Controller;
import com.jfinal.kit.PropKit;
import com.jfinal.validate.Validator;

public class RegisterValidator extends Validator{

	@Override
	protected void validate(Controller c) {
		validateRequiredString("name", "result", "姓名不能为空");
		validateString("name", 1, 30, "result", "姓名长度不能超过30字");
		validateEqualField("psw", "pswAgain", "result", "两次密码输入不一致");
		validateRegex("psw", PropKit.get("passwordFormat"), "result", "密码由 6-32 个字母、数字、下划线组成");
		validateRegex("account", PropKit.get("accountFormat"), "result", "帐号由 6-32 个字母、数字、下划线组成");
	}

	@Override
	protected void handleError(Controller c) {
		c.renderJson();
	}

}
