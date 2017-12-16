package com.ds.interceptor;

import com.ds.common.model.User;
import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.core.Controller;


/**
 * 进行登录拦截，已经登录的用户才可以访问，否则回到首页提示登录
 */
public class IsLoginInterceptor implements Interceptor {

	@Override
	public void intercept(Invocation inv) {
		Controller controller = inv.getController();
		try {
			User user = (User)controller.getSessionAttr("user");
			if (user==null) {
				backToIndex(controller);
			} else {
				inv.invoke();
			}
		} catch (NullPointerException e) {
			e.printStackTrace();
			backToIndex(controller);
		}
	}

	private void backToIndex(Controller controller) {
		controller.redirect("/#login");
	}
}
