<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table class="tablelist">
<thead>
<tr>
<th><input name="checkAll" type="checkbox" id="checkAll" onchange="selectAll()"/>全选/
<input name="checkOther" type="checkbox" id="checkOther" onchange="selectOther()"/>反选</th>
<th>缩略图</th>
<th>商品名称</th>
<th>商品类别</th>
<th>数量（件）</th>
<th>单价（元）</th>
<th>发布时间</th>
<th>是否审核</th>
<th>操作</th>
</tr>
</thead>
<tbody>
<tr>
<td><input name="checkItem" type="checkbox"></td>
<td class="imgtd" ><img src="/photos/防滑鞋.jpg "/></td>
<td> RAX头层牛皮户外鞋 男防滑登山鞋 <td>
<td>运动</td>
<td>345</td>
<td>$566.00</td>
<td>2018-11-24 12:00</td>
<td>已审核</td>
<td><a href="#" class="tablelink">查看</a>
<a href="#" class="tablelink">删除</a>
</td>
</tr>

<tr class="odd">
<td><input name="checkItem" type="checkbox" value=""/></td>
<td class="imgtd"><img src="/photos/男装裤.jpg"/></td>
<td>七匹狼休闲裤 春夏新款 男士时尚休闲裤  <td>
<td>男装</td>
<td>145</td>
<td>$268.00</td>
<td>2018-11-24 18:02</td>
<td>未审核</td>
<td><a href="#" class="tablelink">查看</a>
<a href="#" class="tablelink">删除</a>
</td>
</tr>

<tr>
<td><input name="checkItem" type="checkbox"></td>
<td class="imgtd" ><img src="/photos/连衣裙.jpg"/></td>
<td> 欧美大牌蕾丝连衣裙 粉色 <td>
<td>女装</td>
<td>485</td>
<td>$866.00</td>
<td>2018-11-24 12:00</td>
<td>未审核</td>
<td><a href="#" class="tablelink">查看</a>
<a href="#" class="tablelink">删除</a>
</td>
</tr>

<tr class="odd">
<td><input name="checkItem" type="checkbox" value=""/></td>
<td class="imgtd"><img src="/photos/跑鞋.jpg"/></td>
<td>新款上线 独家复古休闲男鞋  <td>
<td>运动</td>
<td>1415</td>
<td>$968.00</td>
<td>2018-11-24 18:02</td>
<td>已审核</td>
<td><a href="#" class="tablelink">查看</a>
<a href="#" class="tablelink">删除</a>
</td>
</tr>

<tr>
<td><input name="checkItem" type="checkbox"></td>
<td class="imgtd" ><img src="/photos/童装裙.jpg"/></td>
<td> 新款中大童荷叶边裙子韩版公主连衣裙 <td>
<td>童装</td>
<td>785</td>
<td>$806.00</td>
<td>2018-11-24 12:00</td>
<td>已审核</td>
<td><a href="#" class="tablelink">查看</a>
<a href="#" class="tablelink">删除</a>
</td>
</tr>
</tbody>
</table>

<script type="text/javascript">
//全选或不选
function selectAll(){
	var items=document.getElementsByName("checkItem");
	var checkAll=documment.getElementById("checkAll");
	var checkOther=document.getElementById("checkOther");
	checkOther.checked=false;
	for(var i=0;i<items.length;i++){
		items[i].checked=checkAll.checked;
	}
}
//反选
 function selectOther(){
	var items=document.getElementsByName("checkItem");
	var checkAll=documment.getElementById("checkAll");
	var checkOther=document.getElementById("checkOther");
	checkAll.checked=false;
	for(var i=0;i<items.length;i++){
		items[i].checked=!item[i].checked;
	}
		
}
 
</script>


</body>
</html>