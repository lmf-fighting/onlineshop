<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="bean.goodsBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>支付成功</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>

	<div>
		<img src="images/top.jpg" width="100%" height="149">


		<p
			style="padding-left: 15; padding-top: 20; text-align: center; font-size: 25px;">支付成功！</p>

		<c:set var="myorderform" value="${sessionScope.orderform}" />
		
		<c:if test="${!empty myorderform}">
			<table border="0" bordercolor="lightgrey" width="790" cellpadding="3"
				cellspacing="0" rules="none" align="center">
				<tr height="30">
					<td colspan="2" align="right">
						订单号：${myorderform.orderformNumber}&nbsp;&nbsp;&nbsp;
						下单时间：${myorderform.orderformTime}</td>
				</tr>
				<tr bgcolor="#BDBDBD">
					<th colspan="2" style="text-align: left;">收货人信息</th>
				</tr>
				<tr>
					<td width="10%" style="padding-left: 20">收 货 人：</td>
					<td>${myorderform.orderformGetter}"</td>
				</tr>
				<tr>
					<td style="padding-left: 40">详细地址：</td>
					<td>${myorderform.orderformAddress}</td>
				</tr>
				<tr>
					<td style="padding-left: 40">邮政编码：</td>
					<td>${myorderform.orderformPostalcode}</td>
				</tr>
				<tr>
					<td style="padding-left: 40">联系电话：</td>
					<td>${myorderform.orderformLinkphone}</td>
				</tr>
				<tr bgcolor="#BDBDBD">
					<th colspan="2" style="text-align: left;">送货方式</th>
				</tr>
				<tr height="50">
					<td colspan="2" style="padding-left: 40"><c:if
							test="${myorderform.orderformShipment eq '1'}">
    					普通快递送货上门，送货时间：
    					<c:if test="${myorderform.orderformShipmenttime eq '1'}">不限时间。</c:if>
							<c:if test="${myorderform.orderformShipmenttime eq '2'}">3天内。</c:if>
							<c:if test="${myorderform.orderformShipmenttime eq '3'}">1周内。</c:if>
							<c:if test="${myorderform.orderformShipmenttime eq '4'}">1月内。</c:if>
    					【运费：20元】
    				</c:if> <c:if test="${myorderform.orderformShipment eq '2'}">普通邮递【运费：30元】</c:if>
						<c:if test="${myorderform.orderformShipment eq '3'}">邮政特快专递【运费：40元】</c:if>
					</td>
				</tr>
				<tr bgcolor="#BDBDBD">
					<th colspan="2" style="text-align: left;">支付方式</th>
				</tr>
				<tr height="50">
					<td colspan="2" style="padding-left: 40"><c:if
							test="${myorderform.orderformPayment eq '1'}">
    					网上支付，
    					<c:if test="${myorderform.orderformNetworkpayment eq '1'}">通过 <b>工商银行</b> 支付。</c:if>
							<c:if test="${myorderform.orderformNetworkpayment eq '2'}">通过 <b>招商银行</b> 支付。</c:if>
							<c:if test="${myorderform.orderformNetworkpayment eq '3'}">通过 <b>建设银行</b> 支付。</c:if>
							<c:if test="${myorderform.orderformNetworkpayment eq '4'}">通过 <b>支付宝支付平台</b> 支付。</c:if>
						</c:if> <c:if test="${myorderform.orderformPayment eq '2'}">货到付款</c:if> <c:if
							test="${myorderform.orderformPayment eq '3'}">邮政汇款</c:if> <c:if
							test="${myorderform.orderformPayment eq '4'}">银行转帐</c:if></td>
				</tr>
				<tr bgcolor="#BDBDBD">
					<th colspan="2" style="text-align: left;">商品清单</th>
				</tr>
				<tr><td colspan="2" align="center">
				<table  width="90%" align="center">
      <%
          ArrayList buylist = (ArrayList) session.getAttribute("buylist");
          double total = 0;
      %> <tr class="two"><td>购物车</td></tr>
      <tr><td class="t_bgcolor" colspan="8"><br/></td></tr>
      <tr>
        <td colspan="2" align="center">商品</td>
        <td width="10%" align="center">单价</td>
        <td width="10%" align="center">尺码</td>
        <td width="10%" align="center">颜色</td>
        <td width="20%" align="center">购买数量</td>
        <td width="10%" align="center">总价</td>
      </tr>
      <%
          if(buylist == null || buylist.size() == 0){
      %>
      <tr><td colspan="8"><hr color="#c0c0c0"></td></tr>
      <tr><td colspan="8">购物车为空！</td></tr>
      <%
          }
          else{
              for(int i=0;i<buylist.size();i++){
                  goodsBean single = (goodsBean)buylist.get(i);
                  String name = single.getGoodsName();
                  String pic = single.getGoodsPic();
                  double price = single.getGoodsPrice();
                  String size = single.getGoodsSize();
                  String color = single.getGoodsColor();
                  int buynum = single.getGoodsNum();
                  double pay = ((int)((price*buynum+0.05f)*10))/10f;
                  total += pay;
      %>
      <tr class="goods_font" align="center">
        <td><img src="<%=pic %>" style="width: 40px;height: 60px;"></td>
        <td class="name_font"><%=name %></td>
        <td><%=price %></td>
        <td><%=size %></td>
        <td><%=color %></td>
        <td>
          <table width="100%">
            <tr><td align="center">
             
              <p class="input2">  <%=single.getGoodsNum() %></p>
            
            </td></tr>
          </table>
        </td>
        <td><%=pay %></td>
        <td>
              <%
              }
          }
              %>
        </td>
      </tr>
      <tr><td colspan="8"><hr color="#c0c0c0"></td></tr>
      <tr><td colspan="8" align="right">金额：￥<%=Math.round(total*100)/100.0 %></td></tr>
    </table>
    </td></tr>			
    </table>
		</c:if>
		<button type="button" style="margin-left: 880px;height:40px;text-align;center; background-color: #ff6868; width: 140px;border-radius:35px;  border-bottom: none; 
	    	cursor: pointer; font-size: 16px;color: #fff;margin-bottom:30px; text-align: left;font-weight: bold;">
			<a href="./shoppingIndex.jsp"
				style="color: black; text-decoration: none;">返回商城首页</a>
		</button>
<br><p align="center" class="padding-top">
		Copyright 2015-2020 LZW Fashion OnlineShop <br /> ZQU Guangdong China
		咨询热线：12345678901
	</p>
	<br />
	<!-- 版权信息 -->
	
	</div>

</body>
</html>