<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC"-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtm11/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<title>漫步时尚广场-购物列表-商品展示</title>
<style type="text/css">
* {
	padding: 0;
	margin: 0;
}

li, ul {
	list-style: none;
}

body {
	font-size: 12px;
	font-family: microsoft yahei;
	margin: 0;
	color: #000;
	}
	
.middle{
    float:left;
	width: 690px;
}

.pic_list {
	float: left;
}

pic_list dl {
	float: left;
	width: 152px;
	margin: 0 10px 10px;
}

.price {
	font-size: 15px;
	font-weight: 700;
	color: red;
	float: left;
}

.price2 {
	font-size: 12px;
	font-weight: 700;
	color: red;
	text-align: center;
}

.font12 {
	font-size: 12px;
	color: #ccc;
	float: right;
}

.pic_list dl img {
	padding: 5px;
	border: 1px solid #ccc;
	margin-bottom: 10px;
}

.pic_list dl dd {
	float: left;
}

.pic_title {
	background: #ff9c01;
	line-height: 40px;
	font-size: 16px;
	text-indent: 20px;
	text-align: left;
	width: 680px;
	float: left;
	color: #fff;
	margin: 0 10px 10px;
}

pic_list2 li {
	float: left;
}

pic_list2 {
	margin: 0 6px 0 12px;
}

pic_list2 li {
	width: 160px;
	float: left;
	margin:5px 4px;
}
</style>
</head>
<body>
	<!--中间区 start-->
	<div class="middle">
		<h1 class="pic_title">最新上架</h1>
		<div class="pic_list">
			<dl>
				
					<div><a href=" " target="_blank"> 
					<img src="images/shopshow/yiful.jpg"/></a>
					</div>
					<dt>
						<span class="price">¥198.00 元</span> <span class="font12">324人购买</span>
					</dt>
					<dd>冬季新款牛仔外套加厚连帽毛领加绒牛仔棉衣</dd>
			</dl>
			<dl>
				<div><img src="images/shopshow/yifu2.jpg"/></div>
				<dt>
					<span class="price">¥69.00元</span> <span class="font12">534人购买</span>
				</dt>
				<dd>2015夏新款韩版透气舒适简约半截袖T恤衫</dd>
			</dl>
			<!-- 此处省略其他最新上架商品 -->
		</div>
		<!--品牌活动--> <h1 class="pic_title">品牌活动
		</h1>
		<ul class="pic_list2">
			<li><img src="images/shopshow/dress1.jpg"/>
				<p>独家定制双层欧根纱里衬色织时装料大牌范蓬蓬长裙</p>
			</li>
			<li><img src="images/shopshow/dress2.jpg"/>
				<p>夏季新款简约通勤腰带修身大摆短袖连衣裙</p>
			</li>
			<li><img src="images/shopshow/dress3.jpg"/>
				<p>爱美斯2015夏季优雅显瘦大摆长裙中长款复古印花淑女裙</p>
			</li>
			<li><img src="images/shopshow/dress4.jpg"/>
				<p>2015夏女装新品显痩飘逸黑白竖条紋阔腿裤七分裤裙</p>
			</li>
		</ul>
	</div>
	<!--中间区end-->
</body>
</html>