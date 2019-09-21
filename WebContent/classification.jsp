<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品分类</title>
<link rel="stylesheet" href="css/index.css" type="text/css">
<script type="text/javascript" src="js/pictureSlide.js"></script>


</head>
<body>
 <!-- 顶部区域 -->
    <table  width="100%" border="0" cellspacing="0" cellpadding="0" class="top_bg">
      <tr>
        <td bgcolor="#f7f7f7">
          <table width="1200" border="0" cellspacing="0" cellpadding="0" align="center">
            <tr>
              <td>
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
							<a href="login.jsp" class="orange">[请登录]</a> <a href="register"
								class="orange">[免费注册]</a>
						</div>
					</c:otherwise>
				</c:choose>
              </td>
              <td align="right">
                                客户服务<img alt="arrow" src="photo/index/menu.png" width="18" height="18">&nbsp;
                                网站导航<img alt="arrow" src="photo/index/site.png" width="18" height="18">&nbsp;
                <span class="droparrow">
                  <span class="shopcart"></span>我的购物车
                  <span class="orange"></span>件<img alt="arrow" src="photo/index/shoppingcar.png" 
                      width="18" height="18">
                </span>
              </td>
            </tr>        
          </table>
        </td>
      </tr>
    </table>
    
    <!-- logo和banner区域 -->
    <table width="90%" border="0" cellspacing="0" cellpadding="0" align="center">
      <tr>
        <td height="95"><a href=" "><img src="photo/index/banner2.jpg" width="100%" height="180"></a></td>
      </tr>    
    </table>
 
    <!-- 菜单导航 -->
    <table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#ce2626">
      <tr>
        <td>
          <table width="1200" border="0" cellspacing="0" cellpadding="4" 
              align="center" class="nav_font16">
            <tr>
              <td width="200">&nbsp;</td>
              <td width="80" align="center" class="nav_active">
                <a href="shoppingIndex.jsp" class="white">首页</a>
              </td>
              <td width="100" align="center">
                <a href="shoppingShow.jsp" class="white">最新上架</a>
              </td>
              <td width="100" align="center">品牌活动</td>
              <td width="100" align="center">原厂直供</td>
              <td width="80" align="center">团购</td>
              <td width="100" align="center">限时抢购</td>
              <td width="100" align="center">促销打折</td>
              <td width="200" align="center">&nbsp;</td>
            </tr>          
          </table>
        </td>
      </tr>
    </table>
      
    <!-- 中间部分 -->  
   <div class="main">
          <!-- 购物分类 start -->
          
            <ul class="menu">
              <li><span class="title">服装</span></li>
              <li><span class="red_dot"></span><a href="#A1">女装</a>
                <span class="right_arrow"></span></li>
              <li><span class="red_dot"></span><a href="#A2">男装</a>
                <span class="right_arrow"></span></li>
              <li><span class="red_dot"></span><a href="#A3">童装</a>
                <span class="right_arrow"></span></li>
              <li><span class="title">食品</span></li>
              <li><span class="red_dot"></span><a href="#A4">零食</a>
                <span class="right_arrow"></span></li>
              <li><span class="red_dot"></span><a href="#A5">果蔬</a>
                <span class="right_arrow"></span></li>
              <li><span class="red_dot"></span><a href="#A6">奶品水饮</a>
                <span class="right_arrow"></span></li>
              <li><span class="title">居家日用</span></li>
              <li><span class="red_dot"></span><a href="#A7">个人护理</a>
                <span class="right_arrow"></span></li>
              <li><span class="red_dot"></span><a href="#A8">清洁家居</a>
                <span class="right_arrow"></span></li>
              <li><span class="red_dot"></span><a href="#A9">家用电器</a>
                <span class="right_arrow"></span></li>
              <li><span class="title">图书文体</span></li>
              <li><span class="red_dot"></span><a href="#A10">图书</a>
                <span class="right_arrow"></span></li>
              <li><span class="red_dot"></span><a href="#A11">文具</a>
                <span class="right_arrow"></span></li>
              <li><span class="red_dot"></span><a href="#A12">体育用材</a>
                <span class="right_arrow"></span></li>
            </ul>
          </div>
          <!-- 购物分类end -->

   <!-- 图片放置 -->
  
   <td valign="top">
    <table>
      <tr>
        <td class="tit"><a name="A1">女装</a></td>
      </tr>
      <tr>
        <td>
          <table>
          <!-- 女装 -->
            <tr>
              <td><a href="shoppingDetail.jsp"><img class="pic"   src = "photo/girl3.jpg"></a></td>
              <td><img class="pic"   src = "photo/girl2.jpg"></td>
              <td><img class="pic"  src = "photo/girl1.jpg"></td>
            </tr>
            
            <tr>
            <td><a href="shoppingDetail.jsp"><h1 class="text">￥139.50元 &nbsp;&nbsp;226人已购买<br/>早秋卫衣2018新款女长袖韩版宽松<br/>学生ins超火的上衣外套潮秋冬季</h1></a></td>
             <td><h1 class="text">￥107.80元 &nbsp;&nbsp;752人已购买<br/>早秋2018新款女格子宽松<br/>外套秋装休闲学生</h1></td>
             <td><h1 class="text">￥98.60元 &nbsp;&nbsp;101人已购买<br/>2018新款女长袖韩版宽松<br/>学生的外套潮秋冬季</h1></td>
           </tr>
            </table>
        </td>
      </tr> 
          
   
   
        
      <tr>
        <td class="tit"><a name="A2">男装</a></td>
      </tr>
      <tr>
        <td>
          <table>
      
          <!-- 男装 -->
            <tr>
              <td><img class="pic"   src = "photo/boy1.jpg"></td>
              <td><img class="pic"   src = "photo/boy2.jpg"></td>
              <td><img class="pic"  src = "photo/boy3.jpg"></td>
            </tr>
            
            <tr>
            <td><h1 class="text">￥79.40元 &nbsp;&nbsp;1626人已购买<br/>早秋外套2018新款男韩版宽松<br/>学生ins超火的上衣外套潮秋冬季</h1></td>
             <td><h1 class="text">￥199.50元 &nbsp;&nbsp;26人已购买<br/>2018新款男韩版宽松<br/>外套潮流秋冬季</h1></td>
             <td><h1 class="text">￥139.90元 &nbsp;&nbsp;268人已购买<br/>2018早秋格子衣宽松<br/>学生舒适上衣外套潮秋冬季</h1></td>
           </tr>   
           </table>
        </td>
      </tr> 
          
           
           
         
           
      <tr>
        <td class="tit"><a name="A3">童装</a></td>
      </tr>
      <tr>
        <td>
          <table>
          <!-- 童装 -->
            <tr>
              <td><img class="pic"   src = "photo/child1.jpg"></td>
              <td><img class="pic"   src = "photo/child2.jpg"></td>
              <td><img class="pic"  src = "photo/child3.jpg"></td>
            </tr>
            
            <tr>
            <td><h1 class="text">￥99.00元 &nbsp;&nbsp;6456人已购买<br/>婴儿装粉色系可爱舒适<br/>柔软女童装系列</h1></td>
             <td><h1 class="text">￥119.00元 &nbsp;&nbsp;8427人已购买<br/>出生婴儿装宽松柔软<br/>可爱舒适质量上乘</h1></td>
             <td><h1 class="text">￥189.00元 &nbsp;&nbsp;1296人已购买<br/>2018新款婴儿宽松<br/>柔软舒适适合婴儿皮肤秋冬季</h1></td>
           </tr>  
            
            </table>
        </td>
      </tr> 
        
 
      <tr>
        <td class="tit"><a name="A4">零食</a></td>
      </tr>
      <tr>
        <td>
          <table>
          <!-- 零食 -->
            <tr>
              <td><a href="shoppingDetail_food.jsp"><img class="pic"   src = "photo/snack1.jpg"></a></td>
              <td><img class="pic"   src = "photo/snack2.jpg"></td>
              <td><img class="pic"  src = "photo/snack3.jpg"></td>
            </tr>
            
            <tr>
            <td><a href="shoppingDetail_food.jsp"><h1 class="text">￥59.80元 &nbsp;&nbsp;1642人已购买<br/>每日坚果30包混合干果孕妇零食大礼包<br/>【良品铺子综合果仁750g装】</h1></a></td>
             <td><h1 class="text">￥49.00元 &nbsp;&nbsp;9256人已购买<br/>早餐代餐小零食海苔咸味休闲食品<br/>【良品铺子酥脆薄饼干300gx2盒】</h1></td>
             <td><h1 class="text">￥43.00元 &nbsp;&nbsp;7026人已购买<br/>良品铺子零食大礼包网红小吃<br/>一箱组合女整箱混装宿舍小食品美食男</h1></td>
           </tr>  
            
            </table>
        </td>
      </tr> 


        <tr>
        <td class="tit"><a name="A5">蔬果</a></td>
      </tr>
      <tr>
        <td>
          <table>
          <!-- 蔬果 -->
            <tr>
              <td><img class="pic"   src = "photo/shuguo1.jpg"></td>
              <td><img class="pic"   src = "photo/shuguo2.jpg"></td>
              <td><img class="pic"  src = "photo/shuguo3.jpg"></td>
            </tr>
            
            <tr>
            <td><h1 class="text">￥39.00元 &nbsp;&nbsp;176人已购买<br/>大芒果应季新鲜水果包邮整箱10斤当季青芒<br/>坏果包赔 收藏加购买5斤送5斤 带箱共发10斤</h1></td>
             <td><h1 class="text">￥19.00元 &nbsp;&nbsp;7656人已购买<br/>安岳黄柠檬6斤柠檬水果批发包邮整箱新鲜<br/>一级果皮薄5青香水鲜柠檬 </h1></td>
             <td><h1 class="text">￥13.00元 &nbsp;&nbsp;2206人已购买<br/>新鲜苦菊苦叶生菜苦苣九牙菜<br/>西餐沙拉蔬菜狗牙菜500g</h1></td>
           </tr>  
            </table>
        </td>
      </tr> 
      
      <tr>
        <td class="tit"><a name="A6">奶饮</a></td>
      </tr>
      <tr>
        <td>
          <table>
          <!-- 奶饮 -->
            <tr>
              <td><img class="pic"   src = "photo/drink1.jpg"></td>
              <td><img class="pic"   src = "photo/drink2.jpg"></td>
              <td><img class="pic"  src = "photo/drink3.jpg"></td>
            </tr>
            
            <tr>
            <td><h1 class="text">￥129.00元 &nbsp;&nbsp;642人已购买<br/>澳大利亚原装进口德运全脂纯牛奶1L*10盒<br/>整箱澳大利亚 原装进口 全脂牛奶 奶香四溢</h1></td>
             <td><h1 class="text">￥189.00元 &nbsp;&nbsp;956人已购买<br/>：法国 Evian依云进口天然矿泉水<br/>500ml*24瓶整箱天然水源 </h1></td>
             <td><h1 class="text">￥93.00元 &nbsp;&nbsp;5206人已购买<br/>RIO锐澳鸡尾酒套装洋酒女士网红预调酒<br/>3度微醺330ml*10罐正品整箱</h1></td>
           </tr>  
            </table>
        </td>
      </tr> 
      
      
       
      <tr>
        <td class="tit"><a name="A7">个人护理</a></td>
      </tr>
      <tr>
        <td>
          <table>
          <!-- 个人护理 -->
            <tr>
              <td><a href="shoppingDetail_use.jsp"><img class="pic"   src = "photo/huli1.png"></a></td>
              <td><img class="pic"   src = "photo/huli2.png"></td>
              <td><img class="pic"  src = "photo/huli3.png"></td>
            </tr>
            
            <tr>
            <td><a href="shoppingDetail_use.jsp"><h1 class="text">￥59.90元 &nbsp;&nbsp;1726人已购买<br/>欧洲原装进口妮维雅氨基酸泡沫<br/>沐浴慕斯0%皂基添加</h1></a></td>
             <td><h1 class="text">￥289.00元 &nbsp;&nbsp;997人已购买<br/>欧莱雅积雪草微精华露女紧致抗皱淡纹<br/>紧致抗皱淡纹修护保湿爽肤水秋冬季补 </h1></td>
             <td><h1 class="text">￥53.70元 &nbsp;&nbsp;326人已购买<br/>妮维雅润唇膏修护唇膜保湿口红<br/>持久保湿滋润补水女男士防干裂</h1></td>
           </tr>  
            </table>
        </td>
      </tr> 
      
       
    <tr>
        <td class="tit"><a name="A8">清洁家居</a></td>
      </tr>
      <tr>
        <td>
          <table>
          <!-- 清洁家居 -->
            <tr>
              <td><img class="pic"   src = "photo/clean1.png"></td>
              <td><img class="pic"   src = "photo/clean2.png"></td>
              <td><img class="pic"  src = "photo/clean3.png"></td>
            </tr>
            
            <tr>
            <td><h1 class="text">￥19.60元 &nbsp;&nbsp;1526人已购买<br/>亮净强效清香去顽渍洁厕灵洁厕液<br/>洁厕精1Lx2威露士出品</h1></td>
             <td><h1 class="text">￥29.50元 &nbsp;&nbsp;6310人已购买<br/>AXE/斧头牌洗洁精维E护肤<br/>1.18kg*2清新柠檬洗果蔬 </h1></td>
             <td><h1 class="text">￥23.50元 &nbsp;&nbsp;5126人已购买<br/>蓝月亮手洗洗衣液手洗专用袋装<br/>补充装风清白兰香</h1></td>
           </tr>  
            </table>
        </td>
      </tr> 
        
     <tr>
        <td class="tit"><a name="A9">家用电器</a></td>
      </tr>
      <tr>
        <td>
          <table>
          <!-- 家用电器-->
            <tr>
              <td><img class="pic"   src = "photo/jiadian1.png"></td>
              <td><img class="pic"   src = "photo/jiadian2.png"></td>
              <td><img class="pic"  src = "photo/jiadian3.png"></td>
            </tr>
            
            <tr>
            <td><h1 class="text">￥219.00元 &nbsp;&nbsp;9026人已购买<br/>美的 MB-40EASY201智能预约电饭锅<br/>不粘锅4L电饭煲3-4人家用</h1></td>
             <td><h1 class="text">￥289.90元 &nbsp;&nbsp;505人已购买<br/>小熊薄饼机DBC-A06D1春饼机春卷皮<br/>家用电饼铛千层皮烙饼神器 </h1></td>
             <td><h1 class="text">￥123.70元 &nbsp;&nbsp;516人已购买<br/>美的 MK-GJ1702烧水壶电热水壶<br/>家用自动断电玻璃开水壶透明</h1></td>
           </tr>  
            </table>
        </td>
      </tr>  
      
      <tr>
        <td class="tit"><a name="A10">图书</a></td>
      </tr>
      <tr>
        <td>
          <table>
          <!-- 图书 -->
            <tr>
              <td><a href="shoppingDetail_book.jsp"><img class="pic"   src = "photo/book1.jpg"></a></td>
              <td><img class="pic"   src = "photo/book2.jpg"></td>
              <td><img class="pic"  src = "photo/book3.jpg"></td>
            </tr>
            
            <tr>
            <td><a href="shoppingDetail_food.jsp"><h1 class="text">￥119.00元 &nbsp;&nbsp;1026人已购买<br/>正版现货包邮 平凡的世界全三册3册   <br/>路遥原著茅盾文学奖经典文学小说书籍</h1></a></td>
             <td><h1 class="text">￥89.99元 &nbsp;&nbsp;1505人已购买<br/>活着余华作品 畅销中国近现代小说 张艺谋电影改编<br/>余华作品 张艺谋电影改编 </h1></td>
             <td><h1 class="text">￥123.70元 &nbsp;&nbsp;8526人已购买<br/>大冰你坏/我不/阿弥陀佛么么哒/<br/>乖摸摸头/好吗好的 </h1></td>
           </tr>  
            </table>
        </td>
      </tr>  
      
      
      <tr>
        <td class="tit"><a name="A11">文具</a></td>
      </tr>
      <tr>
        <td>
          <table>
          <!-- 文具 -->
            <tr>
              <td><img class="pic"   src = "photo/wenju1.jpg"></td>
              <td><img class="pic"   src = "photo/wenju2.jpg"></td>
              <td><img class="pic"  src = "photo/wenju3.jpg"></td>
            </tr>
            
            <tr>
            <td><h1 class="text">￥29.50元 &nbsp;&nbsp;106人已购买<br/>笔记本子A5文具可拆卸 活页<br/>纸线圈错题A4网格本可拆格子记事本女 </h1></td>
             <td><h1 class="text">￥15.70元 &nbsp;&nbsp;150人已购买<br/>多功能大容量文具盒高中生简约小清新<br/>可爱创意个性萌卡通小学生铅笔盒  </h1></td>
             <td><h1 class="text">￥13.20元 &nbsp;&nbsp;2526人已购买<br/>晨光优品中性笔笔芯黑0.5mm子弹头<br/>简约按动红水性签名笔学生</h1></td>
           </tr>  
            </table>
        </td>
      </tr>  
      
      <tr>
        <td class="tit"><a name="A12">体育用材</a></td>
      </tr>
      <tr>
        <td>
          <table>
          <!-- 体育用材 -->
            <tr>
              <td><img class="pic"   src = "photo/tiyu1.jpg"></td>
              <td><img class="pic"   src = "photo/tiyu2.jpg"></td>
              <td><img class="pic"  src = "photo/tiyu3.jpg"></td>
            </tr>
            
            <tr>
            <td><h1 class="text">￥79.00元 &nbsp;&nbsp;126人已购买<br/>李宁 7号6号5号篮球女青少年儿童篮球 <br/>小学生室外成人耐磨正品蓝球 </h1></td>
             <td><h1 class="text">￥89.00元 &nbsp;&nbsp;56人已购买<br/>普拉施专业泳衣女连体保守遮肚显瘦 <br/>温泉训练运动小胸聚拢游泳衣女</h1></td>
             <td><h1 class="text">￥153.00元 &nbsp;&nbsp;2526人已购买<br/>智能运动哑铃 男女士健身器材<br/>运动健身</h1></td>
           </tr>  
            </table>
        </td>
      </tr>  
      
      

</body>
</html>