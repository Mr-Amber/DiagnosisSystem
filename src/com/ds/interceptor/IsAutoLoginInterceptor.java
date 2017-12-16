package com.ds.interceptor;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.ds.common.model.User;
import com.ds.service.impl.UserServiceImpl;
import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;
import com.jfinal.core.Controller;


/**
 * 进行自动登录拦截
 */
public class IsAutoLoginInterceptor implements Interceptor {

	@Override
	public void intercept(Invocation inv) {
		Controller controller = inv.getController();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		Date date=new Date();
		controller.setSessionAttr("now", dateFormat.format(date));
		try {
			User user = (User)controller.getSessionAttr("user");
			if (user==null) {
				String id = controller.getCookie("userId");
				if (id!=null && isNumeric(id)) {// auto login
					user= UserServiceImpl.getInstance().getUser(id);
					if (user.getType()!=1) {
						backToIndex(controller);
						return;
					}
					controller.setSessionAttr("user", user);
					controller.setCookie("userId", ""+user.getUid(), 24*3600, true);
				}
			}
			if (user.getType()!=1) {
				backToIndex(controller);
			}
			inv.invoke();
		} catch (NullPointerException e) {
			e.printStackTrace();
			backToIndex(controller);
		}
	}

	private void backToIndex(Controller controller) {
		controller.redirect("/#login");
	}
	
	public static boolean isNumeric(String str) {
		for (int i = 0; i < str.length(); i++) {
			if (!Character.isDigit(str.charAt(i))) {
				return false;
			}
		}
		return true;
	}

}
