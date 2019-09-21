/**
 * 注册检测输入合法性
 */
function register_submit() {
	if (registerForm()) {
		register.b_submit.disabled = true;
		register.submit();
		
	} else
		{
		
		return false;
		}
		
}
function IsDigit(cCheck) {
	return (('0' <= cCheck) && (cCheck <= '9'));

}
function IsAlpha(cCheck) {
	return ((('a' <= cCheck) && (cCheck <= 'z')) || (('A' <= cCheck) && (cCheck <= 'z')))
}

function checkuser() {
	var username = register.userName.value;

	var nIndex = 0;
	if (username.length < 3) {
		userName.innerHTML = "●用户名至少为3位";
		register.userName.focus();
		return false;
	}
	for (nIndex = 0; nIndex < tirm(username).length; nIndex++) {
		cCheck = tirm(username).charAt(nIndex);
		if (!(IsDigit(cCheck) || IsAlpha(cCheck) || cCheck == '-'
				|| cCheck == '_' || cCheck == '，')) {
			userName.innerHTML = "●用户名只能使用字母、数字以及-、_和，,并且不能使用中文";
			register.userName.focus();
			return false;
		}
	}
}

function registerForm() {
	if (tirm(register.userName.value).length == 0) {
		userName.innerHTML = "●请输入用户名";
		
		register.userName.focus();
		return false;
	} else if (checkuser()==false) {
		return false;
	}
	if (tirm(register.email.value).length == 0) {
		email.innerHTML = "●请输入邮箱";
		register.email.focus();
		return false;
	}
	else if(tirm(register.email.value).length != 0) {
		var re = /^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/; 
	    if (!re.test(register.email.value)) {
	    	email.innerHTML = "●输入的邮箱有误！";
			register.email.focus();
			return false;
		}
	} 
	if (tirm(register.userPwd.value).length< 6) {
		userPwd.innerHTML="●用户密码至少6位";
		register.userPwd.focus();
		return false;
	}
	if (tirm(register.userRePwd.value)!=tirm(register.userPwd.value)) {
		userRePwd.innerHTML="●与初始密码不一致，请重新输入";
		register.userRePwd.focus();
		return false;
	}
	if (tirm(register.realName.value).length == 0) {
		realName.innerHTML = "●请输入真实姓名";
		register.realName.focus();
		return false;
	}
	if (tirm(register.headPic.value).length == 0) {
		headPic.innerHTML = "●请上传头像";
		register.headPic.focus();
		return false;
	}
	
	if (tirm(register.mobile.value).length != 0) {
		var telephone1reg = /^[1]\d{10}$/;
		if (!telephone1reg.test(register.mobile.value)) {
			mobile.innerHTML = "●手机号码必须有11位数字组成";
			register.mobile.focus();
			return false;
		}
	}
	else{
		mobile.innerHTML = "●请输入手机号码";
		register.mobile.focus();
		return false;
	}
	if (register.cmbProvince.value=="请选择省份"
			&& register.cmbCity.value=="请选择城市"
			&& register.cmbArea.value=="请选择区县") {
		   address.innerHTML = "●请选择地址";
		return false;
	}
	if (tirm(register.address.value).length == 0) {
		address.innerHTML = "●请输入详细地址";
		register.address.focus();
		return false;
	}
	
	return true;
}
function tirm(stxt) {
	if (stxt != null && stxt != "") {
		var re = /(^\s*)|(\s*$)/;
		stxt = stxt.replace(re, "");
	} else
		stxt = "";
	return stxt;
}
function ischecked(field) {
	if (!field.checked)
		return false;
	else
		return true;
}
