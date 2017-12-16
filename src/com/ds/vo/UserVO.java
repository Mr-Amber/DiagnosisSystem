package com.ds.vo;

import com.ds.common.model.User;
import com.ds.common.result.UserResult;

public class UserVO {
    private UserResult userResult;
    private User user;

    public UserVO(UserResult userResult, User user) {
        this.userResult = userResult;
        this.user = user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public void setUserResult(UserResult loginResult) {
        this.userResult = loginResult;
    }

    public User getUser() {
        return user;
    }

    public UserResult getUserResult() {
        return userResult;
    }

    public boolean isLoginSuccess() {
        return getUserResult() == UserResult.SUCCESS && user!=null;
    }

    public String getResultInfo() {
        return userResult.getInfo();
    }

    public String getName() {
        return user.getUname();
    }
}
