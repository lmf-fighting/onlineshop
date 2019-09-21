<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>OnlineShop后台管理系统</title>
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>

    <script type="text/javascript">
        window.onload=function(){
            var flag=0;
            do{
            //使用数组保存用户名和密码
                var array = [["wmx","wmx"],["zxf","zxf"],["zzt","zzt"],["lmf","lmf"]];
                var userName = prompt("请输入用户名：");
                var userPwd = prompt("请输入密码：");
                for(var i=0;i<array.length;i++){
                    if(array[i][0] == userName && array[i][1] == userPwd){
                        alert("用户登录成功，欢迎<"+userName+">使用本系统！");
                        //获取topFrame框架对应的页面中的class属性为"user"的元素，
                        //然后再从中筛选<span>标签，最后修改标签中的内容
                        topFrame.document.getElementByClassName("user")[0]
                            .getElementByTagName("span")[0].innerHTML = userName; 
                        flag = 1;           //用户登录成功
                        break;
                    }
                    if(userName == null && userPwd == null){
                        flag = 2;         //用户取消登录                           
                    }
                }
                if(flag == 0){
                    alert("用户名或密码错误，请重新登录。");
                }
            }while(flag == 0);
        }
    </script>  
  </head>
  
  <frameset rows="88,*" cols="*" frameborder="no" border="0" framespacing="0">
    <frame src="top.jsp" name="topFrame" scrolling="no" noresize="noresize"
        id="topFrame" title="topFrame"/>
    <frameset cols="187,*" frameborder="no" border="0" framespacing="0">
      <frame src="left.jsp" name="leftFrame" scrolling="no" noresize="noresize"
          id="leftFrame" title="leftFrame"/>
      <frame src="shoplist.jsp" name="rightFrame" id="rightFrame" title="rightFrame"/>
    </frameset>
  </frameset>
  <noframes>
    <body>
            您的浏览器不支持框架集 <br>
    </body>
  </noframes>
  
</html>
