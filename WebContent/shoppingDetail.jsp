<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="bean.goodsBean" %>
<%@ page import="bean.shopcar" %>
<%@ page import="com.servlet.cartProcess" %>
<%-- <%@ page import="controller.ScriptEngineTest" %> --%>

<!DOCTYPE HTML>
<html>
  <head>   
    <title>商品详情</title>
    <jsp:useBean id="goodsBean" class="bean.goodsBean" scope="session"></jsp:useBean>
    <meta http-equiv="Content-Type"content="text/html;charset=utf-8"/>
	<link rel="stylesheet" type="text/css" href="css/detail.css">
	<script type="text/javascript" src="js/detailChoice.js"></script>
	<script src="js/check.js"></script>
	
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
            <a href="login.jsp" class="orange">[请登录]</a>
            <a href="register" class="orange">[免费注册]</a>
          </div>
          </c:otherwise>
		</c:choose>
          <div class="floatr">
                        客户服务<img src="photo/index/menu.png" width="18" height="18">&nbsp;
                        网站导航<img src="photo/index/site.png" width="18" height="18">&nbsp;
            <span class="droparrow">
              <a href="showCart.jsp">
                <span class="shopcart"></span>我的购物车
                <span class="orange">0</span>件</a>
              <img alt="arrow" src="photo/index/shoppingcar.png" width="18" height="18">
            </span>
          </div>
        </div>
      </header>
      <!-- 顶部区域end -->
      
      <!-- logo和banner start -->
      <div class="logo">
        <img src="photo/index/banner2.jpg" width="1200" height="180">
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
              <li><span class="red_dot"></span><a href="#">女装</a>
                <span class="right_arrow"></span></li>
              <li><span class="red_dot"></span><a href="#">男装</a>
                <span class="right_arrow"></span></li>
              <li><span class="red_dot"></span><a href="#">童装</a>
                <span class="right_arrow"></span></li>
              <li><span class="title">食品</span></li>
              <li><span class="red_dot"></span><a href="#">零食</a>
                <span class="right_arrow"></span></li>
              <li><span class="red_dot"></span><a href="#">果蔬</a>
                <span class="right_arrow"></span></li>
              <li><span class="red_dot"></span><a href="#">奶品水饮</a>
                <span class="right_arrow"></span></li>
              <li><span class="title">居家日用</span></li>
              <li><span class="red_dot"></span><a href="#">个人护理</a>
                <span class="right_arrow"></span></li>
              <li><span class="red_dot"></span><a href="#">清洁家居</a>
                <span class="right_arrow"></span></li>
              <li><span class="red_dot"></span><a href="#">家用电器</a>
                <span class="right_arrow"></span></li>
              <li><span class="title">图书文体</span></li>
              <li><span class="red_dot"></span><a href="#">图书</a>
                <span class="right_arrow"></span></li>
              <li><span class="red_dot"></span><a href="#">文具</a>
                <span class="right_arrow"></span></li>
              <li><span class="red_dot"></span><a href="#">体育用材</a>
                <span class="right_arrow"></span></li>
            </ul>
          </nav>
          <!-- 购物分类end -->
          
          <!-- 中间区 start -->         
          <div class="middle">
            <!-- 商品详情start -->
         <%--    <c:forEach var="entry" items="${map }"> --%>
            <%
                goodsBean goodsinfo = new goodsBean();
                shopcar buyinfo = new shopcar();             
            %>
            <h1 class="pic_title">商品详情</h1>
            <div class="left_pic">
              <div><img src="photo/girl3.jpg" width="320" height="320"></div>
              <ul class="small_piclist">
                <li><img src="photo/girl3.jpg"></li>
                <li><img src="photo/girl3.1.jpg"></li>
                <li><img src="photo/girl3.2.jpg"></li>
                <li><img src="photo/girl3.4.jpg"></li>
              </ul>
            </div>
            <div class="right">
              <h1 class="left">早秋卫衣2018新款女长袖韩版宽松<br/>学生ins超火的上衣外套潮秋冬季</h1>
            <%--   <%  
                  /* session.setAttribute("goodsId", goodsinfo.getGoodsId()[0]);
                  session.setAttribute("goodsName", goodsinfo.getGoodsName()[0]);
                  session.setAttribute("goodsPic", goodsinfo.getGoodsPic()[0]);
                  session.setAttribute("goodsPrice", goodsinfo.getGoodsPrice()[0]); */
                /*   goodsinfo.setGoodsId(1);
                  goodsinfo.setGoodsName("早秋卫衣2018新款女长袖韩版宽松<br/>学生ins超火的上衣外套潮秋冬季");
                  goodsinfo.setGoodsPrice(109.00);
                  goodsinfo.setGoodsPic("photo/girl3.jpg"); */
              %> --%>
              <img src="photo/girl3_price.jpg" width="342px" height="122px">
              <br>
              
              <form action="cartform" method="post" name="form_check" id="form_check">            
              <div class="font_co">&nbsp;&nbsp;尺码：&nbsp;&nbsp;
                <label class="label1">
                  <input class="radio" name="size" id="M" type="radio" value="M"/>
                  <span class="radioInput"></span>M</label> 
                <label class="label1">
                  <input class="radio" name="size" id="L" type="radio" value="L"/>
                  <span class="radioInput"></span>L</label> 
                <label class="label1">
                  <input class="radio" name="size" id="XL" type="radio" value="XL"/>
                  <span class="radioInput"></span>XL</label> 
                <label class="label1">
                  <input class="radio" name="size" id="2XL" type="radio" value="2XL"/>
                  <span class="radioInput"></span>2XL</label> 
              </div>             
              <br>
              <div class="font_co">&nbsp;&nbsp;颜色：&nbsp;&nbsp;
                <label class="label1">
                  <input class="radio" name="color" id="green" type="radio" value="绿色"/>
                  <span class="radioInput"></span>绿色</label> 
                <label class="label1">
                  <input class="radio" name="color" id="apricot" type="radio" value="杏色"/>
                  <span class="radioInput"></span>杏色</label> 
                <label class="label1">
                  <input class="radio" name="color"  id="black" type="radio" value="黑色"/>
                  <span class="radioInput"></span>黑色</label>  
              </div>             
              <br>
              <input class="input1" type="button" name="asub" value="-"
					 onClick = "if (document.getElementById('number21').value>1)   
					     {document.getElementById('number21').value--;}">
			  <input class="input2" type="text" id="number21" name="acount" value="1" size="10" maxlength="10">
			  <input class="input1" type="button" name="asup" value="+"
					 onClick = "if (document.getElementById('number21').value<100) 
					     {document.getElementById('number21').value++;}" ><br/><br/>
			  <p class="input4">(单次购买量：100)</p>
			  <br/>
			  <input type="hidden" id="userName" name="userName" value=" ${userName}" >
			  <input class="input3" type="button" name="asale" value="放入购物车"
				  onClick = "checkForm()"/>
				  
			  <button type="button" class="input3" ><a href="./showCart.jsp">查看购物车</a></button>

			 
			 <!--  <input type="hidden" name="sizeResult" id="sizeResult">
			  <input type="hidden" name="colorResult" id="colorResult">
			  <input type="hidden" name="numResult" id="numResult"> -->
		      <%-- <%
		           ScriptEngineTest jsEngine = new ScriptEngineTest();
		          Object[] goodsdetail = jsEngine.JSEngineTest(); 
		          
		          goodsinfo.setGoodsColor((String)goodsdetail[0]);
		          goodsinfo.setGoodsSize((String)goodsdetail[1]);
		          goodsinfo.setGoodsNum((int)goodsdetail[2]);
		          System.out.println((int)goodsdetail[2]); 
		          
		          goodsinfo.setGoodsColor(request.getParameter("colorResult"));
		          goodsinfo.setGoodsSize(request.getParameter("sizeResult"));
		          if(!"".equals(request.getParameter("numResult")) && request.getParameter("numResult")!=null){
                      goodsinfo.setGoodsNum(Integer.parseInt(request.getParameter("numResult")));
		              System.out.println(Integer.parseInt(request.getParameter("numResult")));
		          }	          
		      %> --%> 
			  </form> 
            </div>
            <div class="clear"></div>
            <ul class="tab">
              <li class="tab_active">商品详情</li>
              <li>商品评价</li>
              <li>成交记录</li>
            </ul>
            <article class="tab_content1">
              <ul class="particulars">
                <li title="宽松">服装版型：宽松</li>
                <li title="帅气">风格：街头</li>
                <li title="中性">街头：中性</li>
                <li title="中长款">衣长：中长款</li>
                <li title="长袖">袖长：长袖</li>
                <li title="常规">袖型：常规</li>
                <li title="带帽">领型：带帽</li>
                <li title="套头">衣门襟：套头</li>
                <li title="字母">图案：字母</li>
                <li title="81%（含）-90%（含）">成分含量：81%（含）-90%（含）</li>
                <li title="棉">质地：棉</li>
                <li title="25-29周岁">适用年龄：18-25周岁</li>
                <li title="2018年冬季">年份季节：2018年冬季</li>
                <li title="绿色 杏色 黑色">颜色分类：绿色 杏色 黑色</li>
                <li title="M L XL 2X">尺码：M L XL 2XL</li>
              </ul>
              <section>
                <img src="photo/girl3.1.jpg" class="img_border">
                <img src="photo/girl3.2.jpg" class="img_border">
                <img src="photo/girl3.3.jpg" class="img_border">
                <img src="photo/girl3.4.jpg" class="img_border">
                <img src="photo/girl3.jpg" class="img_border">
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
            <!-- 商品详情end -->
          
            <!-- 品牌活动 -->
            <article>
              <h1 class="pic_title">看了又看</h1>
              <ul class="pic_list4">
                <li><img src="photo/showdetail/see1.jpg" title="森马长袖衬衫男新款纯棉学生衬衣男2018冬季韩版格纹小清新寸衫"/>
                  <p>森马长袖衬衫男新款纯棉学生衬衣男2018冬季韩版格纹小清新寸衫</p>
                </li>
                <li><img src="photo/showdetail/see2.jpg" title="森马男士长袖衬衫男2018秋季新品格子衬衣纯棉翻领寸衫青年韩版"/>
                  <p>森马男士长袖衬衫男2018秋季新品格子衬衣纯棉翻领寸衫青年韩版</p>
                </li>
                <li><img src="photo/showdetail/see3.jpg" title="ins超火卫衣女2018新款秋冬潮韩版学生宽松上衣帽衫外套港风连帽"/>
                  <p>ins超火卫衣女2018新款秋冬潮韩版学生宽松上衣帽衫外套港风连帽</p>
                </li>
                <li><img src="photo/showdetail/see4.jpg" title="棉衣女装2018新款冬季羽绒棉服加厚外套中长款韩版学生面包服棉袄"/>
                  <p>棉衣女装2018新款冬季羽绒棉服加厚外套中长款韩版学生面包服棉袄</p>
                </li>
                <li><img src="photo/showdetail/see5.jpg" title="毛呢外套女中长款韩版2018新款冬宽松显瘦加厚赫本风小个子妮大衣"/>
                  <p>毛呢外套女中长款韩版2018新款冬宽松显瘦加厚赫本风小个子妮大衣</p>
                </li>
              </ul>
            </article>
          </div>
          <!-- 中间区 end -->
        
          <!-- 右侧热门推荐 start -->
          <aside class="right_nav">
            <h1 class="notice_title">热门推荐</h1>
            <ul class="pic_list3">
              <li><a href="#"><img class="pic_l" src="photo/hot/ad1.png"/></a>
                <p class="price2">￥139.00元</p>
              </li>
              <li><a href="#"><img class="pic_l" src="photo/hot/ad2.png"/></a>
                <p class="price2">￥499.00元</p>
              </li>
              <li><a href="#"><img class="pic_l" src="photo/hot/ad3.png"/></a>
                <p class="price2">￥129.00元</p>
              </li>
              <li><a href="#"><img class="pic_l" src="photo/hot/ad4.png"/></a>
                <p class="price2">￥659.40元</p>
              </li>
              <li><a href="#"><img class="pic_l" src="photo/hot/ad5.png"/></a>
                <p class="price2">￥219.00元</p>
              </li>
              <li><a href="#"><img class="pic_l" src="photo/hot/ad6.png"/></a>
                <p class="price2">￥108.00元</p>
              </li>
              <li><a href="#"><img class="pic_l" src="photo/hot/ad7.png"/></a>
                <p class="price2">￥88.60元</p>
              </li>
              <li><a href="#"><img class="pic_l" src="photo/hot/ad8.png"/></a>
                <p class="price2">￥119.00元</p>
              </li>
              <li><a href="#"><img class="pic_l" src="photo/hot/ad9.png"/></a>
                <p class="price2">￥79.80元</p>
              </li>
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
