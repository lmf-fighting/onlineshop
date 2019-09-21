<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    <title>�ҵĹ��ﳵ</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
  </head>
  
  <body>
    
   	<table border="0" cellpadding="0" cellspacing="0">
		<tr><td><img src="images/top.jpg" width="790" height="149"></td></tr>
	</table>
    <table width="790" border="0" cellpadding="0" cellspacing="0" rules="none" background="images/car_bk.jpg">
    	<tr height="45"><td colspan="6" background="images/car_t.jpg"></td></tr>
    	<tr height="54">
    		<td colspan="6" background="images/car_m.jpg" style="padding-left:20">
    			�˿����ã����ﳵ�е���Ʒ����δ���ɶ���֮ǰ���ǽ�Ϊ������3�죬3����Զ���գ�	${requestScope.message}
    		</td>
    	</tr>
    	<tr height="40" style="font-size:12">
    		<th width="10%">���</th>
    		<th align="left">��Ʒ����</th>
    		<th width="15%">�۸�</th>
    		<th width="15%">����</th>
    		<th width="15%">�ܼ�</th>
    		<th width="10%">ɾ��</th>
    	</tr>
    	<c:set var="myshopcar" value="${requestScope.shopcar}"/>
    	<c:if test="${(empty myshopcar) or (empty myshopcar.shopcarBuyGoodss)}">
    	<tr height="80"><td colspan="6" align="center">����û����ѡ��Ʒ�����ﳵ�С�</td></tr>
    	</c:if>
    	<c:if test="${(!empty myshopcar) and (!empty myshopcar.shopcarBuyGoodss)}">
    	<form action="submitshopcar" name="updateform" method="post">
    	<c:forEach var="buygoods" varStatus="bvs" items="${myshopcar.shopcarBuyGoodss}">
   		<c:if test="${!empty buygoods}">
    	<input type="hidden" name="buygoodsids" value="${buygoods.id}">
    	<input type="hidden" name="buygoodsstorenum" value="${buygoods.goodsStoreNum}">
    	<tr height="30">
    		<td align="center">${bvs.count}</td>
    		<td>${buygoods.goodsName}</td>
    		<td align="center">��${buygoods.goodsPrice}</td>
    		<td align="center"><input type="text" name="buygoodsnum" value="${buygoods.goodsBuyNum}" size="6" style="text-align:center;border:1 solid"><br><font color="red">${requestScope.messages[bvs.index]}</font></td>
    		<td align="center">��${buygoods.goodsMoney}</td>
    		<td align="center"><a href="remove?goodsId=${buygoods.id}">ɾ��</a></td>
    	</tr>
    	<c:set var="totalmoney" value="${totalmoney+buygoods.goodsMoney}"/>
   		</c:if>
    	</c:forEach>
    	<input type="hidden" name="goodsprices" value="${totalmoney}">
    	<tr height="40"><td colspan="6"><hr width="99%" color="black"></td></tr>
    	<tr height="20"><td colspan="6" style="padding-left:30">�ܽ�<input type="text" name="goodsprices" value="${totalmoney}" style="border:0" disabled></td></tr>
    	<tr height="50" valign="bottom">
    		<td colspan="3" style="padding-left:30">
    			<input type="submit" name="whichsubmit" value="�޸�����">
    			<a href="clearshopcar">��չ��ﳵ</a>
    		</td>
    		<td colspan="3" align="center">
    			<%
    				Object loginer=session.getAttribute("loginer");
    				if(loginer==null||!(loginer instanceof com.valuebean.UserBean))
    					out.print("��û�е�¼�����ܽ���");
    				else
    					out.println("���Ѿ���¼�����Խ���");
    			%>
    			<input type="submit" value="��Ʒ����">
    		</td>
    	</tr>
    	</form>
    	</c:if>
    	<tr height="40"><td colspan="6" align="center"><a href="javascript:window.history.go(-1)">����</a></td></tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0">
		<tr><td><img src="images/end.jpg" width="790" height="104"></td></tr>
	</table>
   
  </body>
</html>
