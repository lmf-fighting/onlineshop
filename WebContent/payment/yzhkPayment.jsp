<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
	<head>
    	<base href="<%=basePath%>">    
    	<title>支付订单</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<link rel="stylesheet" type="text/css" href="css/detail.css">
		<link rel="stylesheet" type="text/css" href="css/payment.css">
		<script type="text/javascript" src="js/confirmPay.js"></script>
  	</head>
    <body>
    	
    	
 <!-- 顶部区域start -->
      <header class="top_bg">
        <div class="top_document">
          <div class="floatl">
            <img src="photo/index/store.png" width="18" height="18">收藏|HI，欢迎来订购！
       
          </div>
          <div class="floatr">
                        客户服务<img src="photo/index/menu.png" width="18" height="18">&nbsp;
                        网站导航<img src="photo/index/site.png" width="18" height="18">&nbsp;
            <span class="droparrow">
            <span class="shopcart"></span>我的购物车
            <span class="orange">0</span>件
            <img alt="arrow" src="photo/index/shoppingcar.png" width="18" height="18"></span>
          </div>
        </div>
      </header>
      <!-- 顶部区域end -->
        <!-- logo和banner start -->
      <div class="logo">
        <img src="photo/index/banner1.png" width="100%" height="180">
      </div>
      <!-- logo和banner end -->
      
    	<div  id='div1' style="background: url(); width: 720; height: 10; position: absolute; left: 250px; top: 50px;">
   			<form action="" method="post">
	   		<table border="1" bordercolor="lightgrey" bgcolor="#F9F9F9" width="600" height="200" rules="none" cellpadding="0" cellspacing="0" style="margin-top:230">
				 <tr>
				 	<td style="padding-left:100">
				 		订单号：<font color="red">${param.orderid}</font>，您需要支付：<font color="red">￥${param.amount}</font><br><br>
				 		你选择的是通过邮政汇款支付订单，只有汇款成功后，我们才会为您发货。
				 	 <br> 请立即支付：<input type="button" value="确认支付" onclick="showPay()">
				 	</td>
				 </tr>
    		</table>
   			</form>
   		</div>
    	
    	<div id='div2'
		style="background: url(); width: 720; height: 10; position: absolute; left: 200px; display: none;">
		<form action="" method="post">
			<table border="1" bordercolor="lightgrey" bgcolor="#F9F9F9"
				width="600" height="200" rules="none" cellpadding="0"
				cellspacing="0" style="margin-top: 230">
				<tr>
					<td style="padding-left: 100">输入密码：<input type="password" id="password"  >
						<button style="color: black;text-decoration:none;" type="button" onclick="cancel()">
						取消
						</button>&nbsp;&nbsp;&nbsp;
						<button style="color: black;text-decoration:none;" type="button" onclick="submit_pay()">提交支付
							
						</button>
					</td>
				</tr>
			</table>
		</form>
	</div> 
	
  	</body>
</html>
