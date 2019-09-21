<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>   
    <title>居家日用详情</title>
    <meta http-equiv="Content-Type"content="text/html;charset=utf-8"/>
	<link rel="stylesheet" type="text/css" href="css/detail.css">
	
	<!-- 解决部分浏览器对html5不支持 -->
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
    <article id="main">
      <!-- 顶部区域start -->
      <header class="top_bg">
        <div class="top_document">
          <div class="floatl">
            <img src="photo/index/store.png" width="18" height="18">收藏|Hi，欢迎来订购！
            <a href="#" class="orange">[请登录]</a>
            <a href="#" class="orange">[免费注册]</a>
          </div>
          <div class="floatr">
                        客户服务<img src="photo/index/menu.png" width="18" height="18">&nbsp;
                        网站导航<img src="photo/index/site.png" width="18" height="18">&nbsp;
            <span class="droparrow">
            <span class="shopcart"></span>我的购物车
            <span class="orange">0</span>件
            <img alt="arrow" src="photo/index/shoppingcar.png" width="18" height="18"></span>
          </div>
        </div>
      </header>
      <!-- 顶部区域end -->
      
      <!-- logo和banner start -->
      <div class="logo">
        <img src="photo/index/banner1.png" width=100% height="180">
      </div>
      <!-- logo和banner end -->
      
      <!-- 菜单导航  start-->
      <nav class="nav_bg">
        <div class="nav_content">
          <ul class="menu_nav">
            <li><a href="shoppingIndex.jsp" class="white">首页</a></li>
            <li><a href="shoppingShow.jsp" class="white">最新上架</a></li>
            <li>品牌活动</li>
            <li>原厂直供</li>
            <li>团购</li>
            <li>限时抢购</li>
            <li>促销打折</li>
          </ul>
        </div>
      </nav>
      <!-- 菜单导航 end -->
      
      <!-- 中间部分 start -->
      <section>
        <div class="main">
          <!-- 购物分类 start -->
          <nav>
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
              <li><span class="red_dot"></span><a href="classification.jsp#A10">图书</a>
                <span class="right_arrow"></span></li>
              <li><span class="red_dot"></span><a href="classification.jsp#A11">文具</a>
                <span class="right_arrow"></span></li>
              <li><span class="red_dot"></span><a href="classification.jsp#A12">体育用材</a>
                <span class="right_arrow"></span></li>
            </ul>
          </nav>
          <!-- 购物分类end -->
          <!-- 中间区 start -->
          <div class="middle">
            <h1 class="pic_title">商品详情</h1>
            <div class="left_pic">
              <div><img src="photo/showdetail/use6.jpg" width="320" height="320"></div>
              <ul class="small_piclist">
                <li><img src="photo/showdetail/use1.jpg"></li>
                <li><img src="photo/showdetail/use2.jpg"></li>
                <li><img src="photo/showdetail/use3.jpg"></li>
                <li><img src="photo/showdetail/use4.jpg"></li>
              </ul>
            </div>
            <div class="right">
              <h1 class="font16">欧洲原装进口妮维雅氨基酸泡沫<br/>沐浴慕斯无皂基添加</h1>
              <img src="photo/use1_price.jpg" width="342px" height="223px"><br/>
              <input class="input1" type="button" name="asub" value="-"
					 onClick = "if (document.getElementById('number21').value>1)   
					     {document.getElementById('number21').value--;}">
			  <input class="input2" type="text" id="number21" name="acount" value="1" size="10" maxlength="10">
			  <input class="input1" type="button" name="asup" value="+"
					 onClick = "document.getElementById('number21').value++;"><br/><br/>
			  <p class="input4">(单次购买量：100)</p><br/>
			  <input class="input3" type="button" name="asale" value="放入购物车"
					 onClick = "alert('放入购物车成功!')"/>
			 <input class="input3"  type="button" value="查看购物车" onclick="window.location.href('showCart.jsp')" />	
            </div>
            <div class="clear"></div>
            <ul class="tab">
              <li class="tab_active">商品详情</li>
              <li>商品评价</li>
              <li>成交记录</li>
            </ul>
            <article class="tab_content1">
              <ul class="particulars">
                <li title="妮维雅">品牌名称：妮维雅</li>
                <li title="沐浴露">产品名称：妮维雅丝柔沐浴露</li>
                <li title="200ml">净含量：200ml</li>
                <li title="德国">产地：德国</li>
                <li title="否">是否量贩装：否</li>
                <li title="否">是否为特殊用途化妆品: 否</li>
              </ul>
              <section>
                <img src="photo/showdetail/use1.jpg" class="img_border">
                <img src="photo/showdetail/use2.jpg" class="img_border">
                <img src="photo/showdetail/use3.jpg" class="img_border">
                <img src="photo/showdetail/use4.jpg" class="img_border">
                <img src="photo/showdetail/use5.jpg" class="img_border">
              </section>
            </article>
            <article class="tab_content2 none">
              <img src=" "/>
            </article>
            <article class="tab_content3 none">
             <table width="100%" border="0" cellpadding="0" cellspacing="0">
                <thead>
                  <tr>
                    <th>买家</th>
                    <th>淘宝价</th>
                    <th>数量</th>
                    <th>付款时间</th>
                    <th>款式和型号</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>a**男（匿名）</td>
                    <td><em class="price2">￥198.00</em></td>
                    <td> 1</td>
                    <td> 2018-6-12 20:09:59</td>
                    <td>
                      <div>
                        <p>颜色分类：深蓝色[胸前格纹]</p>
                        <p>尺码：L</p>
                      </div>
                    </td>
                  </tr>
                  <!-- 省略其他评论 -->
                </tbody>
              </table>
            </article>
          
            <!-- 品牌活动 -->
            <article>
              <h1 class="pic_title">看了又看</h1>
              <ul class="pic_list4">
                <li><img src="photo/showdetail/usesee6.jpg" title="妮维雅洗面奶女男祛痘去黑头深层清洁补水保湿美白泡沫控油学生款"/>
                  <p>妮维雅洗面奶女男祛痘去黑头深层清洁补水保湿美白泡沫控油学生款</p>
                </li>
                <li><img src="photo/showdetail/usesee2.jpg" title="Dove多芬玫瑰菁油沐浴慕斯200ml*2 泡沫绵密持久留香沐浴露"/>
                  <p>Dove多芬玫瑰菁油沐浴慕斯200ml*2 泡沫绵密持久留香沐浴露</p>
                </li>
                <li><img src="photo/showdetail/usesee4.jpg" title="Dove/多芬进口柔嫩氨基酸洁面慕斯泡沫洗面奶洁面乳160ml补水保湿"/>
                  <p>Dove/多芬进口柔嫩氨基酸洁面慕斯泡沫洗面奶洁面乳160ml补水保湿</p>
                </li>
                <li><img src="photo/showdetail/usesee3.jpg" title="力士 植萃精油香氛沐浴露/乳 忍冬花与橙花/持久留香550g"/>
                  <p>力士 植萃精油香氛沐浴露/乳 忍冬花与橙花/持久留香550g</p>
                </li>
                <li><img src="photo/showdetail/usesee5.jpg" title="Olay玉兰油烟酰胺沐浴露500ml+500ml精华沐浴乳女士身体小白瓶"/>
                  <p>Olay玉兰油烟酰胺沐浴露500ml+500ml精华沐浴乳女士身体小白瓶</p>
                </li>
              </ul>
            </article>
          </div>
          <!-- 中间区 end -->
        
          <!-- 右侧热门推荐 start -->
          <aside class="right_nav">
            <h1 class="notice_title">热门推荐</h1>
            <ul class="pic_list3">
              <ul>
              <li><a href="#"><img class="pic_l" src="photo/showdetail/usesee5.jpg"/></a>
                <p class="price2">￥59.00元</p>
              </li>
              <li><a href="#"><img class="pic_l" src="photo/showdetail/usesee1.jpg"/></a>
                <p class="price2">￥99.00元</p>
              </li>
              <li><a href="#"><img class="pic_l" src="photo/showdetail/usesee6.jpg"/></a>
                <p class="price2">￥49.00元</p>
              </li>
              <li><a href="#"><img class="pic_l" src="photo/showdetail/usesee2.jpg"/></a>
                <p class="price2">￥69.40元</p>
              </li>
              <li><a href="#"><img class="pic_l" src="photo/showdetail/usesee3.jpg"/></a>
                <p class="price2">￥79.00元</p>
              </li>
              <li><a href="#"><img class="pic_l" src="photo/showdetail/usesee4.jpg"/></a>
                <p class="price2">￥68.00元</p>
              </li>
              <li><a href="#"><img class="pic_l" src="photo/showdetail/usesee3.jpg"/></a>
                <p class="price2">￥48.60元</p>
              </li>
              <li><a href="#"><img class="pic_l" src="photo/showdetail/usesee1.jpg"/></a>
                <p class="price2">￥69.00元</p>
              </li>
              <li><a href="#"><img class="pic_l" src="photo/showdetail/usesee5.jpg"/></a>
                <p class="price2">￥79.80元</p>
              </li>
              </ul>
            </ul>
          </aside>
          <!-- 右侧热门推荐 end -->
        </div>
      </section>
      <!-- 中间部分 end -->
      
      <footer>
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
            Copyright  2015-2020  LZW Fashion OnlineShop
            <br/>
            ZQU Guangdong China 咨询热线：12345678901
          </p><br/>
          <div class="clear"></div>
        </div>
      </footer>      
    </article>
    
  </body>
</html>
