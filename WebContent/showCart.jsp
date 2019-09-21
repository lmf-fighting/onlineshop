<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=utf-8"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@page import="bean.goodsBean"%>
<%@ page import="com.servlet.cartProcess" %>
<%@ page import="bean.mytools" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<!-- 显示购物车页面 -->

  <head>
    <jsp:useBean id="goodsBean" class="bean.goodsBean" scope="session"></jsp:useBean>
    <title>购物车</title>
	<link rel="stylesheet" type="text/css" href="css/shopCar.css">
	<script type="text/javascript" src="js/showcart.js"></script>
  </head>
  
  <body>
    <%
        String username=(String)(session.getAttribute("username"));
    %>
    
    <!-- 顶部区域 -->
    <table  width="100%" border="0" cellspacing="0" cellpadding="0" class="top_bg">
      <tr>
        <td bgcolor="#f7f7f7">
          <table width="1200" border="0" cellspacing="0" cellpadding="0" align="center">
            <tr>
              <td>
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
              </td>
              <td align="right">
                                客户服务<img alt="arrow" src="photo/index/menu.png" width="18" height="18">&nbsp;
                                网站导航<img alt="arrow" src="photo/index/site.png" width="18" height="18">&nbsp;
                <span class="droparrow">
                  <span class="shopcart"></span>我的购物车
                  <span class="orange"></span>件<img alt="arrow" src="photo/index/shoppingcar.png" 
                      width="18" height="18">
                </span>
              </td>
            </tr>        
          </table>
        </td>
      </tr>
    </table>
    
    <!-- logo和banner区域 -->
    <table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
      <tr>
        <td height="95"><a href=" "><img src="photo/index/banner2.jpg" width="100%" height="180"></a></td>
      </tr>    
    </table>

    <!-- 显示购物车信息 -->
    <form action="showcart" method="post" name="showcart" id="showcart">
    <table  width="90%" align="center">
      <%
          ArrayList buylist = (ArrayList) session.getAttribute("buylist");
          double total = 0;
      %>
      <tr class="two"><td>购物车</td></tr>
      <tr><td class="t_bgcolor" colspan="8"><br/></td></tr>
      <tr>
        <td colspan="2" align="center">商品</td>
        <td width="10%" align="center">单价</td>
        <td width="10%" align="center">尺码</td>
        <td width="10%" align="center">颜色</td>
        <td width="20%" align="center">购买数量</td>
        <td width="10%" align="center">总价</td>
        <td width="16%" align="center">操作</td>
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
        <td><img src="<%=pic %>" class="pic"></td>
        <td class="name_font"><%=name %></td>
        <td><%=price %></td>
        <td><%=size %></td>
        <td><%=color %></td>
        <td>
          <table width="100%">
            <tr><td align="center">
              <input class="buttontype" type="button" value="-" id="decrease<%=i %>"
                  size="3" onclick="decrease(<%=i %>);" />
              <input class="input2" type="text" value="<%=single.getGoodsNum() %>"
                  id="buynum<%=i %>" size="5">
              <input class="buttontype" type="button" value="+" id="increase<%=i %>"
                  size="3" onclick="increase(<%=i %>)" />
              <p class="limit">(上限：100)</p>
              <input type="hidden" id="delimit" value="1">
              <input type="hidden" id="inlimit" value="100">
        <%--       <input type="hidden" name="prodno<%=i %>" value=<%=single.getProdno() %> > --%>
            </td></tr>
          </table>
        </td>
        <td><%=pay %></td>
        <td>
          <a href="servlet/showcart.java?action=remove&name=<%=single.getGoodsName() %>" >删除商品</a>
              <%
              }
          
              %>
        </td>
      </tr>
      <tr><td colspan="8"><hr color="#c0c0c0"></td></tr>
      <tr> <% 
      }
      %>
      
      <td colspan="8" align="right">
       <input type="hidden" id="price" name="price" value="price">
        <input type="hidden" id="total" name="total" value="<%=Math.round(total*100)/100.0 %>">
      应付金额：￥<%=Math.round(total*100)/100.0 %>
     
      </td></tr>
      <tr>
        <td colspan="8" bgcolor="white" align="right">
          <input class="input3"  type="button" name="next" value="继续购物" onclick="window.location.href='shoppingIndex.jsp'" />
          <input class="input3"  type="button" name="clear" value="清空购物车" onclick="CartSubmit('clear')" />
          <input class="input3"  type="button" name="order" value="提交订单" onclick="CartSubmit('order')" />
          <input type="hidden" id="method" name="method">
        </td>
      </tr>
    </table>
    </form>
    <br/>

    <!-- 底部start -->
    <br/><br/><br/>
    <table class="foot_bg">
      <tr>
        <td class="foot_pic">
          <table width="1200" border="0" align="center" cellspacing="0" cellpadding="0">
            <tr>
              <td width="20%" align="center"><img src="photo/index/gray1.png"></td>
              <td width="20%" align="center"><img src="photo/index/gray2.png"></td>
              <td width="20%" align="center"><img src="photo/index/gray3.png"></td>
              <td width="20%" align="center"><img src="photo/index/gray4.png"></td>
            </tr>
          </table>
        </td>
      </tr>
      <tr><td><br/></td></tr>
      <tr>
        <td class="padding-top">
          <table width="1200" border="0" cellspacing="0" cellpadding="0" align="center">
            <tr class="four">              
              <td width="15%" valign="top">
                <table width="90%" border="0" align="center" cellspacing="0" cellpadding="0">
                  <tr><td class="padding-bottom">新手指导</td></tr>
                  <tr><td>用户注册</td></tr>
                  <tr><td>电话下单</td></tr>
                  <tr><td>购物流程</td></tr>
                  <tr><td>购物保障</td></tr>
                  <tr><td>服务协议</td></tr>
                </table>
              </td>
              <td width="15%" valign="top">
                <table width="90%" border="0" align="center" cellspacing="0" cellpadding="0">
                  <tr><td class="padding-bottom">支付方式</td></tr>
                  <tr><td>货到付款</td></tr>
                  <tr><td>商城卡支付</td></tr>
                  <tr><td>支付宝、网银支付</td></tr>
                  <tr><td>优惠券抵用</td></tr>
                </table>
              </td>
              <td width="15%" valign="top">
                <table width="90%" border="0" align="center" cellspacing="0" cellpadding="0">
                  <tr><td class="padding-bottom">配送方式</td></tr>
                  <tr><td>闪电发货</td></tr>
                  <tr><td>满百包邮</td></tr>
                  <tr><td>配送范围及时间</td></tr>
                  <tr><td>商品验收及签收</td></tr>
                  <tr><td>服务协议</td></tr>
                </table>
              </td>
              <td width="15%" valign="top">
                <table width="90%" border="0" align="center" cellspacing="0" cellpadding="0">
                  <tr><td class="padding-bottom">售后服务</td></tr>
                  <tr><td>退换货协议</td></tr>
                  <tr><td>关于发票</td></tr>
                  <tr><td>退换货流程</td></tr>
                  <tr><td>退换货运费</td></tr>
                </table>
              </td>
              <td width="15%" valign="top">
                <table width="90%" border="0" align="center" cellspacing="0" cellpadding="0">
                  <tr><td class="padding-bottom">关于账号</td></tr>
                  <tr><td>修改个人信息</td></tr>
                  <tr><td>修改密码</td></tr>
                  <tr><td>找回密码</td></tr>
                </table>
              </td>
              <td width="15%" valign="top">
                <table width="90%" border="0" align="center" cellspacing="0" cellpadding="0">
                  <tr><td class="padding-bottom">优惠活动</td></tr>
                  <tr><td>竞拍须知</td></tr>
                  <tr><td>抢购须知</td></tr>
                </table>
              </td>
            </tr>
          </table>
        </td>
      </tr>
      <tr>
        <td align="center" class="foot_text">
          Copyright  2015-2020  LZW Fashion OnlineShop
          <br/>ZQU Guangdong China 咨询热线：12345678901
        </td>
      </tr>
    </table>
    <!-- 底部end -->
    
  </body>
</html>
