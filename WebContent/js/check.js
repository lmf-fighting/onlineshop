function PwdLogin() {
	var login = document.getElementsByClassName("login_con");
	login[0].classList.remove("hidden");
	login[0].classList.add("show");
	login[1].classList.remove("show");
	login[1].classList.add("hidden");
	var tags = document.getElementsByClassName("top_tag");
	tags[0].classList.add("active");
	tags[1].classList.remove("active");
	var ad = document.getElementById("AdImg");
	ad.style.height = "558px";
	// ad.style.backgroundImage='url(https://static.zcool.cn/v1.1.43/passport4.0/images/login-ground.jpg)';
}
function QrcodeLogin() {
	var login = document.getElementsByClassName("login_con");
	login[0].classList.remove("show");
	login[0].classList.add("hidden");
	login[1].classList.remove("hidden");
	login[1].classList.add("show");
	var tags = document.getElementsByClassName("top_tag");
	tags[1].classList.add("active");
	tags[0].classList.remove("active");
	var ad = document.getElementById("AdImg");
	ad.style.height = "407px";
}

// 用户输入错误提示
function login_submit() {
	if (loginForm()) {
		login.submit();
		
	} else {
		return false;

	}

}
function IsDigit(cCheck) {
	return (('0' <= cCheck) && (cCheck <= '9'));

}
function IsAlpha(cCheck) {
	return ((('a' <= cCheck) && (cCheck <= 'z')) || (('A' <= cCheck) && (cCheck <= 'z')))
}

function loginForm() {
	var username = login.userName.value;
	var nIndex = 0;
	
	var re = /^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/;
	var tel = /^[1]\d{10}$/;
	for (nIndex = 0; nIndex < tirm(username).length; nIndex++) {
		cCheck = tirm(username).charAt(nIndex);
		if (!(IsDigit(cCheck) || IsAlpha(cCheck) || cCheck == '-'
				|| cCheck == '_' || cCheck == '，')) {
			alert("账号错误!");
			login.userName.focus();
			return false;
		}
	}
	if (username.length < 3 && !re.test(username) && !tel.test(username)) {
		alert("账号错误!");
		login.userName.focus();
		return false;
	} 
	if (tirm(login.userPwd.value).length < 6) {
		alert("用户密码至少6位");
		login.userPwd.focus();
		return false;
	}
	
	
	if (!(verifyCode.validate(tirm(login.authcode.value)))) {
		alert("验证码错误");
		login.authcode.focus();
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
function checkshopcar() {
	var name=form.userName.value;
	alert(name);
	if(check.userName.value!=" "){
		
	
		alert("加入购物车成功！");
		return true;
	}
	else{
		alert("请登录...");
		window.location.href="./login.jsp";
		return false;
	}
}
