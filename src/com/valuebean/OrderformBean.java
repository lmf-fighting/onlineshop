package com.valuebean;

import java.util.List;

public class OrderformBean {
	private int 	orderformNumber;				//�������
	private int 	orderformWhoid;					//���������û���ID
	private String 	orderformGetter;				//�ջ���
	private String 	orderformAddress;				//�ջ��˵�ַ
	private String 	orderformPostalcode;			//�ջ�����������
	private String 	orderformLinkphone;				//�ջ�����ϵ�绰
	private String	orderformShipment;				//�ͻ���ʽ
	private String 	orderformShipmenttime;			//�ͻ�ʱ�䣮ֻ�е��ͻ���ʽΪ1ʱ����ͨ����ͻ����ţ������ֶβ���Ч
	private String 	orderformPayment;				//����֧����ʽ
	private String 	orderformNetworkpayment;		//����֧����ʽ��ֻ�е�����֧����ʽΪ��ʱ������֧���������ֶβ���Ч
	private float 	orderformTotalprices;			//�����۸�
	private String 	orderformTime;					//�¶���ʱ��
	private String 	orderformStatus;				//����״̬
	private List 	orderformBuyGoods;				//�洢��������������Ʒ
	
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
