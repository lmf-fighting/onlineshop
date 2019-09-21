<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>左侧导航</title>

	<link rel="stylesheet" type="text/css" href="css/left.css">

</head>
<body style="background: #f0f9fd;">
<div class="lefttop"><span></span>功能菜单
</div>
<dl class="leftmenu">
<dd>
<div class="title">
<span><img src="imagesico05.png"></span>购物后台管理</div>
<ul class="menuson">
<li><cite></cite><a href="addgoods.jsp" target="rightFrame">添加商品</a><i></i></li>
<li class="active"><cite></cite>
<a href="toplist.jsp" target="rightFrame">商品列表</a><i></i>
</li>
<li><cite></cite>商品类型<i></i></li>
</ul>
</dd>
<dd>
<div class="title"><span><img src="images/leftico02.png"></span>影视后台管理</div>
<ul class="menuson">
<li><cite></cite><a href="addmovie.jsp" target="rightFrame">添加影片</a><i></i></li>
<li class="active"><cite></cite>
<a href="movielist.jsp" target="rightFrame">影片列表</a><i></i>
</li>
<li><cite></cite>影片类型<i></i></li>
</ul>
</dd>
<dd>
<div class="title"><span><img src="images/leftico05.png"></span>餐饮后台管理</div>
<ul class="menuson">
<li><cite></cite><a href="addfood.jsp" target="rightFrame">添加美食</a><i></i></li>
<li class="active"><cite></cite>
<a href="foodlist.jsp" target="rightFrame">美食列表</a><i></i>
</li>
<li><cite></cite>美食类型<i></i></li>
</ul>
</dd>
<!--此处省略其他左侧导航项-->
</dl>
</body>
</html>