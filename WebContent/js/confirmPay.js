/**
 * 点击确认支付后弹出的页面显示输入密码，点击确认后支付成功,点击取消，不做任何动作
 */

function showPay() {
	var div1 = document.getElementById("div1");
	var div2 = document.getElementById("div2");
	div2.style.display = "block";
	div1.style.display = "none";
}
function cancel() {
	var div1 = document.getElementById("div1");
	var div2 = document.getElementById("div2");
	div2.style.display = "none";
	div1.style.display = "block";
}
function submit_pay() {
	var password = document.getElementById("password");
	console.log(password.value);
	if (password.value=="") {
		alert("请输入6位支付密码！");
		return;
	}
	if (password.value.length != 6) {
		alert("密码长度必须等于6位！");
		return;
	}
	window.location.href="./pay_success.jsp";
  
}
