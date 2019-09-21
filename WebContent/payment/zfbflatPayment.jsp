<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="bean.goodsBean" %>
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
         <%@ include  file ="../top.jsp" %>
      
    	<div id='div1' style="width:720;height:583; position: absolute; left: 250px; top: 50px;">
   			<form action="" method="post">
   			 <%
              			ArrayList buylist = (ArrayList) session.getAttribute("buylist");
             			 double total = 0;
             			  for(int i=0;i<buylist.size();i++){
                              goodsBean single = (goodsBean)buylist.get(i);
                              double price = single.getGoodsPrice();
                              int buynum = single.getGoodsNum();
                              double pay = ((int)((price*buynum+0.05f)*10))/10f;
                              total += pay;
             			  }
                  %>
   			<input type="hidden" name="orderid" value="${param.orderid}">
   		
   			<input type="hidden" name="orderDate" value="${param.orderDate}">
    		<table border="1" bordercolor="lightgrey" bgcolor="#F9F9F9" width="600" height="200" rules="none" cellpadding="0" cellspacing="0" style="margin-top:230">
				 <tr>
				 	<td style="padding-left:100">
				 		订单号：<font color="red">${param.orderid}</font>，您需要支付：<font color="red">￥<%=Math.round(total*100)/100.0 %></font><br><br>
				 		你选择的是通过支付宝支付平台进行网上支付，只有在网上支付成功后，我们才会为您发货。<br><br>
				 		请立即支付：<input type="button" value="确认支付" style="width: 60px;height: 40px;" onclick="showPay()">
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
					<td style="padding-left: 100">输入密码：<input type="password" style="width: 300px;height: 40px;" id="password"  >
						<button style="color: black;text-decoration:none;width: 60px;height: 40px;" type="button" onclick="cancel()">
						取消
						</button>&nbsp;&nbsp;&nbsp;
						<button style="color: black;text-decoration:none;width: 60px;height: 40px;" type="button"  onclick="submit_pay()">提交支付
							
						</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
     	
  	</body>
</html>
