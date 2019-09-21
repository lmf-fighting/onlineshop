package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class SubmitFilter implements Filter {
	private FilterConfig fc;

	public void doFilter(ServletRequest sRequest, ServletResponse sResponse,FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request=(HttpServletRequest)sRequest;
		String method=request.getMethod();
		
		if("/createorderform".equals(request.getServletPath())){
			if(method.equalsIgnoreCase("POST"))
				chain.doFilter(sRequest,sResponse);	
			else{
				String message="<li>不是以POST方式进行的请求！</li>";
				message+="<a href='javascript:window.history.go(-1)'>返回</a>";
				request.setAttribute("message",message);				
				RequestDispatcher rd=request.getRequestDispatcher("/message.jsp");
				rd.forward(request,sResponse);
			}				
		}	
		else
			chain.doFilter(sRequest,sResponse);
	}
	
	public void init(FilterConfig fc) throws ServletException {
		this.fc=fc;		
	}	
	public void destroy() {
		this.fc=null;
	}
}