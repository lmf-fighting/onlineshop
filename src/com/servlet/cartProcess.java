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
import bean.mytools;
import bean.shopcar;

@WebServlet("/cartProcess")
public class cartProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * The doGet method of the servlet.<br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */

	public cartProcess() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		String servletpath = request.getServletPath();
		if ("/cartform".equals(servletpath)) {
			try {
				cartform(request, response);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if ("/showcart".equals(servletpath)) {
			try {
				showcart(request, response);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	@SuppressWarnings("unchecked")
	public void cartform(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ClassNotFoundException, SQLException {

		response.setContentType("text/html,utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();

		HttpSession session = request.getSession();
		goodsBean goodsinfo = new goodsBean();

		goodsinfo.setGoodsId(1);
		goodsinfo.setGoodsName("��������2018�¿�Ů���享�����<br/>ѧ��ins������������׳��ﶬ��");
		goodsinfo.setGoodsPrice(109.00);
		goodsinfo.setGoodsPic("photo/girl3.jpg");
		// ��ȡ�û�������Ʒ������
		int buynum = mytools.strtoint(request.getParameter("acount"));

		// ��ȡ�û�������Ʒ�ĳ������ɫ
		String size = request.getParameter("size");
		String color = request.getParameter("color");
		goodsinfo.setGoodsColor(color);
		goodsinfo.setGoodsSize(size);
		goodsinfo.setGoodsNum(buynum);
		ArrayList<Object> buylist = new ArrayList<>();	
		buylist.add(goodsinfo);
		/*buylist.add(goodsinfo.getGoodsId());
		buylist.add(goodsinfo.getGoodsPic());
		buylist.add(goodsinfo.getGoodsName());
		buylist.add(goodsinfo.getGoodsPrice());
		buylist.add(goodsinfo.getGoodsNum());
		buylist.add(goodsinfo.getGoodsSize());
		buylist.add(goodsinfo.getGoodsColor());*/
		// ��ô����session����buylist��Ĺ��ﳵ��Ʒ����
		shopcar mycart = new shopcar();
		//buylist = (ArrayList<Object>) session.getAttribute("buylist");

		/*// ������ﳵΪ�գ����½�һ��ArrayList����
		if (buylist == null) {
			buylist = new ArrayList<Object>();
		}*/

		// ����õĹ��ﳵ��Ʒ�б����mycart��JavaBeanʵ��������
		// ����mycart������Ʒ����ӡ��޸Ĺ�������ɾ�������ﳵ����ղ���
		mycart.setBuylist(buylist);

		// ��ô��ݹ����Ĳ�������action
		String action = request.getParameter("action");
		if (action == null) {
			action = "";
		}
		
		//mycart.additem(goodsinfo, buynum, size, color);

		// ��buylistд��session������buylist
		// session.setAttribute("buylist", buylist);
		request.getSession().setAttribute("buylist", buylist);
		System.err.println(buylist);
		

		// ���ݹ����Ĳ���������asale��������

		// ��ȡ�÷�������Ʒ����
		/*
		 * ArrayList goodslist = (ArrayList)session.getAttribute("goodslist");
		 */
		// ��ȡ�û��������Ʒid
		/*
		 * int id = mytools.strtoint(request.getParameter("goodsid")); goodsBean
		 * single = (goodsBean)goodslist.get(id);
		 */

		// ��ȡ����Ʒ��Ϣ
		
		// ת����ʾ������Ʒ�б�ҳ�棬�Ա��û���������
		// response.sendRedirect("shoppingIndex.jsp");
		String forward = "";
		forward = "/showCart.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(forward);
		rd.forward(request, response);
	}
	

public void showcart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ClassNotFoundException, SQLException {

	response.setContentType("text/html,utf-8");
    request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		
	HttpSession session = request.getSession();
	goodsBean goodsinfo = new goodsBean();
   
	//��ô����session����buylist��Ĺ��ﳵ��Ʒ����		
		shopcar mycart = new shopcar();
		ArrayList<Object> buylist = (ArrayList<Object>) session.getAttribute("buylist");
		
		//������ﳵΪ�գ����½�һ��ArrayList����
		if(buylist == null){
			buylist = new ArrayList<Object>();
		}
	
	//����õĹ��ﳵ��Ʒ�б����mycart��JavaBeanʵ��������
	//����mycart������Ʒ����ӡ��޸Ĺ�������ɾ�������ﳵ����ղ���
	mycart.setBuylist(buylist);      
        
    //��buylistд��session������buylist
    // session.setAttribute("buylist", buylist);
    request.getSession().setAttribute("buylist", buylist);
    System.err.println(buylist);
       
    //��ô��ݹ����Ĳ�������action
    String action = request.getParameter("action");
 	String method = request.getParameter("method");
 	if(action == null){
 	    action = "";
 	}   		   
 	//���ݹ����Ĳ���������remove������ɾ����Ʒ
 	if(action.equals("remove")){     	            
 	   //��ȡ����Ʒ��name
 	   String name = goodsinfo.getGoodsName();
 	          
 	   //�ӹ��ﳵ��ɾ����Ʒ
 	   mycart.removeitem(name);
 	
 	   //��buylistд��session������buylist
 	   session.setAttribute("buylist",buylist);
 	            
 	//ת����ʾ���ﳵ��ҳ�棬�Ա��û��鿴���ﳵ���ݣ������������ﳵ��Ʒ
	    /*response.sendRedirect("showCart.jsp");*/
	   String forward = "";
      forward = "/showCart.jsp";
      RequestDispatcher rd = request.getRequestDispatcher(forward);
  	   rd.forward(request,response);
  }
 	        
  //ת�ݹ����Ĳ���������clear��������չ��ﳵ
  else if(method.equals("clear")){     	            
 	    //��չ��ﳵ
 	    mycart.clearcart();
 	            
 	    //��buylistд��session������buylist
 	    session.setAttribute("buylist",buylist);
 	            
 	    //ת����ʾ���ﳵ��ҳ�棬�Ա��û��鿴���ﳵ���ݣ������������ﳵ��Ʒ
 	    /*response.sendRedirect("showCart.jsp");*/
 	   String forward = "";
       forward = "/showCart.jsp";
       RequestDispatcher rd = request.getRequestDispatcher(forward);
   	   rd.forward(request,response);
   }
   
  else if(method.equals("order")){
	  //ת����ʾ������Ʒ�б�ҳ�棬�Ա��û���������
      String forward = "";
      forward = "/fillOrderform.jsp";
      RequestDispatcher rd = request.getRequestDispatcher(forward);
  	  rd.forward(request,response);
  }
 	        
   //�����������������ת����ʾ��Ʒ�б�ҳ��
   else{
 	   /*response.sendRedirect("shoppingIndex.jsp");*/
	   String forward = "";
       forward = "/shoppingIndex.jsp";
       RequestDispatcher rd = request.getRequestDispatcher(forward);
   	   rd.forward(request,response);
   }
  
}
}

