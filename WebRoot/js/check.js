/**
 * @Author lds
 *  处理用户注册验证
 */

function $(id) {
	return document.getElementById(id);
}

function check() {

	var loginName = $("loginName").value;
	var loginPwd = $("loginPwd").value;
	var trueName = $("trueName").value;
	var email = $("email").value;
	var phone = $("phone").value;
	var address = $("address").value;

	$("loginNameInfo").innerHTML = "";
	$("loginPwdInfo").innerHTML = "";
	$("trueNameInfo").innerHTML = "";
	$("emailInfo").innerHTML = "";
	$("addressInfo").innerHTML = "";
	$("phoneInfo").innerHTML = "";

	var reg = /^[0-9a-zA-Z][0-9a-zA-Z_.-]{2,16}[0-9a-zA-Z]$/;
	var ereg = /^\w+@\w+(\.[a-zA-Z]{2,3}){1,2}$/;
	var preg = /^(13|15|18)\d{9}$/;

	for (var i = 0; i < document.frm.elements.length - 1; i++) {
		if (document.frm.elements[i].value == "") {
			alert("当前表单不能有空项");
			document.frm.elements[i].focus();
			return false;
		}
	}

	if (!reg.test(loginName)) {

		$("loginNameInfo").innerHTML = "用户名填写不正确,请重新输入!";
		$("loginName").focus();
		return false;
	}

	if (loginPwd.length < 6 || loginPwd.length > 16) {

		$("loginPwdInfo").innerHTML = "密码长度为6-16位,请重新输入!";
		$("loginPwd").focus();
		return false;
	}
	if (trueName.length > 0) {
		for (var i = 0; i < trueName.length; i++) {
			var j = trueName.substring(i, i + 1);
			if (isNaN(j) == false) {
				$("trueNameInfo").innerHTML = "姓名中不能包含数字!";
				$("trueName").focus();
				return false;
			}
		}
	}

	if (!preg.test(phone)) {
		$("phoneInfo").innerHTML = "手机号不正确,请重新输入!";
		$("phone").focus();
		return false;
	}
	
	if (!ereg.test(email)) {
		$("emailInfo").innerHTML = "邮箱格式不正确,请重新输入!";
		$("email").focus();
		return false;
	}

	

	/* if(email.indexOf("@")==-1||email.indexOf(".")==-1){
		alert("邮箱格式不正确,必须包含@和.");
		$("email").focus();
		return false;
	} */
	return true;
}