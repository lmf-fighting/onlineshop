package com.valuebean;

import java.util.List;

public class OrderformBean {
	private int 	orderformNumber;				//订单编号
	private int 	orderformWhoid;					//订单所属用户的ID
	private String 	orderformGetter;				//收货人
	private String 	orderformAddress;				//收货人地址
	private String 	orderformPostalcode;			//收货人邮政编码
	private String 	orderformLinkphone;				//收货人联系电话
	private String	orderformShipment;				//送货方式
	private String 	orderformShipmenttime;			//送货时间．只有当送货方式为1时（普通快递送货上门），该字段才有效
	private String 	orderformPayment;				//订单支付方式
	private String 	orderformNetworkpayment;		//网上支付方式．只有当订单支付方式为１时（网上支付），该字段才有效
	private float 	orderformTotalprices;			//订单价格
	private String 	orderformTime;					//下订单时间
	private String 	orderformStatus;				//订单状态
	private List 	orderformBuyGoods;				//存储订单所包含的商品
	
	public int getOrderformNumber() {
		return orderformNumber;
	}
	public void setOrderformNumber(int orderformNumber) {
		this.orderformNumber = orderformNumber;
	}
	public int getOrderformWhoid() {
		return orderformWhoid;
	}
	public void setOrderformWhoid(int orderformWhoid) {
		this.orderformWhoid = orderformWhoid;
	}
	public String getOrderformGetter() {
		return orderformGetter;
	}
	public void setOrderformGetter(String orderformGetter) {
		this.orderformGetter = orderformGetter;
	}
	public String getOrderformAddress() {
		return orderformAddress;
	}
	public void setOrderformAddress(String orderformAddress) {
		this.orderformAddress = orderformAddress;
	}
	public String getOrderformPostalcode() {
		return orderformPostalcode;
	}
	public void setOrderformPostalcode(String orderformPostalcode) {
		this.orderformPostalcode = orderformPostalcode;
	}
	public String getOrderformLinkphone() {
		return orderformLinkphone;
	}
	public void setOrderformLinkphone(String orderformLinkphone) {
		this.orderformLinkphone = orderformLinkphone;
	}
	public String getOrderformShipment() {
		return orderformShipment;
	}
	public void setOrderformShipment(String orderformShipment) {
		this.orderformShipment = orderformShipment;
	}	
	public String getOrderformShipmenttime() {
		return orderformShipmenttime;
	}
	public void setOrderformShipmenttime(String orderformShipmenttime) {
		this.orderformShipmenttime = orderformShipmenttime;
	}
	public String getOrderformPayment() {
		return orderformPayment;
	}
	public void setOrderformPayment(String orderformPayment) {
		this.orderformPayment = orderformPayment;
	}	
	public String getOrderformNetworkpayment() {
		return orderformNetworkpayment;
	}
	public void setOrderformNetworkpayment(String orderformNetworkpayment) {
		this.orderformNetworkpayment = orderformNetworkpayment;
	}
	public float getOrderformTotalprices() {
		return orderformTotalprices;
	}
	public void setOrderformTotalprices(float orderformTotalprices) {
		this.orderformTotalprices = orderformTotalprices;
	}
	public String getOrderformTime() {
		return orderformTime;
	}
	public void setOrderformTime(String orderformTime) {
		this.orderformTime = orderformTime;
	}
	public String getOrderformStatus() {
		return orderformStatus;
	}
	public void setOrderformStatus(String orderformStatus) {
		this.orderformStatus = orderformStatus;
	}
	public List getOrderformBuyGoods() {
		return orderformBuyGoods;
	}
	public void setOrderformBuyGoods(List orderformBuyGoods) {
		this.orderformBuyGoods = orderformBuyGoods;
	}	
}
