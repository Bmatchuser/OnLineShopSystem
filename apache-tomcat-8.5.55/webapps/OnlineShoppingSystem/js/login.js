
window.onload = function() {
	// 1.获取图片对象
	var img = document.getElementById("checkCode_img");
	// 2.绑定单击事件
	img.onclick = function() {
		// 加时间戳，是传递参数永不重复。
		var time = new Date().getTime();

		img.src = "servlet/CheckCodeServlet?" + time;
	}

	var a = document.getElementById("checkCode_a");
	a.onclick = function() {
		// 加时间戳，是传递参数永不重复。
		var time = new Date().getTime();

		img.src = "servlet/CheckCodeServlet?" + time;
	}

	// 给表单绑定 onsubmit 事件
	document.getElementById("form").onsubmit = function() {
		return checkUsername() && checkPassword();
	}
}
document.getElementById("username").onblur = checkUsername;
document.getElementById("password").onblur = checkPassword;
document.getElementById("email").onblur = checkEmail;


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

    return flag;
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