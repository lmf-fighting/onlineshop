<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    <title>我的购物车</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
  </head>
  
  <body>
    
   	<table border="0" cellpadding="0" cellspacing="0">
		<tr><td><img src="images/top.jpg" width="790" height="149"></td></tr>
	</table>
    <table width="790" border="0" cellpadding="0" cellspacing="0" rules="none" background="images/car_bk.jpg">
    	<tr height="45"><td colspan="6" background="images/car_t.jpg"></td></tr>
    	<tr height="54">
    		<td colspan="6" background="images/car_m.jpg" style="padding-left:20">
    			顾客您好，购物车中的商品在您未生成订单之前我们将为您保存3天，3天后将自动清空！	${requestScope.message}
    		</td>
    	</tr>
    	<tr height="40" style="font-size:12">
    		<th width="10%">序号</th>
    		<th align="left">商品名称</th>
    		<th width="15%">价格</th>
    		<th width="15%">数量</th>
    		<th width="15%">总计</th>
    		<th width="10%">删除</th>
    	</tr>
    	<c:set var="myshopcar" value="${requestScope.shopcar}"/>
    	<c:if test="${(empty myshopcar) or (empty myshopcar.shopcarBuyGoodss)}">
    	<tr height="80"><td colspan="6" align="center">您还没有挑选商品到购物车中。</td></tr>
    	</c:if>
    	<c:if test="${(!empty myshopcar) and (!empty myshopcar.shopcarBuyGoodss)}">
    	<form action="submitshopcar" name="updateform" method="post">
    	<c:forEach var="buygoods" varStatus="bvs" items="${myshopcar.shopcarBuyGoodss}">
   		<c:if test="${!empty buygoods}">
    	<input type="hidden" name="buygoodsids" value="${buygoods.id}">
    	<input type="hidden" name="buygoodsstorenum" value="${buygoods.goodsStoreNum}">
    	<tr height="30">
    		<td align="center">${bvs.count}</td>
    		<td>${buygoods.goodsName}</td>
    		<td align="center">￥${buygoods.goodsPrice}</td>
    		<td align="center"><input type="text" name="buygoodsnum" value="${buygoods.goodsBuyNum}" size="6" style="text-align:center;border:1 solid"><br><font color="red">${requestScope.messages[bvs.index]}</font></td>
    		<td align="center">￥${buygoods.goodsMoney}</td>
    		<td align="center"><a href="remove?goodsId=${buygoods.id}">删除</a></td>
    	</tr>
    	<c:set var="totalmoney" value="${totalmoney+buygoods.goodsMoney}"/>
   		</c:if>
    	</c:forEach>
    	<input type="hidden" name="goodsprices" value="${totalmoney}">
    	<tr height="40"><td colspan="6"><hr width="99%" color="black"></td></tr>
    	<tr height="20"><td colspan="6" style="padding-left:30">总金额：<input type="text" name="goodsprices" value="${totalmoney}" style="border:0" disabled></td></tr>
    	<tr height="50" valign="bottom">
    		<td colspan="3" style="padding-left:30">
    			<input type="submit" name="whichsubmit" value="修改数量">
    			<a href="clearshopcar">清空购物车</a>
    		</td>
    		<td colspan="3" align="center">
    			<%
    				Object loginer=session.getAttribute("loginer");
    				if(loginer==null||!(loginer instanceof com.valuebean.UserBean))
    					out.print("您没有登录，不能进行");
    				else
    					out.println("您已经登录，可以进行");
    			%>
    			<input type="submit" value="商品结算">
    		</td>
    	</tr>
    	</form>
    	</c:if>
    	<tr height="40"><td colspan="6" align="center"><a href="javascript:window.history.go(-1)">返回</a></td></tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0">
		<tr><td><img src="images/end.jpg" width="790" height="104"></td></tr>
	</table>
   
  </body>
</html>
