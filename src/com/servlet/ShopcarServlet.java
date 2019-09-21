package com.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.toolsbean.StringHandler;
import com.valuebean.OrderformBean;

public class ShopcarServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String servletpath = request.getServletPath();
		
		if ("/submitshopcar".equals(servletpath))
			submitDispatcher(request, response);
		else if ("/createorderform".equals(servletpath))
			createorderform(request, response);
	}

	
	private String seeshopcarcookie(HttpServletRequest request, HttpServletResponse response) {
		String webname = request.getContextPath();
		
		webname = webname.substring(1);

		Cookie[] coks = request.getCookies();
		String shopcarid = "";

		int i = 0;
		for (; i < coks.length; i++) {
			Cookie icok = coks[i];
			if (icok.getName().equals(webname + ".usershopcar")) {
				shopcarid = icok.getValue();
				break;
			}
		}
		return shopcarid;
	}


	protected void submitDispatcher(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String whichsubmit = request.getParameter("whichsubmit");
		if (whichsubmit == null)
			payforMoney(request, response);
		else
			updatebuyNum(request, response);
	}

	private void payforMoney(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (shopcar_validateBuyNum(request, response)) {
			String buygoodsids = StringHandler.ArrayToString(request.getParameterValues("buygoodsids"));
			String buygoodsnum = StringHandler.ArrayToString(request.getParameterValues("buygoodsnum"));

			request.setAttribute("buygoodsids", buygoodsids);
			request.setAttribute("buygoodsnum", buygoodsnum);
			RequestDispatcher rd = request.getRequestDispatcher("/fillOrderform.jsp");
			rd.forward(request, response);
		}
		
	}

	protected void updatebuyNum(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		shopcar_validateBuyNum(request, response);
		
	}

	private boolean shopcar_validateBuyNum(HttpServletRequest request, HttpServletResponse response) {
		boolean mark = true;
		String[] goodsStoreNums = request.getParameterValues("buygoodsstorenum");
		String[] buyNums = request.getParameterValues("buygoodsnum");
		String[] goodsIds = request.getParameterValues("buygoodsids");
		String shopcarid = seeshopcarcookie(request, response);

		if (goodsIds != null && goodsIds.length != 0 && shopcarid != null) {

			
			Object[] params = new Object[3];
			
			for (int i = 0; i < goodsIds.length; i++) {
				int int_buyNum = Integer.parseInt(buyNums[i]);
				int int_goodsStoreNums = Integer.parseInt(goodsStoreNums[i]);

				if (int_buyNum > int_goodsStoreNums) {
					mark = false;
					
				}
				
				else {
					params[0] = int_buyNum;
					params[1] = shopcarid;
					params[2] = goodsIds[i];
					
				}
			}
		
		} else
			mark = false;
		return mark;
	}

	
	private void createorderform(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html,utf-8");
		request.setCharacterEncoding("utf-8");
		System.err.println("1234");
		
		String getter = request.getParameter("getter");
		String address = request.getParameter("address");
		String postalcode = request.getParameter("postalcode");
		String telephone1 = request.getParameter("telephone1");
		String telephone2 = request.getParameter("telephone2");
		String linkphone = telephone1 + "," + telephone2;
		String shipment = request.getParameter("shipment");
		String shipmenttime = request.getParameter("shipmenttime");
		if (shipmenttime == null)
			shipmenttime = "-1";
		String payment = request.getParameter("payment");
		String networkpayment = request.getParameter("networkpayment");
		if (networkpayment == null)
			networkpayment = "-1";
		
		String time = StringHandler.timeTostr(new Date());
		String status = "1";
		

		/** 计算订单总价格：根据选择的＂送货方式＂加入运费 */
		float totalprices = 0;
		/*if (shipment.equals("1"))
			//totalprices = 20 + goodsprices;
		else if (shipment.equals("2"))
			//totalprices = 30 + goodsprices;
		else if (shipment.equals("3"))
			//totalprices = 40 + goodsprices;

		request.setAttribute("goodsprices", goodsprices);
		request.setAttribute("totalprices", totalprices);*/

	
		String forward = "";
		forward = "/showOrderform.jsp";
		
		OrderformBean orderform = new OrderformBean();

		//orderform.setOrderformWhoid(loginerid);
		orderform.setOrderformGetter(getter);
		orderform.setOrderformAddress(address);
		orderform.setOrderformPostalcode(postalcode);
		orderform.setOrderformLinkphone(linkphone);
		orderform.setOrderformShipment(shipment);
		orderform.setOrderformShipmenttime(shipmenttime);
		orderform.setOrderformPayment(payment);
		orderform.setOrderformNetworkpayment(networkpayment);
		orderform.setOrderformTotalprices(totalprices);
		orderform.setOrderformTime(time);
		orderform.setOrderformStatus(status);
		// orderform.setOrderformBuyGoods(buygoodslist);
		//request.setAttribute("orderform", orderform);
		request.getSession().setAttribute("orderform", orderform);

	

		 RequestDispatcher rd = request.getRequestDispatcher(forward);
		 rd.forward(request,response);
		
	}

	private void deleteshopcarcookie(HttpServletRequest request, HttpServletResponse response) {
		String webname = request.getContextPath();
		webname = webname.substring(1);
		Cookie shopcar = new Cookie(webname + ".usershopcar", null);
		shopcar.setPath("/");
		int maxage = 0;
		shopcar.setMaxAge(maxage);
		response.addCookie(shopcar);
	}
}