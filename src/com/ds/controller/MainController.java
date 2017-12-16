package com.ds.controller;

import com.ds.common.model.User;
import com.ds.interceptor.IsLoginInterceptor;
import com.ds.interceptor.IsNotLoginInterceptor;
import com.ds.interceptor.validator.LoginValidator;
import com.ds.interceptor.validator.RegisterValidator;
import com.ds.service.UserService;
import com.ds.service.impl.UserServiceImpl;
import com.ds.vo.UserVO;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;

public class MainController extends Controller {
    private UserService userService = UserServiceImpl.getInstance();

    // =========================详细的方法=====================
    // 登录
    @Before({IsNotLoginInterceptor.class, LoginValidator.class})
    public void login() {
        String account = getPara("loginAccount");
        String password = getPara("loginPassword");

        UserVO result = userService.login(account, password);
        setAttr("result", result.getResultInfo());

        setLogin(result);
        renderJson();
    }
    // 登出
    @Before(IsLoginInterceptor.class)
    public void logout() {
        setLogout();
        renderJson("result", "成功");
    }

    // 注册
    @Before({IsNotLoginInterceptor.class, RegisterValidator.class})
    public void register() {
        String account = getPara("account");
        String password = getPara("password");
        String passwordAgain = getPara("pswAgain");
        String uname = getPara("uname");
        int gender = getParaToInt("gender");
        int age = getParaToInt("age");
        String medical_history = getPara("medical_history");
        String symptom = getPara("symptom");
        int type = getParaToInt("type");

        UserVO result = userService.register(account, password, passwordAgain, uname, gender, age, medical_history, symptom, type);
        setAttr("result", result.getResultInfo());

        setLogin(result);
        renderJson();
    }


    @Before(IsLoginInterceptor.class)
    public void modifyInfo() {
        String uname = getPara("uname");
        int gender = getParaToInt("gender");
        int age = getParaToInt("age");
        String medical_history = getPara("medical_history");
        String symptom = getPara("symptom");
        int type = getParaToInt("type");
        String id = getLoggedUserId();

        UserVO result = userService.modifyInfo(id, uname, gender, age, medical_history, symptom, type);
        setAttr("result", result.getResultInfo());

        setLogin(result);
        renderJson();
    }

    @Before(IsLoginInterceptor.class)
    public void modifyPsw() {
        String oldPsw = getPara("oldPsw");
        String newPsw = getPara("newPsw");
        String newPswAgain = getPara("newPswAgain");

        boolean result = userService.modifyPsw(getLoggedUserAccount(), oldPsw, newPsw, newPswAgain);
        setAttr("result", result ? "成功" : "原密码错误");

        renderJson();
    }

    // =================private==================
    private void setLogin(UserVO result) {
        if (result.isLoginSuccess()) {
            setSessionAttr("user", result.getUser());
            setCookie("userId", ""+result.getUser().getUid(), 24*3600, true);
        }
    }

    private void setLogout() {
        removeCookie("userId");
        removeSessionAttr("user");
    }

    private boolean isLogged() {
        if (getLoggedUser()==null) {
            return false;
        }
        return true;
    }
    private String getLoggedUserId() {
        if (!isLogged()) {
            System.err.println("no logged yet");
        }
        return getLoggedUser().getUid();
    }
    private String getLoggedUserAccount() {
        if (!isLogged()) {
            System.err.println("no logged yet");
        }
        return getLoggedUser().getAccount();
    }

    private User getLoggedUser() {
        return ((User) getSessionAttr("user"));
    }
}
