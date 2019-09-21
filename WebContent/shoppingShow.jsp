<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>购物列表</title>
<link rel="stylesheet" type="text/css" href="css/show.css">
<script type="text/javascript" src="js/shoppingCart.js"></script>
</head>
<body>
<!-- 顶部区域 -->
	

<div class="top_bg">
<div class="top_content">
<div class="float1"><img src="images/">收藏|HI，欢迎来订购！
<a href="../manageadmin/login.jsp" class="orange">[请登录]</a>
<a href="../register/register.jsp" class="orange">[免费注册]</a>
</div>
<div class="floatr">客户服务<img src="">网站导航<img src="">&nbsp;
<div class="xl">
<!-- 购物车< -->
<div class="droparrow" onclick="showCar()">

<span class="shopcart"></span>我的购物车
<span class="orange">0</span>件<img src="">
</div>
<!-- 下拉菜单 -->
<div class="dropdown" id="dropdown" style="display: none;" ondrop="drop(event)" ondragover="alloDrop(event)">
<ul class="shop_pic"></ul>

</div>
</div>
<!-- 以下代码省略 -->
</div>
</div></div>
</body>
</html>