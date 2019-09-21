<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>商品列表页面</title>
	<link rel="stylesheet" type="text/css" href="css/layout.css">
    <link rel="stylesheet" type="text/css" href="css/list.css">
</head>
<body >
<div class="place"><span>位置：</span>
<ul class="placeul">
<li><a href="main.jsp">首页</a></li>
<li><a href="#">美食列表</a></li>
</ul>
</div>
<div class="rightinfo">
<div class="tools">
<ul class="toolbar">
<li class="click"><span><img src="images/t01.png"></span>添加</li>
<li class="click"><span><img src="images/t02.png"></span>修改</li>
<li><span><img src="images/t03.png"></span>删除</li>
<li><span><img src="images/t04.png"></span>统计</li>
<li><span><img src="images/t05.png"></span>设置</li>
</ul>
<iframe src="shop_search.jsp" scrolling="no" frameborder="0" width="400" height="42" ></iframe>

</div>
<table class="tablelist">
<thead>
<tr>
<th><input type="checkbox" name="" checked="checked"></th>
<th>缩略图</th>
<th>商品名称</th>
<th>商品类别</th>
<th>数量（件）</th>
<th>单价（元）</th>
<th>发布时间</th>
<th>是否审核</th>
<th>操作</th>
</tr></thead>
<tbody>
<tr>
<td><input type="checkbox" name=""></td>
<td class="imgtd"><img src="images/img06.png"></td>
<td>RAX头层牛皮核外泄</td>
<td>运动</td>
<td>334</td>
<td>566.00</td>
<td>2018-11-20 15:05</td>
<td>已审核</td>
<td><a href="#" class="tablelink">查看</a>
<a href="#" class="tablelink">删除</a></td>
</tr>
<tr class="odd">
<td><input type="checkbox" name=""></td>
<td class="imgtd"><img src="images/img07.png"></td>
<td>七匹狼</td>
<td>男装</td>
<td>455</td>
<td>566.00</td>
<td>2018-11-20 15:05</td>
<td>未审核</td>
<td><a href="#" class="tablelink">查看</a>
<a href="#" class="tablelink">删除</a></td>
</tr>
<!-- 此处省略其他商品的内容-->
</tbody>
</table>
<div class="pagin">
<div class="message">共<i class="blue">1256</i>条记录，当前显示第&nbsp;
<i class="blue">2&nbsp;</i>页</div>
<ul class="paginList">
<li class="paginItem"><a href="javascript:;">
<span class="pagepre"></span></a></li>
<li class="paginItem"><a href="javascript:;">1</a></li>
<li class="paginItem current"><a href="javascript:;">2</a></li>
<li class="paginItem more"><a href="javascript:;">...</a></li>
<li class="paginItem"><a href="javascript:;">10</a></li>
<li class="paginItem"><a href="javascript:;">
<span class="pagenxt"></span></a></li>
</ul>
</div>
</div>
</body>
</html>