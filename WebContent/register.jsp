<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="js/cascade.js" type="text/javascript"></script>
<title>用户注册</title>
<link href="css/register.css" rel="stylesheet" type="text/css">
</head>
<body>
<!--顶部区域 start-->
<table width="100%" border="0" cellspacing="0" cellpadding=0" class="top_line">
<tr>
<td bgcolor ="#f7f7f7">
 <table width="1200" border="0" cellspacing="0" cellpadding="0" align="center">
            <tr>
              <td class="padding-top">
                <img alt="收藏" src="photo/index/store.png" width="18" height="18">收藏|HI，欢迎来订购！
                  <a href="login.jsp" class="orange">[请登录]</a>
                  <a href="register.jsp" class="orange">[免费注册]</a>
              </td>
              <td align="right">
                                客户服务<img alt="arrow" src="photo/index/menu.png" width="18" height="18">&nbsp;
                                网站导航<img alt="arrow" src="photo/index/site.png" width="18" height="18">&nbsp;
                <span class="droparrow">
                  <span class="shopcart"></span>我的购物车
                  <span class="orange">0</span>件<img alt="arrow" src="photo/index/shoppingcar.png" 
                      width="18" height="18">
                </span>
              </td>
            </tr>        
          </table>
        </td>
      </tr>
    </table>
<!--顶部区域end-->
<!--  logo和 banner start-->
<table width="1200px" border="0" cellspacing="0"  cellpadding="0" align="center">
<tr>
        <td height="95"><a href=" "><img src="photo/index/banner.png" width="1200" height="180"></a></td>
</tr>
</table>

<!-- 菜单导航 -->
    <table width="100%" border="0" cellspacing="0" cellpadding="0"  background="#ce2626">
      <tr>
        <td>
          <table width="1200px" border="0" cellspacing="0" cellpadding="4" 
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


<!--  注册部分 start-->
<table width="100%"  border ="0" cellspacing="0" cellpadding="0" bgcolor="#f8f8f8">
<tr>
<td>
<table width="1000" border="0" cellspacing="0" cellpadding="0" bgcolor="#ffffff" align="center">
<tr>
<td valign="top"><h2 align="center">用户注册</h2>
<hr width="90%" align="center" color="#ccc"/></td>
<td width="420" rowspan="2" align="middle">
<img src="" align="right"/></td>
</tr>
<tr>
<td valign="top">
<form action="#" method="post" enctype="multipart/form-data">
<table width="90%" border="0" cellspacing="0" cellpadding="0" class="reg" align="center">
<tr>
<td width="80" align="center" height="30px">用户名：</td>
<td><input name="userName" type="text" id="userName" value="请输入用户名"/></td>
</tr>

<tr>
<td width="80" align="center" height="30px">邮箱地址：</td>
<td><input name="email" type="text" id="email" value="请输入邮箱地址"/></td>
</tr>

<tr>
<td width="80" align="center" height="30px">设置密码：</td>
<td><input name="userPwd" type="password" id="userPwd"/></td>
</tr>

<tr>
<td>&nbsp;</td>
<td class="gray12">6-12个字符，由字母、数字和符号的两种以上组合。&nbsp;</td>
</tr>

<tr>
<td width="80" align="center" height="30px">确认密码：</td>
<td><input name="userRePwd" type="password" id="userRePwd"/></td>
</tr>


<tr>
<td width="80" align="center" height="30px">真实姓名：</td>
<td><input name="realName" type="text"  id="realName" value="请输入真实姓名"/></td>
</tr>


<tr>
<td width="80" align="center" height="30px">您的性别：</td>
<td><input type="radio" name="sex" value="radio" checked/>男
<input type="radio" name="sex" value="radio"/>女</td>
</tr>


<tr>
<td width="80" align="center" height="30px">上传头像：</td>
<td><input type="file" name="headPic" id="headPic"/></td>
</tr>

<tr>
<td width="80" align="center" height="30px">您的手机：</td>
<td><input name="mobile" type="text" id="mobile"  value="请输入您的手机号"/></td>
</tr>

<tr>
<td width="80" align="center" height="30px">单位地址：</td>
<td>
<select id="cmbProvince" name="cmbProvince"></select>
<select id="cmbCity" name="cmbCity"></select> 
<select id="cmbArea" name="cmbArea"></select> 
<input type="text" value="详细地址" onblur="if(this.value=''){this.value='详细地址'}" 
onfocus="if(this.value='详细地址'){this.value='';
this.style.color='#ff0000'}">
<script type="text/javascript"> 
 addressInit('cmbProvince', 'cmbCity', 'cmbArea');
</script>

</td>
</tr>


<tr>
<td width="80" align="center" height="30px">您的爱好：</td>
<td><input name="hobby" type="checkbox" value="购物"/>购物
    <input name="hobby" type="checkbox" value="影视"/>影视
    <input name="hobby" type="checkbox" value="餐饮"/>餐饮</td>
    </tr>
    <tr>
    <td width="80" align="center" height="30px">协议内容：</td>
    <td><textarea rows="3" cols="30"></textarea></td>
</tr>


<tr>
<td>&nbsp;</td>
<td><input type="submit" name="buttom" value="提交"/></td>
</tr>
</table>
</form></td>
</tr>
</table>

<!-- 三大模块图片 -->
<table width="1000" border="0" cellspacing="0" cellpadding="0" align="center" 
bgcolor="#FFFFFF" class="padding-bottom">
<tr>

<td align="center" ><img src="" class=""/></td>
<td align="center" ><img src="" class=""/></td>
<td align="center" ><img src="" class=""/></td>
</tr>
</table></td>
</tr>
</table>


<!-- 版权信息 -->

</body>
</html> 