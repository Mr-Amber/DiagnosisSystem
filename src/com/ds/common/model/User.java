package com.ds.common.model;

import com.ds.common.model.base.BaseUser;
import com.jfinal.plugin.activerecord.Db;
import com.jfinal.plugin.activerecord.Page;
import com.jfinal.plugin.activerecord.Sqls;

public class User extends BaseUser<User> {
    public static final User dao = new User().dao();

    public static boolean isExist(String account) {
        return dao.findFirst(Sqls.get("isUserExist"), account)!=null;
    }

    public User login(String account, String password) {
        return dao.findFirst(Sqls.get("login"), account, password);
    }

    public User register(String account, String password, String uname, int gender, int age, String medicalHistory, String symptom, int type) {
        // 如果使用框架所带的做法调用update()，无法使用mysql的md5()函数，因此采取sql语句
        int result = Db.update(Sqls.get("register"),account, password, uname, gender, age, medicalHistory, symptom, type);
        if (result!=0) {
            return dao.login(account, password);
        }
        return null;
    }

    public boolean add(User user) {
        return user.save();
    }

    public User modifyInfoById(String id, String uname, int gender, int age, String medicalHisory, String symptom, int type) {
        User user = new User().findById(id);
        user.setUname(uname);
        user.setGender(gender);
        user.setAge(age);
        user.setMedicalHistory(medicalHisory);
        user.setSymptom(symptom);
        user.setType(type);

        user.update();
        return user;
    }

    public boolean modifyPsw(String id, String newPsw) {
        int result = Db.update(Sqls.get("modifyPsw"), newPsw, id);
        return result!=0?true:false;
    }

}
