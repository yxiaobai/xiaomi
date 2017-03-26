function checkForm() {
    return cheakUser() && cheakPsw() && cheakPsw2() && cheakMails() && checkPhone()&&checkAdds();
}
//表单不能为空
function checkForm() {
    for (var i = 0; i < document.form1.elements.length - 1; i++) {
        if (document.form1.elements[i].value == "") {
            alert("表单项不能为空")
            document.form1.elements[i].focus();
            return false;
        }
    }
    return true;
}
//用户名
function cheakUser() {
    var users = document.getElementById("user").value;
    if (users.trim().length != 0) {
        for (var i = 0; i < user.length; i++) {
            var j = users.substring(i, i + 1);
            if (j >= 0) {
                document.getElementById("userId").innerHTML = "姓名中不能包含数字";
                return false;
            }
        }
        document.getElementById("userId").innerHTML = "";
        return true;
    }
    else {
        document.getElementById("userId").innerHTML = "用户名不能为空";
        document.getElementById("nn").focus();
        return false;
    }

}
function checkUname() {
    var name = document.getElementById("uname").value;
    var expr = /^[\u4e00-\u9fa5]{2,6}$/;
    if (!expr.test(name)) {
        document.getElementById("unameId").innerHTML = "输入的姓名有误";
        return false;
    } else {
        document.getElementById("unameId").innerHTML = "";
        return true;
    }
}
//密码
function cheakPsw() {
    var psw = document.getElementById("pass").value;
    if (psw.trim().length < 6) {
        document.getElementById("pswId").innerHTML = "密码不能小于六位";
        document.getElementById("pass").focus();
        return false;
    }
    else {
        document.getElementById("pswId").innerHTML = "";
        return true;
    }
}
//确认密码
function cheakPsw2() {
    var psw = document.getElementById("pass").value;
    var upsw = document.getElementById("upsw").value;
    //alert(psw);alert(upsw);
    if (upsw == psw && cheakPsw()) {
        document.getElementById("upswId").innerHTML = "";
        return true;
    }
    else {
        document.getElementById("upswId").innerHTML = "密码不一致";
        document.getElementById("upsw").focus();
        return false;
    }
}
//邮箱
function cheakMails() {
    var mails = document.getElementById("maii").value;
    var expr = /^([0-9]|[a-z])+@([0-9]|[a-z])+(\.[c][o][m])$/i;
    if (!expr.test(mails)) {
        document.getElementById("mailId").innerHTML = "输入的邮箱格式有误";
        return false;
    } else {
        document.getElementById("mailId").innerHTML = "";
        return true;
    }
}
//手机号
function checkPhone() {
    // 利用正则表达式对输入数据匹配
    var id = document.getElementById("phone").value;
//匹配到一个非数字字符，则返回false
    var expr = /\D/i;
    if (expr.test(id)) {
        document.getElementById("phoneId").innerHTML = "不能输入非数字字符";
        return false;
    }
    else {
        document.getElementById("phoneId").innerHTML = "";
        return true;
    }
}
//地址
function checkAdds() {
    var adds =  document.getElementById("adds");
    if(adds.val()==""||adds.val().length==0){
        document.getElementById("addsId").innerHTML="地址不能为空";
        return false;
    }else{
        document.getElementById("addsId").innerHTML="";
        return true;
    }
}



