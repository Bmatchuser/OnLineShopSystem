
window.onload = function () {
    //给表单绑定 onsubmit 事件
	document.getElementById("form").onsubmit = function (){
        return  checkUsername()&&checkPassword()&&checkPassword2()&&checkEmail()&&checkName()&&checkTel();
    }
}
document.getElementById("username").onblur = checkUsername;
document.getElementById("password").onblur = checkPassword;
document.getElementById("password2").onblur = checkPassword2;
document.getElementById("email").onblur = checkEmail;
document.getElementById("name").onblur = checkName;
document.getElementById("tel").onblur = checkTel;


//编写一个方法，用户校验用户名
function checkUsername() {
    //获取用户名的值
    var username = document.getElementById("username").value;
    //定义正则规则
    var reg_email = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    //判断用户名是否符合正则规则
    var flag1 = reg_email.test(username);
    //定义正则规则
    var reg_username = /^\d{11,11}$/;
    //判断用户名是否符合正则规则
    var flag2 = reg_username.test(username);
    var span = document.getElementById("s_username");
    if(flag1 || flag2){
        span.innerHTML = "<img width='35px' height='25px' src='./images/right.png'/>";

    }
    else{
    	span.className="span_error";
        span.innerHTML = "用户名格式错误！";
    }

    return flag1 || flag2;
}
// 编写一个方法，用户校验密码 checkPassword
function checkPassword() {
    //获取密码的值
    var password = document.getElementById("password").value;
    //定义正则规则
    var reg_password = /^\w{6,12}$/;
    //判断密码是否符合正则规则
    var flag = reg_password.test(password);
    var span = document.getElementById("s_password");
    if(flag){
        span.innerHTML = "<img width='35px' height='25px' src='./images/right.png'/>";

    }
    else{
    	span.className="span_error";
        span.innerHTML = "密码格式错误！";
    }

    return flag;
}

//编写一个方法，用户校验密码 checkPassword
function checkPassword2() {
    //获取密码的值
    var password2 = document.getElementById("password2").value;
    //定义正则规则
    var reg_password = /^\w{6,12}$/;
    //判断密码是否符合正则规则
    var flag = reg_password.test(password2);
    var span = document.getElementById("s_password2");
    if(flag){
        span.innerHTML = "<img width='35px' height='25px' src='./images/right.png'/>";

    }
    else{
    	span.className="span_error";
        span.innerHTML = "密码格式错误！";
    }

    return flag;
}
//编写一个方法，用户校验email checkEmail
function checkEmail() {
    //获取用户名的值
    var email = document.getElementById("email").value;
    //定义正则规则
    var reg_email = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    //判断用户名是否符合正则规则
    var flag = reg_email.test(email);
    var span = document.getElementById("s_email");
    if(flag){
        span.innerHTML = "<img width='35px' height='25px' src='./images/right.png'/>";
    }
    else{
    	span.className="span_error";
        span.innerHTML = "邮箱格式错误！";
    }
    return flag;
}
//编写一个方法，用户校验name checkName 只能匹配2-100个汉字
function checkName() {
	// 获取用户名的值
	var name = document.getElementById("name").value;
	// 定义正则规则
	var reg_name = /^[\u4e00-\u9fa5]{2,100}$/;
	// 判断用户名是否符合正则规则
	var flag = reg_name.test(name);
	var span = document.getElementById("s_name");
	if (flag) {
		span.innerHTML = "<img width='35px' height='25px' src='./images/right.png'/>";
	} else {
		span.className = "span_error";
		span.innerHTML = "商品名格式错误！";
	}
	return flag;
}
//编写一个方法，用户校验tel checkTel
function checkTel() {
    //获取用户名的值
    var tel = document.getElementById("tel").value;
    //定义正则规则
    var reg_tel = /^\d{11,11}$/;
    //判断用户名是否符合正则规则
    var flag = reg_tel.test(tel);
    var span = document.getElementById("s_tel");
    if(flag){
        span.innerHTML = "<img width='35px' height='25px' src='./images/right.png'/>";
    }
    else{
    	span.className="span_error";
        span.innerHTML = "手机号格式错误！";
    }
    return flag;
}



