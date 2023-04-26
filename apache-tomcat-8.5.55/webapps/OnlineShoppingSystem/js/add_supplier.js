
window.onload = function () {
    //给表单绑定 onsubmit 事件
	document.getElementById("form").onsubmit = function (){
        return  checkName()&&checkTel();
    }
}
document.getElementById("name").onblur = checkName;
document.getElementById("tel").onblur = checkTel;

//编写一个方法，用户校验name checkName 只能匹配2-100个汉字
function checkName() {
    //获取用户名的值
    var name = document.getElementById("name").value;
    //定义正则规则
    var reg_name = /^[\u4e00-\u9fa5]{2,100}$/;
    //判断用户名是否符合正则规则
    var flag = reg_name.test(name);
    var span = document.getElementById("s_name");
    if(flag){
        span.innerHTML = "<img width='35px' height='25px' src='./images/right.png'/>";
    }
    else{
    	span.className="span_error";
        span.innerHTML = "姓名格式错误！";
    }
    return flag;
}
// 编写一个方法，用户校验tel checkTel
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



