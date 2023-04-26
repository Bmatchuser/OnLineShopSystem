window.onload = function() {
	// 给表单绑定 onsubmit 事件
	document.getElementById("form").onsubmit = function() {
		return checkCompany()&&checkNumber()&&checkPrice()&&checkPicture();
	}
}

document.getElementById("company").onblur = checkCompany;
document.getElementById("number").onblur = checkNumber;
document.getElementById("price").onblur = checkPrice;
document.getElementById("picture").onblur = checkPicture;

// 编写一个方法，用户校验name checkName 只能匹配2-100个汉字

// 编写一个方法，用户校验company checkConpany 只能匹配2-100个汉字
function checkCompany() {
	// 获取用户名的值
	var company = document.getElementById("company").value;
	// 定义正则规则
	var reg_company = /^[\u4e00-\u9fa5]{2,100}$/;
	// 判断用户名是否符合正则规则
	var flag = reg_company.test(company);
	var span = document.getElementById("s_company");
	if (flag) {
		span.innerHTML = "<img width='35px' height='25px' src='./images/right.png'/>";
	} else {
		span.className = "span_error";
		span.innerHTML = "供应商名格式错误！";
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
		span.innerHTML = "价格格式错误！";
	}
	return flag;
}
// 编写一个方法，用户校验name checkName 只能匹配2-100个汉字
function checkPicture() {
	// 获取用户名的值
	var picture = document.getElementById("picture").value;
	// 定义正则规则  /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/
	
	var reg_picture = /(.*)\.(jpg|bmp|gif|ico|pcx|jpeg|tif|png|raw|tga)$/;
	// 判断用户名是否符合正则规则
	var flag = reg_picture.test(picture);
	var span = document.getElementById("s_picture");
	if (flag) {
		span.innerHTML = "<img width='35px' height='25px' src='./images/right.png'/>";
	} else {
		span.className	 = "span_error";
		span.innerHTML = "照片编号格式错误！";
	}
	return flag;
}