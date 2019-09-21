<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加商品页面-后台管理系统</title>
<link href="css/layout.css" rel="stylesheet" type="text/css"/>
<link href="css/add.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="place" ><span>位置：</span>
<ul class="placeul">
<li ><a href="main.html" target="-parent">首页</a></li>
<li><a href="#">添加商品</a></li>
</ul></div>
<div class="formbody">
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="table1">
<tr>
<td><label>商品缩略图<b>*</b></label></td>
<td><input name="" type="file" multiple/></td>
</tr>
<tr>
<td><label>商品名称<b>*</b></label></td>
<td><input name=" " type="text" class="dfinput" value="请填写商品名称" style="width:518px;"/></td>
</tr>
<tr>
<td><label>商品类别<b>*</b></label></td>
<td><select class="select3">
<option>男装</option>
<option>女装</option>
<option>童装</option>
<option>运动</option>
<option>其他</option>
</select></td>
</tr>
<tr>
<td><label>商品单价<b>*</b></label></td>
<td><input name="goodsPrice" type="text" class="dfinput"
style="width:100px;"/>元</td>
</tr>
<tr>
<td><label>团购价<b>*</b></label></td>
<td><input name="groupPrice" type="text" class="dfinput"
style="width:100px;"/>元</td>
</tr>
<tr>
<td><label>商品数量<b>*</b></label></td>
<td><input name="amount" type="text" class="dfinput"
style="width:100px;"/>件</td>
</tr>
<tr>
<td><label>发布日期<b>*</b></label></td>
<td><input name="UpTime" type="text" class="dfinput"
style="width:100px;"/></td>
</tr>

<tr>
<td><label>是否审核<b>*</b></label>
<td><select name="checkup" class="select3">
<option>已审核</option>
<option>未审核</option>
</select></td>
</tr>

<tr>
<td><label>商品描述<b>*</b></label>
<td><textarea rows="3" name="content" id="content"></textarea></td>
</tr>

<tr>
<td></td>
<td><input type="button" class="btn" value="马上发布" /></td>
</tr>
</table>
</div>

</body>
</html>