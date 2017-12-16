package com.ds.service;

import com.ds.common.model.User;
import com.ds.vo.UserVO;
import com.jfinal.plugin.activerecord.Page;

public interface UserService {
    /** 登录 **/
    public UserVO login(String account, String password);
    /** 注册 **/
    public UserVO register(String account, String password, String passwordAgain, String uname, int gender, int age, String medicalHistory, String symptom, int type);
    /** 获取用户 */
    public User getUser(String id);
    /** add用户 */
    public boolean add(User user);
    /** delete用户 */
    public boolean deleteUserById(String id);
    /** 更改信息 */
    public UserVO modifyInfo(String id, String uname, int gender, int age, String medicalHisory,
                             String symptom, int type);
    /** 修改密码*/
    public boolean modifyPsw(String account, String oldPsw, String newPsw,
                             String newPswAgain);

    public Page<User> getUsers(int type);

}
