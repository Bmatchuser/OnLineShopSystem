window.onload = function() {
	// 给表单绑定 onsubmit 事件
	document.getElementById("form").onsubmit = function() {
		return  checkTel() 
	}
}

document.getElementById("tel").onblur = checkTel;

// 编写一个方法，用户校验tel checkTel
function checkTel() {
	// 获取用户名的值
	var tel = document.getElementById("tel").value;
	// 定义正则规则
	var reg_tel = /^\d{11,11}$/;
	// 判断用户名是否符合正则规则
	var flag = reg_tel.test(tel);
	var span = document.getElementById("s_tel");
	if (flag) {
		span.innerHTML = "<img width='35px' height='25px' src='./images/right.png'/>";
	} else {
		span.className = "span_error";
		span.innerHTML = "手机号格式错误！";
	}
	return flag;
}
