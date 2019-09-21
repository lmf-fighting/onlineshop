<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>   
    <title>图书商品详情</title>
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
              <div><img src="photo/showdetail/book1.jpg" width="320" height="320"></div>
              <ul class="small_piclist">
                <li><img src="photo/showdetail/book1.jpg"></li>
                <li><img src="photo/showdetail/book2.jpg"></li>
                <li><img src="photo/showdetail/book1.jpg"></li>
                <li><img src="photo/showdetail/book1.jpg"></li>
              </ul>
            </div>
            <div class="right">
              <h1 class="font16">平凡的世界全三册路遥著图书籍全套完整版<br/>茅盾文学奖作品经典当代文学小说</h1>
              <img src="photo/book1_price.jpg" width="342px" height="223px"><br/>
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
                <li title="平凡的世界">产品名称：平凡的世界(共3册)</li>
                <li title="否">是否是套装: 否</li>
                <li title="平凡的世界">书名: 平凡的世界(共3册)</li>
                <li title="路遥">作者: 路遥</li>
                <li title=" 2017年5月">出版时间: 2017年5月</li>
                <li title="北京出版集团北京十月文艺">出版社名称: 北京出版集团北京十月文艺</li>
                <li title="32开">开本: 32开</li>
                <li title="108">定价: 108.00元</li>
                
              </ul>
              <section>
                <img src="photo/showdetail/book1.jpg" class="img_border">
                <img src="photo/showdetail/book2.jpg" class="img_border">
                <img src="photo/showdetail/book3.jpg" class="img_border">
                <img src="photo/showdetail/book4.jpg" class="img_border">
                <img src="photo/showdetail/book5.jpg" class="img_border">
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
                <li><img src="photo/showdetail/booksee3.jpg" title="哈姆雷特原版课外阅读系列丛书课外畅销图书黑皮莎士比亚四大悲剧之一"/>
                  <p>哈姆雷特原版课外阅读系列丛书课外畅销图书黑皮莎士比亚四大悲剧之一</p>
                </li>
                <li><img src="photo/showdetail/booksee1.jpg" title="世界名著课外阅读书必读红与黑正版包邮"/>
                  <p>世界名著课外阅读书必读红与黑正版包邮</p>
                </li>
                <li><img src="photo/showdetail/booksee5.jpg" title="朝花夕拾鲁迅包邮正版(人民教育出版社)教育部推荐书目"/>
                  <p>朝花夕拾鲁迅包邮正版(人民教育出版社)教育部推荐书目</p>
                </li>
                <li><img src="photo/showdetail/booksee4.jpg" title=" 百年孤独 50周年纪念版 诺贝尔文学奖获得者马尔克斯代表作  "/>
                  <p>百年孤独 50周年纪念版 诺贝尔文学奖获得者马尔克斯代表作 世界名著  </p>
                </li>
                <li><img src="photo/showdetail/booksee2.jpg" title=" 童年 高尔基 原著无删减完整版 教育部统编版语文教材推荐阅读经典名著 "/>
                  <p> 童年 高尔基 原著无删减完整版 教育部统编版语文教材推荐阅读经典名著 </p>
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
              <li><a href="#"><img class="pic_l" src="photo/showdetail/booksee7.jpg"/></a>
                <p class="price2">￥139.00元</p>
              </li>
              <li><a href="#"><img class="pic_l" src="photo/showdetail/booksee6.jpg"/></a>
                <p class="price2">￥499.00元</p>
              </li>
              <li><a href="#"><img class="pic_l" src="photo/showdetail/booksee5.jpg"/></a>
                <p class="price2">￥129.00元</p>
              </li>
              <li><a href="#"><img class="pic_l" src="photo/showdetail/booksee4.jpg"/></a>
                <p class="price2">￥659.40元</p>
              </li>
              <li><a href="#"><img class="pic_l" src="photo/showdetail/booksee3.jpg"/></a>
                <p class="price2">￥219.00元</p>
              </li>
              <li><a href="#"><img class="pic_l" src="photo/showdetail/booksee2.jpg"/></a>
                <p class="price2">￥108.00元</p>
              </li>
              <li><a href="#"><img class="pic_l" src="photo/showdetail/booksee1.jpg"/></a>
                <p class="price2">￥88.60元</p>
              </li>
              <li><a href="#"><img class="pic_l" src="photo/showdetail/booksee7.jpg"/></a>
                <p class="price2">￥119.00元</p>
              </li>
              <li><a href="#"><img class="pic_l" src="photo/showdetail/booksee4.jpg"/></a>
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
