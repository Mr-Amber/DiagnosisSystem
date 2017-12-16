package com.ds.interceptor.validator;

import com.jfinal.core.Controller;
import com.jfinal.kit.PropKit;
import com.jfinal.validate.Validator;

/**
 * 登录验证器，具体使用方式和拦截器一样，如：
*     @Before({…, LoginValidator.class))
*     public void login() { … }
*/
public class LoginValidator extends Validator{

	@Override
	protected void validate(Controller c) {
		validateRegex("loginPassword", PropKit.get("passwordFormat"), "result", "密码由 6-32 个字母、数字、下划线组成");
		validateRegex("loginAccount", PropKit.get("accountFormat"), "result", "帐号由 6-32 个字母、数字、下划线组成");
	}

	@Override
	protected void handleError(Controller c) {
		c.renderJson();
	}

}
