<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
	String forward="";
	String payment=request.getParameter("payment");
	if("1".equals(payment)){
		String networkpayment=request.getParameter("networkpayment");
		if("1".equals(networkpayment))
			forward="/payment/gsbankPayment.jsp";
		else if("2".equals(networkpayment))
			forward="/payment/zsbankPayment.jsp";
		else if("3".equals(networkpayment))
			forward="/payment/jsbankPayment.jsp";
		else if("4".equals(networkpayment))
			forward="/payment/zfbflatPayment.jsp";	
		else
			forward="/payment/fail.jsp";
	}
	else if("2".equals(payment))
		forward="/payment/hdfkPayment.jsp";
	else if("3".equals(payment))
		forward="/payment/yzhkPayment.jsp";
	else if("4".equals(payment))
		forward="/payment/yhzzPayment.jsp";
	else
		forward="/payment/fail.jsp";
	
%>
<jsp:forward page="<%=forward%>"/>


