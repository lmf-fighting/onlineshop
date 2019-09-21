<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<script src="js/check.js"></script>
<title>登录界面</title>
<link rel="stylesheet" href="css/login.css">

</head>
<body>
	<header> </header>
	<div class="container">
		<div class="login_body l_clear">
			<div class="login_form l_float">
				<div class="login_top">
					<img src="imgs/logo.png" alt="" class="">

					<div class="login_tags b_clear">
						<span class="top_tag l_float active" onClick="PwdLogin()">密码登录</span>
						<span class="top_tag r_float" onClick="QrcodeLogin()">扫码登录</span>
					</div>
				</div>
				<div class="login_con">
					<form name="login" method="post" action="Loginform">
						<div>

							<label for="user_name">用户名</label> <input type="text"
								name="userName" id="username" placeolder="账号/手机号/邮箱"> <img
								src="imgs/icons/user.svg"height: 40px;>
							<p class="tips hidden" id="nameCheck" hidden="true">用户名输入不合法</p>
						</div>
						<div>
							<label for="user_pwd">密码</label> <input type="password"
								name="userPwd" id="PWD" " placeholder="请输入账户密码"> <img
								src="imgs/icons/lock.svg" height: 40px>
							<p class="tips hidden">请检查您的密码</p>
						</div>
						<div class="b_clear">
							<label for="auth_code" class="b_clear">验证码</label> 
							<input type="text" name="authcode" id="auth_code" class="l_float" maxlength="4">
							<script src="js/gVerify.js">	
							</script>
							<div class="auth_code l_float" id="v_container" name="verifyCode" style="width: 100px; height: 50px;">
							
							</div>
					    	<script>
								var verifyCode = new GVerify("v_container");
							</script>

							<img src="imgs/icons/auth_code.svg">
							<p class="tips hidden">验证码错误</p>

						</div>

						<div class="b_clear submit">

							<input type="button" name="l_submit" onclick="login_submit()" class="l_float" value="登录" /> 
							<input type="button" onclick="register.jsp;" class="r_float" value="注册" />
							
						</div>
					</form>
				</div>
				<div class="login_con hidden">
					<div class="qr_code">
						<img src="imgs/qr.png" alt="">
						<p>
							请使用微信扫码登录<br>仅支持已绑定微信的账户进行快速登录
						</p>
					</div>

				</div>
				<div class="login_otherAccount">
					<span>第三方登录</span> <a href="http://"><img
						src="imgs/icons/wechat.svg" alt="微信登录"></a> <a href="http://"><img
						src="imgs/icons/weibo.svg" alt="微博登录"></a> <a href=""><img
						src="imgs/icons/qq.svg" alt="QQ登录"></a>
				</div>

			</div>
			<div class="login_ad l_float" id="AdImg">
				<a href="shoppingIndex.jsp">查看详情</a>
			</div>
		</div>
		<div class="footer">
			<p>
				Copyright © 2018-12 ZQUjisuanjixueyuan <a href="#">shop</a>
			</p>
			
		</div>
	</div>

</body>

</html>


