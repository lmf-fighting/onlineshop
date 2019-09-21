<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>顶部导航</title>
	<link rel="stylesheet" type="text/css" href="css/layout.css">
	<link rel="stylesheet" type="text/css" href="css/detail.css">
	
</head>
<body style="background: url(images/topbg.gif) repeat-x;">
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
							<a href="login.jsp" class="orange">[请登录]</a> <a href="register"
								class="orange">[免费注册]</a>
						</div>
					</c:otherwise>
				</c:choose>

				<div class="floatr">
					客户服务<img src="photo/index/menu.png" width="18" height="18">&nbsp;
					网站导航<img src="photo/index/site.png" width="18" height="18">&nbsp;
					<span class="droparrow"> <span class="shopcart"></span>我的购物车
						<span class="orange"></span>件 <img alt="arrow"
						src="photo/index/shoppingcar.png" width="18" height="18"></span>
				</div>
			</div>
		</header>
		<!-- 顶部区域end -->

		<!-- logo和banner start -->
		<div class="logo">
			<img src="photo/index/banner2.jpg" width="1200px" height="180" align="center">
		</div>
		<!-- logo和banner end -->

</body>
</html>