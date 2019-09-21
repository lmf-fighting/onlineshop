<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<!-- 购物模块首页 -->
<title>商城首页</title>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<link rel="stylesheet" href="css/detail.css" type="text/css">
<script type="text/javascript" src="js/pictureSlide.js"></script>
<script src="js/check.js"></script>
<style type="text/css">
.focusBox {
	position: absolute;
	top: 490px;
	width: 120px;
	left: 50%;
	margin-left: -60px;
	list-style: none;
}

.focusBox li {
	float: left;
	margin-right: 10px;
	width: 15px;
	height: 15px;
	border-radius: 10px;
	background: gray;
	cursor: pointer;
}

.focusBox li.cur {
	background: #f60;
	opacity: 0.6;
	filter: alpha(opacity = 60);
}
</style>
<!-- [if IE]>
    <script>
      document.createElement("header");
      document.createElement("footer");
      document.createElement("nav");
      document.createElement("article");
      document.createElement("section");      
    </script>
    <![end if]-->
</head>

<body>
	<!-- 顶部区域 -->
	<article id="main">
		<!-- 顶部区域start -->
		<header class="top_bg">
			<div class="top_document">
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
							<a href="login.jsp" class="orange">[请登录]</a> <a href="register.jsp"
								class="orange">[免费注册]</a>
						</div>
					</c:otherwise>
				</c:choose>

				<div class="floatr">
					客户服务<img src="photo/index/menu.png" width="18" height="18">&nbsp;
					网站导航<img src="photo/index/site.png" width="18" height="18">&nbsp;
					<span class="droparrow"> <span class="shopcart"></span>我的购物车
						<img alt="arrow"
						src="photo/index/shoppingcar.png" width="18" height="18"></span>
				</div>
			</div>
		</header>

	<!-- logo和banner区域 -->
	<table width="1200" border="0" cellspacing="0" cellpadding="0"
		align="center">
		<tr>
			<td height="95"><a href=" "><img
					src="photo/index/banner2.jpg" width="1500" height="180"></a></td>
		</tr>
	</table>

	<!-- 菜单导航 -->
	<table width="100%" border="0" cellspacing="0" cellpadding="0"
		bgcolor="#ce2626">
		<tr>
			<td>
				<table width="1200" border="0" cellspacing="0" cellpadding="4"
					align="center" class="nav_font16">
					<tr>
						<td width="200">&nbsp;</td>
						<td width="80" align="center" class="nav_active"><a
							href="shoppingIndex.jsp" class="white">首页</a></td>
						<td width="100" align="center"><a href="classification.jsp"
							class="white">商品分类</a></td>
						<td width="100" align="center">品牌活动</td>
						<td width="100" align="center">原厂直供</td>
						<td width="80" align="center">团购</td>
						<td width="100" align="center">限时抢购</td>
						<td width="100" align="center">促销打折</td>
						<td width="200" align="center">&nbsp;</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>

	<!-- 中间部分 -->
	<div class="main">
		<!-- 购物分类 start -->

		<ul class="menu">
			<li><span class="title">服装</span></li>
			<li><span class="red_dot"></span><a href="classification.jsp#A1">女装</a>
				<span class="right_arrow"></span></li>
			<li><span class="red_dot"></span><a href="classification.jsp#A2">男装</a>
				<span class="right_arrow"></span></li>
			<li><span class="red_dot"></span><a href="classification.jsp#A3">童装</a>
				<span class="right_arrow"></span></li>
			<li><span class="title">食品</span></li>
			<li><span class="red_dot"></span><a href="classification.jsp#A4">零食</a>
				<span class="right_arrow"></span></li>
			<li><span class="red_dot"></span><a href="classification.jsp#A5">果蔬</a>
				<span class="right_arrow"></span></li>
			<li><span class="red_dot"></span><a href="classification.jsp#A6">奶品水饮</a>
				<span class="right_arrow"></span></li>
			<li><span class="title">居家日用</span></li>
			<li><span class="red_dot"></span><a href="classification.jsp#A7">个人护理</a>
				<span class="right_arrow"></span></li>
			<li><span class="red_dot"></span><a href="classification.jsp#A8">清洁家居</a>
				<span class="right_arrow"></span></li>
			<li><span class="red_dot"></span><a href="classification.jsp#A9">家用电器</a>
				<span class="right_arrow"></span></li>
			<li><span class="title">图书文体</span></li>
			<li><span class="red_dot"></span><a
				href="classification.jsp#A10">图书</a> <span class="right_arrow"></span></li>
			<li><span class="red_dot"></span><a
				href="classification.jsp#A11">文具</a> <span class="right_arrow"></span></li>
			<li><span class="red_dot"></span><a
				href="classification.jsp#A12">体育用材</a> <span class="right_arrow"></span></li>
		</ul>
	</div>
	<!-- 购物分类end -->
	<div class="middle">
		<td width="716" valign="top">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td align="center">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td>
									<!-- 焦点图 start--> <%@ include file="shop_play.jsp"%>

									<!-- 焦点图 end-->
								</td>

								<td valign="top" width="400">
									<!-- 右侧start -->
									<table width="100%" border="0" cellspacing="0" cellpadding="0">
										<tr>
											<td width="400">
												<!-- 公告start -->
												<table width="100%" border="0" cellspacing="1"
													cellpadding="0" bgcolor="#eeeeee">
													<tr>
														<td height="35" class="notice_title">公告</td>
													</tr>
													<tr>
														<td bgcolor="#ffffff">
															<table width="95%" class="padding-top">
																<tr>
																	<td height="35" class="notice_text">黑色星期五</td>
																</tr>
																<tr>
																	<td height="35" class="notice_text">双十一购物狂欢日</td>
																</tr>
																<tr>
																	<td height="35" class="notice_text">天天降价</td>
																</tr>
																<tr>
																	<td height="35" class="notice_text">品牌周年庆</td>
																</tr>
																<tr>
																	<td height="35" class="notice_text">双十二电商节</td>
																</tr>
																<tr>
																	<td height="35" class="notice_text">女王节</td>
																</tr>
															</table>
														</td>
													</tr>
												</table> <!-- 公告end -->
											</td>
										</tr>
										<tr>
											<td>
												<!-- 品牌推荐区start -->
												<table width="100%" border="0" cellspacing="0"
													cellpadding="0" bgcolor="#f7f7f7">
													<tr>
														<td align="center"><img src="photo/index/link1.jpg"
															width="80" height="40"></td>
														<td align="center"><img src="photo/index/link2.jpg"
															width="80" height="40"></td>
														<td align="center"><img src="photo/index/link3.jpg"
															width="80" height="40"></td>
													</tr>
													<tr>
														<td align="center"><img src="photo/index/link4.jpg"
															width="80" height="40"></td>
														<td align="center"><img src="photo/index/link5.jpg"
															width="80" height="40"></td>
														<td align="center"><img src="photo/index/link6.jpg"
															width="80" height="40"></td>
													</tr>
													<tr>
														<td align="center"><img src="photo/index/link7.jpg"
															width="80" height="40"></td>
														<td align="center"><img src="photo/index/link8.jpg"
															width="80" height="40"></td>
														<td align="center"><img src="photo/index/link9.jpg"
															width="80" height="40"></td>
													</tr>
												</table> <!-- 品牌推荐区end -->
											</td>
										</tr>
									</table> <!-- 右侧end -->
								</td>
							</tr>
						</table>
					</td>
				</tr>

				<!-- 产品分类区start -->
				<tr>
					<td>

						<table class="five" width="100%" border="0" align="right"
							cellspacing="0" cellpadding="1" bgcolor="#dddddd">
							<tr>
								<td width="20%" bgcolor="#ffffff">
									<table width="90%" border="0" align="center" cellspacing="0"
										cellpadding="3">
										<tr>
											<td><img src="photo/index/pro1.jpg" width="65"
												height="65"></td>
											<td class="font14">热门品类<br />护肤彩妆
											</td>
										</tr>
										<tr>
											<td colspan="2">洗护套装 &nbsp;&nbsp;精华 &nbsp;&nbsp;香水</td>
										</tr>
										<tr>
											<td colspan="2">粉底液 &nbsp;&nbsp;面霜 &nbsp;&nbsp;洁面</td>
										</tr>
										<tr>
											<td colspan="2">美容工具 &nbsp;&nbsp;精油 &nbsp;&nbsp;洗发水</td>
										</tr>
									</table>
								</td>
								<td width="20%" bgcolor="#ffffff">
									<table width="90%" border="0" align="center" cellspacing="0"
										cellpadding="3">
										<tr>
											<td><img src="photo/index/pro2.jpg" width="65"
												height="65"></td>
											<td class="font14">强效保养<br />逆转皮肤问题
											</td>
										</tr>
										<tr>
											<td colspan="2">隔离 &nbsp;&nbsp;保湿 &nbsp;&nbsp;补水
												&nbsp;&nbsp;清洁</td>
										</tr>
										<tr>
											<td colspan="2">清爽 &nbsp;&nbsp;排毒 &nbsp;&nbsp;去角质</td>
										</tr>
										<tr>
											<td colspan="2">美白 &nbsp;&nbsp;祛痘 &nbsp;&nbsp;收缩毛孔
												&nbsp;&nbsp;紧致</td>
										</tr>
									</table>
								</td>
								<td width="20%" bgcolor="#ffffff">
									<table width="90%" border="0" align="center" cellspacing="0"
										cellpadding="3">
										<tr>
											<td><img src="photo/index/pro3.jpg" width="65"
												height="65"></td>
											<td class="font14">人气品牌<br />最IN大牌
											</td>
										</tr>
										<tr>
											<td colspan="2">薇姿 &nbsp;&nbsp;欧莱雅 &nbsp;&nbsp;兰蔻</td>
										</tr>
										<tr>
											<td colspan="2">理肤泉 &nbsp;&nbsp;SK-II &nbsp;&nbsp;雅顿</td>
										</tr>
										<tr>
											<td colspan="2">妮维雅 &nbsp;&nbsp;阿玛尼 &nbsp;&nbsp;百雀羚</td>
										</tr>
									</table>
								</td>
								<td width="20%" bgcolor="#ffffff">
									<table width="90%" border="0" align="center" cellspacing="0"
										cellpadding="3">
										<tr>
											<td><img src="photo/index/pro4.jpg" width="65"
												height="65"></td>
											<td class="font14">潮流单品<br />当季最红
											</td>
										</tr>
										<tr>
											<td colspan="2">美白精华 &nbsp;&nbsp;假发片 &nbsp;&nbsp;香水</td>
										</tr>
										<tr>
											<td colspan="2">艾米尔彩妆 &nbsp;&nbsp;生发液</td>
										</tr>
										<tr>
											<td colspan="2">补水凝胶 &nbsp;&nbsp;防晒霜 &nbsp;&nbsp;洗发水</td>
										</tr>
									</table>
								</td>
								<td width="20%" bgcolor="#ffffff">
									<table width="90%" border="0" align="center" cellspacing="0"
										cellpadding="3">
										<tr>
											<td><img src="photo/index/pro5.jpg" width="65"
												height="65"></td>
											<td class="font14">美装精选<br />超赞专题
											</td>
										</tr>
										<tr>
											<td colspan="2">孕妇护肤 &nbsp;&nbsp;护季保养</td>
										</tr>
										<tr>
											<td colspan="2">护肤嫩白集锦 &nbsp;&nbsp;快速约会妆</td>
										</tr>
										<tr>
											<td colspan="2">美容时钟模式 &nbsp;&nbsp;5步护肤术</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<!-- 产品分类区end -->

			</table>
		</td>
	</div>


	<!-- 中间部分 -->

	<!-- 底部start -->


	<div class="clear"></div>
	<div class="foot">
		<div class="foot_title">
			<ul class="foot_pic">
				<li><img src="photo/index/gray1.png"></li>
				<li><img src="photo/index/gray2.png"></li>
				<li><img src="photo/index/gray2.png"></li>
				<li><img src="photo/index/gray2.png"></li>
			</ul>
		</div>
		<ul class="foot_list">
			<li>

				<ul class="float1">
					<li class="font16 padding-bottom">新手指导</li>
					<li>用户指导</li>
					<li>电话下单</li>
					<li>购物流程</li>
					<li>购物保障</li>
					<li>服务协议</li>
				</ul>
			</li>
			<li>

				<ul class="float1">
					<li class="font16 padding-bottom">支付方式</li>
					<li>货到付款</li>
					<li>商城卡支付</li>
					<li>支付宝、网银支付</li>
					<li>优惠券抵用</li>
				</ul>
			</li>
			<li>

				<ul class="float1">
					<li class="font16 padding-bottom">配送方式</li>
					<li>闪电发货</li>
					<li>满百包邮</li>
					<li>配送范围及时间</li>
					<li>商品验收及签收</li>
					<li>服务协议</li>
				</ul>
			</li>
			<li>

				<ul class="float1">
					<li class="font16 padding-bottom">售后服务</li>
					<li>退换货协议</li>
					<li>关于发票</li>
					<li>退换货流程</li>
					<li>退换货运费</li>
				</ul>
			</li>
			<li>

				<ul class="float1">
					<li class="font16 padding-bottom">关于账号</li>
					<li>修改个人信息</li>
					<li>修改密码</li>
					<li>找回密码</li>
				</ul>
			</li>
			<li>

				<ul class="float1">
					<li class="font16 padding-bottom">优惠活动</li>
					<li>竞拍须知</li>
					<li>抢购须知</li>
				</ul>
			</li>
		</ul>
		<div class="clear"></div>
		<div class="foot_line"></div>
		<p align="center" class="padding-top">
			Copyright 2015-2020 LZW Fashion OnlineShop <br /> ZQU Guangdong China
			咨询热线：12345678901
		</p>
		<br />
		<div class="clear"></div>
	</div>


	<!-- 底部end -->

</body>
</html>
