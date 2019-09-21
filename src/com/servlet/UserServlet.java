package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.userBean;
import service.userService;

/**
 * Servlet implementation class userServlet
 */
@WebServlet("/userServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
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
		response.setContentType("text/html;charset=utf-8");
		String servletpath = request.getServletPath();
		if ("/userform".equals(servletpath))
			try {
				userform(request, response);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	private void userform(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ClassNotFoundException, SQLException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String userName = request.getParameter("userName");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		
		String userPwd = request.getParameter("userPwd");
		String userRePwd = request.getParameter("userRePwd");
		String realName = request.getParameter("realName");
		String sex = request.getParameter("sex");
		String headPic = request.getParameter("headPic");
		String cmbProvince = request.getParameter("cmbProvince");
		String cmbCity = request.getParameter("cmbCity");
		String cmbArea = request.getParameter("cmbArea");
		String selectAddress = cmbProvince+cmbCity+cmbArea;
		userBean user = new userBean();

		//user.setid(id);
		
		user.setUserName(userName);
		user.setAddress(address);
		user.setEmail(email);
		user.setUserPwd(userPwd);
		user.setUserRePwd(userRePwd);
		user.setMobile(mobile);
		user.setRealName(realName);
		user.setHeadPic(headPic);
		user.setSelectAddress(selectAddress);
		user.setSex(sex);
		
		System.err.println("user:"+user.toString());

		PrintWriter out=response.getWriter();
		
       userService us=new userService();
       if(us.addUser(user)){
       //if(true){
    	
		//String forward = "";
		//forward = "/register_show.jsp";
      
		request.setAttribute("user", user);
		
		out.print("<script language='javascript'>alert('注册成功！跳转至登录页面...');window.location.href='./login.jsp';</script>");
		
		/* JOptionPane.showMessageDialog(null, "注册成功！自动跳转至登录页面");
	       response.sendRedirect("/shoppingDetail.jsp");//用于跳出框架跳转页面
*/		//request.getSession().setAttribute("user", user);

		// RequestDispatcher rd = request.getRequestDispatcher(forward);
		// rd.forward(request,response);
		   System.out.println("数据库插入成功");
       }else{
    	   out.print("<script language='javascript'>alert('该用户已存在！');</script>");
       }

	}

}
