package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.goodsBean;
import bean.shopcar;

@WebServlet("/cartServlet")
public class cartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     *The doGet method of the servlet.<br>
     *
     *This method is called when a form has its tag value method equals to get.
     * 
     * @param request the request send by the client to the server
     * @param response the response send by the server to the client
     * @throws ServletException if an error occurred
     * @throws IOException if an error occurred 
     */
	
    public cartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
    	
    	response.setContentType("text/html;charset=utf-8");
		String servletpath = request.getServletPath();
		if ("/showcart".equals(servletpath)){
			try {
				showcart(request, response);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
    
    @SuppressWarnings("unchecked")
   	private void showcart(HttpServletRequest request, HttpServletResponse response)
   			throws ServletException, IOException, ClassNotFoundException, SQLException {
    
    	response.setContentType("text/html,utf-8");
        request.setCharacterEncoding("utf-8");
   		PrintWriter out = response.getWriter();
   		
		HttpSession session = request.getSession();
		goodsBean goodsinfo = new goodsBean();
       
		//获得存放在session属性buylist里的购物车商品集合		
   		shopcar mycart = new shopcar();
   		ArrayList<Object> buylist = (ArrayList<Object>) session.getAttribute("buylist");
   		
   		//如果购物车为空，则新建一个ArrayList数组
   		if(buylist == null){
   			buylist = new ArrayList<Object>();
   		}
		
		//将获得的购物车商品列表放入mycart（JavaBean实例化对象）
		//利用mycart进行商品的添加、修改购买量、删除、购物车的清空操作
		mycart.setBuylist(buylist);      
            
        //将buylist写入session的属性buylist
        // session.setAttribute("buylist", buylist);
        request.getSession().setAttribute("buylist", buylist);
        System.err.println(buylist);
           
        //获得传递过来的操作参数action
        String action = request.getParameter("action");
     	String method = request.getParameter("method");
     	if(action == null){
     	    action = "";
     	}   		   
     	//传递过来的操作参数是remove，代表删除商品
     	if(action.equals("remove")){     	            
     	   //获取该商品的name
     	   String name = goodsinfo.getGoodsName();
     	          
     	   //从购物车中删除商品
     	   mycart.removeitem(name);
     	
     	   //将buylist写入session的属性buylist
     	   session.setAttribute("buylist",buylist);
     	            
     	//转向显示购物车的页面，以便用户查看购物车内容，继续调整购物车商品
    	    /*response.sendRedirect("showCart.jsp");*/
    	   String forward = "";
          forward = "/showcartr.jsp";
          RequestDispatcher rd = request.getRequestDispatcher(forward);
      	   rd.forward(request,response);
      }
     	        
      //转递过来的操作参数是clear，代表清空购物车
      else if(method.equals("clear")){     	            
     	    //清空购物车
     	    mycart.clearcart();
     	            
     	    //将buylist写入session的属性buylist
     	    session.setAttribute("buylist",buylist);
     	            
     	    //转向显示购物车的页面，以便用户查看购物车内容，继续调整购物车商品
     	    /*response.sendRedirect("showCart.jsp");*/
     	   String forward = "";
           forward = "/showCart.jsp";
           RequestDispatcher rd = request.getRequestDispatcher(forward);
       	   rd.forward(request,response);
       }
       
      else if(method.equals("order")){
    	  //转向显示分区商品列表页面，以便用户继续购物
          String forward = "";
          forward = "/fillOrderform.jsp";
          RequestDispatcher rd = request.getRequestDispatcher(forward);
      	  rd.forward(request,response);
      }
     	        
       //如果是其他操作，则转向显示商品列表页面
       else{
     	   /*response.sendRedirect("shoppingIndex.jsp");*/
    	   String forward = "";
           forward = "/shoppingIndex.jsp";
           RequestDispatcher rd = request.getRequestDispatcher(forward);
       	   rd.forward(request,response);
       }
      
    }
}
  

