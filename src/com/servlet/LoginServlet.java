package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.userBean;
import service.userService;
public class LoginServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String servletpath = request.getServletPath();
		if ("/Loginform".equals(servletpath))
			try {
				Loginform(request, response);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}

	private void Loginform(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException, ClassNotFoundException, SQLException {
		
		String n = request.getParameter("userName");
		String u = request.getParameter("userPwd");
		userBean user = new userBean();
		 userService us=new userService();
		    user.setUserName(n);
			user.setUserPwd(u);
			String username=us.loginUser(user).getUserName();//�����ݿ���ȡ���û���
			//user.setUserName(username);
	       if(us.loginUser(user)!=null){
	    	   System.err.println(username);
	    	   System.out.println("��¼�ɹ�");
				request.setAttribute("login", user);
				//request.setAttribute("userName", username);
				request.getSession().setAttribute("userName", username);

				response.setContentType("text/html;charset=utf-8");
				PrintWriter out=response.getWriter();
				out.print("<script language='javascript'>alert('��¼�ɹ�����ת���̳���ҳ...');window.location.href='./shoppingIndex.jsp';</script>");
	       }
	       else {
	    	   PrintWriter out=response.getWriter();
				out.print("<script language='javascript'>alert('��¼ʧ�ܣ��˺Ż�����������.');window.location.href='./login.jsp';</script>");
	       }
			//String forward = "";
			//forward = "/register_show.jsp";
	      

       
            
	}

}
