$(document).ready(function() {
    var loginForm = $('#loginForm');
    loginForm.form({
        keyboardShortcuts:false,
        fields: {
            loginAccount: accountRules.account('loginAccount'),
            loginPassword: accountRules.password('loginPassword')
        },
        onFailure : function(formErrors, fields){loginForm.find('.field.error input:first')[0].focus();},
        onSuccess : function(event, fields){
            loginForm.prev().dimmer('show');

            post("login",fields).done(function(result){
                if(result.result=="成功"){
                    window.history.replaceState(null, null, path);
                    window.location.reload();
                } else {
                    swal({
                        title: result.result,
                        type: "error",
                        allowOutsideClick:true,
                        confirmButtonColor: "#DD6B55"
                    });
                    loginForm.prev().dimmer('hide');
                }
            });

        }
    });


    bindForm(loginForm, '.login.button');
});

function post(url, data) {
    return $.post(url, data).fail(
        function(result){
            console.log(result);
            swal({
                title:"服务器出现未知错误",
                type: "warning",// "warning","error","success"and"info"
                allowOutsideClick:true,
                confirmButtonColor: "#DD6B55"
            });
        }
    );
}

function RulesObj(domName, ruleTypes ,errorMsgs){
    var rulesObj = new Object;
    rulesObj.identifier = domName;
    if (typeof ruleTypes == 'string') {
        ruleTypes = [ruleTypes];
    }
    if (typeof errorMsgs == 'string') {
        errorMsgs = [errorMsgs];
    }
    if (ruleTypes.length!=errorMsgs.length){
        console.err("参数有误");
        return;
    };
    var arr = new Array();
    for (var i = 0; i < ruleTypes.length; i++) {
        arr.push({
            type   : ruleTypes[i],
            prompt : errorMsgs[i]
        });
    };
    rulesObj.rules = arr;
    return rulesObj;
}

/*用户对象*/
var accountRules = {
    account : function(domName) {
        return RulesObj(domName, 'regExp[/^[a-zA-Z0-9_]{6,32}$/]', '<b>帐号</b>由 6-32 个字母、数字、下划线组成');
    },
    password : function(domName) {
        return RulesObj(domName, 'regExp[/^[a-zA-Z0-9_]{6,32}$/]', '<b>密码</b>由 6-32 个字母、数字、下划线组成');
    },
    oldPasswordModified : function(domName) {
        return RulesObj(domName, 'empty', '请输入旧密码');
    },
    passwordConfirmed : function(domName, passwordDomName) {
        return RulesObj(domName, 'match['+passwordDomName+']', '两次输入密码不一致');
    },
    name : function(domName) {
        return RulesObj(domName, ['empty', 'maxLength[20]'], ['请输入姓名', '姓名格式应少于 {ruleValue} 个字符']);
    },
    phone : function(domName) {
        return RulesObj(domName, 'regExp[/^1[3|4|5|7|8][0-9]{9}$/]', '手机格式错误');
    },
    email : function(domName) {
        return RulesObj(domName, ['email', 'maxLength[40]'], ['email 格式错误', 'email 格式应少于 {ruleValue} 个字符']);
    }
}

function searchInSimple(k) {
    if(k!=null && k!=""){
        window.location.href='search/?k='+k;
    } else if(k==''){
        window.location.href='search/';
    }
}

function bindForm (form, formBtnClass, todoFunc){
    form.find('input').keydown(function(e) {
        if (e.keyCode == 13) {
            todoFunc?todoFunc():validate(form);
        }
    });
    form.find(formBtnClass).keydown(function(e) {
        e.preventDefault();
        if (e.keyCode == 13 || e.keyCode == 32) {
            todoFunc?todoFunc():validate(form);
        }
    });
    form.find(formBtnClass).click(function(e){
        todoFunc?todoFunc():validate(form);
    });
}

function validate(form) {
    if(form.prev().dimmer('is active')){
        return;
    }
    form.find('input,.button').blur();
    form.form('validate form');
}
