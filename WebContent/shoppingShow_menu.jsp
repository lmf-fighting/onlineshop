<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC"-//W3C//DTD XHTML 1.O Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Tvpe" content="text/html;charset=utf-8"/>
<title>菜单导航栏-购物列表</title>
<style type="text/css">
*{padding:0;margin:0}
li,ul{list-style:none}
.nav_bg{background:#ce2626;width:100%;color:#fff}
.nav_content{width:100%;margin:0 auto;height:40px;line-height:40px}
.nav{width:100%px;float:left;margin-left:200px}
.nav li{font-size:16px;font-weight:700;color:#fff;width:80px;float:left;text-align:center;margin-right:15px}
.orange{font-weight:700;color:#f60}
.nav _active{background:#b12121}
a.white{color:#fff;text-decoration:none}
a.white:hover{color:#ffO;text-decoration:none}
</style>
</head>
<body>
<!--菜单导航栏 start -->
<div class="nav_bg">
<div class="nav_content">
<ul class="nav">
<li><a href="shoppingIndex.jsp "class="white">首页</a></li>
<li class="nav_active">
<a href="shoppingShow.jsp"class="white">最新上架</a></li><li>品牌活动</li>
<li>原厂直供</li>
<li>团购</li>
<li>限时抢购</li>
<li>促销打折</li>
</ul>
</div>
</div>
<!--菜单导航栏end-->
</body>
</html>