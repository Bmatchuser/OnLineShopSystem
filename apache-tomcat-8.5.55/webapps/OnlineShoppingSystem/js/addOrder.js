window.onload = function() {
	// 给表单绑定 onsubmit 事件
	document.getElementById("form").onsubmit = function() {
		return checkUsername() && checkNumber() && checkTotalPrice()
				&& checkTel() && checkPrice();
	}
}
document.getElementById("username").onblur = checkUsername;
document.getElementById("tel").onblur = checkTel;
document.getElementById("number").onblur = checkNumber;
document.getElementById("price").onblur = checkPrice;
document.getElementById("totalPrice").onblur = checkTotalPrice;

// 编写一个方法，用户校验用户名
function checkUsername() {
	// 获取用户名的值
	var username = document.getElementById("username").value;
	// 定义正则规则
	var reg_email = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	// 判断用户名是否符合正则规则
	var flag1 = reg_email.test(username);
	// 定义正则规则
	var reg_username = /^\d{11,11}$/;
	// 判断用户名是否符合正则规则
	var flag2 = reg_username.test(username);
	var span = document.getElementById("s_username");
	if (flag1 || flag2) {
		span.innerHTML = "<img width='35px' height='25px' src='./images/right.png'/>";

	} else {
		span.className = "span_error";
		span.innerHTML = "用户名格式错误！";
	}

	return flag1 || flag2;
}
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

// 编写一个方法，用户校验number checkNumber()
function checkNumber() {
	// 获取用户名的值
	var number = document.getElementById("number").value;
	// 定义正则规则
	var reg_number = /^\d{1,10}$/;
	// 判断用户名是否符合正则规则
	var flag = reg_number.test(number);
	var span = document.getElementById("s_number");
	if (flag) {
		span.innerHTML = "<img width='35px' height='25px' src='./images/right.png'/>";
	} else {
		span.className = "span_error";
		span.innerHTML = "存量格式错误！";
	}
	return flag;
}
// 编写一个方法，用户校验price checkPrice()
function checkPrice() {
	// 获取用户名的值
	var price = document.getElementById("price").value;
	// 定义正则规则
	var reg_price = /^\d{1,10}$/;
	// 判断用户名是否符合正则规则
	var flag = reg_price.test(price);
	var span = document.getElementById("s_price");
	if (flag) {
		span.innerHTML = "<img width='35px' height='25px' src='./images/right.png'/>";
	} else {
		span.className = "span_error";
		span.innerHTML = "单价格式错误！";
	}
	return flag;
}
// 编写一个方法，用户校验total_price checktotal_price()
function checkTotalPrice() {
	// 获取用户名的值
	var totalPrice = document.getElementById("totalPrice").value;
	// 定义正则规则
	var reg_totalPrice = /^\d{1,10}$/;
	// 判断用户名是否符合正则规则
	var flag = reg_totalPrice.test(totalPrice);
	var span = document.getElementById("s_totalPrice");
	if (flag) {
		span.innerHTML = "<img width='35px' height='25px' src='./images/right.png'/>";
	} else {
		span.className = "span_error";
		span.innerHTML = "总价格式错误！";
	}
	return flag;
}
