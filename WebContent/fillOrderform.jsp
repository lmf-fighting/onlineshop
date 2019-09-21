<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%	
	response.addHeader("Pragma","no-cache");
	response.addHeader("Cache-Control","no-cache");
	response.addDateHeader("Expires",0);	

    String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
	<head>
    	<base href="<%=basePath%>">    
    	<title>填写订单信息</title>	
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<link rel="stylesheet" type="text/css" href="css/detail.css">
		<script type="text/javascript" src="js/validateorderform.js"></script>
  	</head>  
 	<body>
    	 <!-- 顶部区域start -->
      <header class="top_bg">
        <div class="top_document">
          <div class="floatl">
            <c:choose>

					<c:when test="${userName!=null}">

						<div class="floatl">
							<img src="photo/index/store.png" width="18" height="18">收藏|HI，欢迎来订购！
							<a href=" " class="orange">${userName}</a>

						</div>

					</c:when>
					<c:otherwise>
						<div class="floatl">
							<img src="photo/index/store.png" width="18" height="18">收藏|HI，欢迎来订购！
							<a href="login.jsp" class="orange">[请登录]</a> <a href="register"
								class="orange">[免费注册]</a>
						</div>
					</c:otherwise>
				</c:choose>
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
        <img src="photo/index/banner2.jpg" width="100%" height="180">
      </div>
      
       <!-- 菜单导航  start-->
      <nav class="nav_bg">
        <div class="nav_content">
          <ul class="menu_nav">
            <li><a href="shoppingIndex.jsp" class="white">首页</a></li>
            <li><a href="classification.jsp" class="white">商品分类</a></li>
            <li>品牌活动</li>
            <li>原厂直供</li>
            <li>团购</li>
            <li>限时抢购</li>
            <li>促销打折</li>
          </ul>
        </div>
      </nav>
        
      
      <!-- logo和banner end -->
      
    	<table border="0" cellpadding="0" cellspacing="0" width="90%" align="center">
			
			<tr height="54"><td class="ding">填写订单信息</td></tr>
		</table>
		
    	<form action="createorderform" name="orderform" method="post">
    	<input type="hidden" name="buygoodsids" value="${requestScope.buygoodsids}">
    	<input type="hidden" name="buygoodsnum" value="${requestScope.buygoodsnum}">
    	<input type="hidden" name="goodsprices" value="${param.goodsprices}">
    	<table  border="1" bordercolor="#F2F3F5" width="90%" cellpadding="3" cellspacing="0" rules="none">
    		<tr height="35" bgcolor="#F2F3F5"><td colspan="3" class="dan">收货人信息</td></tr>
    		<tr bgcolor="white">
    			<td class="dan">收 货 人：</td>
    			<td colspan="2"><input type="text" name="getter" style="width: 300px;height: 30px;" margin-top:10px; onpropertychange="gettermessage.innerHTML=''"><b><span id="gettermessage" style="color:red"></span></b></td>
    		</tr>
    		<tr bgcolor="white">
    			<td class="dan">详细地址：</td>
    			<td colspan="2"><input type="text" name="address" size="60" class="tian"onpropertychange="addressmessage.innerHTML=''">&nbsp;<b><span id="addressmessage" style="color:red"></span></b></td>
    		</tr>
    		<tr bgcolor="white">
    			<td class="dan">邮政编码：</td>
    			<td colspan="2"><input type="text" name="postalcode" size="30" class="tian" onpropertychange="postalcodemessage.innerHTML=''">&nbsp;<b><span id="postalcodemessage" style="color:red"></span></b></td>
    		</tr>
    		<tr bgcolor="white">
    			<td class="dan">移动电话：</td>
    			<td><input type="text" name="telephone1" size="20" class="tian" onpropertychange="linkphonemessage.innerHTML=''"></td>
    			<td class="dan">固定电话：<input type="text" name="telephone2" size="20"  style="width: 300px;height: 30px; onpropertychange="linkphonemessage.innerHTML=''"> (如:0431-1234560)</td>
    		</tr>
    		<tr><td colspan="2"><b><span id="linkphonemessage" style="color:red"></span></b></td></tr>
    		<tr bgcolor="#F2F3F5"><td colspan="3" class="dan">送货方式&nbsp;<b><span id="shipmentmessage" style="color:red"></span></b></td></tr>
    		<tr bgcolor="white">
    			<td class="dan"><input type="radio" id="shipment1" name="shipment" value="1" onclick="clickshipment1();shipmentmessage.innerHTML=''">普通快递送货上门</td>
    			<td colspan="3" style="text-indent:20">
    				<div id="shipmenttimes" class="dan">
    				送货时间：
    				<select class="dan" name="shipmenttime" onchange="shipmentmessage.innerHTML=''">
    					<option value="">-请选择时间-</option>
    					<option value="1">不限时间</option>
    					<option value="2">3天内</option>
    					<option value="3">1周内</option>
    					<option value="4">1月内</option>    					
    				</select>
    				(支持货到付款)【运费：20元】
    				</div>
    			</td>
    		</tr>
    		<tr bgcolor="white"><td colspan="3" class="dan"><input type="radio" id="shipment2" name="shipment" value="2" onclick="clickshipment23();shipmentmessage.innerHTML=''">普通邮递(不支持货到付款)【运费：30元】</td></tr>
    		<tr bgcolor="white"><td colspan="3" class="dan"><input type="radio" id="shipment3" name="shipment" value="3" onclick="clickshipment23();shipmentmessage.innerHTML=''">邮政特快专递(不支持货到付款)【运费：40元】</td></tr>
    		<tr bgcolor="#F2F3F5"><td colspan="3" class="dan">支付方式&nbsp;<b><span id="paymentmessage" style="color:red"></span></b></td></tr>
    		<tr bgcolor="white">
    			<td colspan="3" class="dan">
    				<input type="radio" id="payment1" name="payment" value="1" onclick="clickpayment1();paymentmessage.innerHTML=''">网上支付<br>
    				<div id="networkpayments" style="padding-left:30;display:">
    				<input type="radio" id="networkpayment1" name="networkpayment" value="1" onclick="paymentmessage.innerHTML=''">工商银行<br>
    				<input type="radio" id="networkpayment2" name="networkpayment" value="2" onclick="paymentmessage.innerHTML=''">招商银行<br>
    				<input type="radio" id="networkpayment3" name="networkpayment" value="3" onclick="paymentmessage.innerHTML=''">建设银行<br>
    				<input type="radio" id="networkpayment4" name="networkpayment" value="4" onclick="paymentmessage.innerHTML=''">支付宝支付平台<br>
    				</div>
    			</td>
    		</tr>
    		<tr bgcolor="white"><td colspan="3" class="dan"><input type="radio" id="payment2" name="payment" value="2" onclick="clickpayment234();paymentmessage.innerHTML=''">货到付款</td></tr>
    		<tr bgcolor="white"><td colspan="3" class="dan"><input type="radio" id="payment3" name="payment" value="3" onclick="clickpayment234();paymentmessage.innerHTML=''">邮政汇款</td></tr>
    		<tr bgcolor="white"><td colspan="3" class="dan"><input type="radio" id="payment4" name="payment" value="4" onclick="clickpayment234();paymentmessage.innerHTML=''">银行转帐</td></tr>
    		<tr><td colspan="3" align="center"><input type="button" name="createorderformb" class="dan"  value="生成订单" onclick="myorderformsubmit()"></td></tr>
    	</table>
    	</form>
		 <%@ include  file ="shoppingShow_footer.jsp" %>

  	</body>
</html>
