package com.ds.service.impl;

import com.ds.common.model.User;
import com.ds.common.result.UserResult;
import com.ds.service.UserService;
import com.ds.vo.UserVO;
import com.jfinal.kit.PropKit;
import com.jfinal.plugin.activerecord.Page;

public class UserServiceImpl implements UserService{
    private static UserServiceImpl instance = new UserServiceImpl();
    private UserServiceImpl() {}
    public static UserServiceImpl getInstance() {
        return instance;
    }

    @Override
    public UserVO login(String account, String password) {
        return logOrReg(account, password, null, null, 0, 0, null, null, 1);
    }

    @Override
    public UserVO register(String account, String password, String passwordAgain, String uname, int gender, int age, String medicalHistory, String symptom, int type) {
        return logOrReg(account, password, passwordAgain, uname, gender, age, medicalHistory, symptom, type);
    }
    // 由于只有登录注册的需求，虽然两个方法代码重复部分高，也不需要使用策略模式
    private UserVO logOrReg(String account, String password, String passwordAgain, String uname, int gender, int age, String medicalHistory, String symptom, int type) {
        boolean isLog=(passwordAgain==null);
        User user = null;
        UserResult result = (isLog) ? verifyLogin(account, password) : verifyRegister(account, password, passwordAgain);
        if (result == UserResult.FORMAT_PASS) {
            user = (isLog) ? User.dao.login(account, password) :User.dao.register(account, password, uname, gender, age, medicalHistory, symptom, type);
            if (user == null) {
                result = UserResult.PSW_ERROR;
            } else {
                result = UserResult.SUCCESS;
            }
        }
        return new UserVO(result, user);
    }

    private UserResult verifyRegister(String account, String password, String passwordAgain) {
        if (!isConfirmationPass(password, passwordAgain)) {
            return UserResult.PSW_AGAIN_ERROR;
        }
        if (isAccountExist(account)) {
            return UserResult.ACC_EXIST;
        }
        return verifyLogin(account, password);
    }

    private boolean isConfirmationPass(String password, String passwordAgain) {
        if(passwordAgain==null || !password.equals(passwordAgain)){
            return false;
        }
        return true;
    }

    private boolean isAccountExist(String account) {
        if(account!=null && User.isExist(account)){
            return true;
        }
        return false;
    }

    private UserResult verifyLogin(String account, String password) {
        if (!isAccountFormatPass(account)) {
            return UserResult.ACC_FORMAT_ERROR;
        }
        if (!isPasswordFormatPass(password)) {
            return UserResult.PSW_FORMAT_ERROR;
        }
        return UserResult.FORMAT_PASS;
    }

    private boolean isAccountFormatPass(String account) {
        if(account!=null && account.matches(PropKit.get("accountFormat"))){
            return true;
        }
        return false;
    }

    private boolean isPasswordFormatPass(String password) {
        if(password!=null && password.matches(PropKit.get("passwordFormat"))){
            return true;
        }
        return false;
    }

    @Override
    public User getUser(int id) {
        return User.dao.findById(id);
    }

    @Override
    public boolean add(User user) {
        return User.dao.add(user);
    }

    @Override
    public boolean deleteUserById(int id) {
        return User.dao.deleteById(id);
    }

    @Override
    public UserVO modifyInfo(int id, String uname, int gender, int age, String medicalHisory, String symptom, int type) {
        User user =  User.dao.modifyInfoById(id, uname, gender, age, medicalHisory, symptom, type);
        return new UserVO(UserResult.SUCCESS, user);
    }

    @Override
    public boolean modifyPsw(String account, String oldPsw, String newPsw, String newPswAgain) {
        UserVO userVO = login(account, oldPsw);
        if (!userVO.isLoginSuccess()) {
            return false;
        }
        if (!isConfirmationPass(newPsw, newPswAgain) || !isPasswordFormatPass(newPsw)) {
            return false;
        }
        return User.dao.modifyPsw(userVO.getUser().getUid(), newPsw);
    }

    @Override
    public Page<User> getUsers(int type) {
        return null;
    }
}
