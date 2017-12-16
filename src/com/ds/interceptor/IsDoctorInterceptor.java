package com.ds.interceptor;

import com.ds.common.model.User;
import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.core.Controller;


/**
 * 进行拦截，医生才可以访问，否则回到首页
 */
public class IsDoctorInterceptor implements Interceptor {

	@Override
	public void intercept(Invocation inv) {
		Controller controller = inv.getController();
		try {
			User user = (User)controller.getSessionAttr("user");
			if (user==null) {
				backToIndexLogin(controller);
			} else if (user.getType()!=1) {
				backToIndex(controller);
			} else {
				inv.invoke();
			}
		} catch (NullPointerException e) {
			e.printStackTrace();
			backToIndexLogin(controller);
		}
	}

	private void backToIndexLogin(Controller controller) {
		controller.redirect("/#login");
	}
	private void backToIndex(Controller controller) {
		controller.redirect("/");
	}
}
