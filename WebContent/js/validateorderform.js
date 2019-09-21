function myorderformsubmit(){
	if(validateForm()){
		orderform.createorderformb.disabled=true;
		orderform.submit();
	}
	else
		return false;
}
function validateForm(){
	if(tirm(orderform.getter.value).length==0){
		gettermessage.innerHTML="●请输入收货人！";
		orderform.getter.focus();
		return false;
	}	
	if(tirm(orderform.address.value).length==0){
		addressmessage.innerHTML="●请输入收货人详细住址！";
		orderform.address.focus();
		return false;
	}
	var postalcodereg=/^[0-9]{6}$/;
	if(!postalcodereg.test(orderform.postalcode.value)){
		postalcodemessage.innerHTML="●邮政编码必须由6位数字组成！";
		orderform.postalcode.focus();
		return false;
	}
	if(tirm(orderform.telephone1.value).length!=0){
		var telephone1reg=/^[1]\d{10}$/;
		if(!telephone1reg.test(orderform.telephone1.value)){
			linkphonemessage.innerHTML="●手机号码必须有11位数字组成";
			orderform.telephone1.focus();
			return false;
		}		
	}
	else if(tirm(orderform.telephone2.value).length!=0){
		var telephone2reg=/^[0-9]{3,4}-[0-9]{7,8}$/;
		if(!telephone2reg.test(orderform.telephone2.value)){
			linkphonemessage.innerHTML="●输入的固定电话有误！";
			orderform.telephone2.focus();
			return false;
		}
	}
	else{
		linkphonemessage.innerHTML="●请输入联系电话！";
		orderform.telephone1.focus();
		return false;
	}
	if(!ischecked(document.all.shipment1)&&!ischecked(document.all.shipment2)&&!ischecked(document.all.shipment3)){
		shipmentmessage.innerHTML="●请选择一种送货方式！";
		return false;
	}	
	else if(ischecked(document.all.shipment1)){
		if(orderform.shipmenttime.value==null||orderform.shipmenttime.value==""){
			shipmentmessage.innerHTML="●请选择送货时间！";
			return false;
		}
	}
	if(!ischecked(document.all.payment1)&&!ischecked(document.all.payment2)&&!ischecked(document.all.payment3)&&!ischecked(document.all.payment4)){
		paymentmessage.innerHTML="●请选择一种支付方式！";
		return false;
	}	
	else if(ischecked(document.all.payment1)){
		if(!ischecked(document.all.networkpayment1)&&!ischecked(document.all.networkpayment2)&&!ischecked(document.all.networkpayment3)&&!ischecked(document.all.networkpayment4)){
			paymentmessage.innerHTML="●请选择一种网上的支付方式！";
			return false;
		}
	}
	return true;
}
function tirm(stxt){
	if(stxt!=null&&stxt!=""){
		var re=/(^\s*)|(\s*$)/;
		stxt=stxt.replace(re,"");
	}
	else
		stxt="";
	return stxt;
}
function ischecked(field){
	if(!field.checked)
		return false;
	else 
		return true;
}
function clickshipment1(){
	shipmenttimes.style.display="";
	document.all.payment2.disabled=false;
}
function clickshipment23(){
	shipmenttimes.style.display="none";
	document.all.payment2.disabled=true;
	document.all.payment2.checked=false
}
function clickpayment1(){
	networkpayments.style.display="";
}
function clickpayment234(){
	networkpayments.style.display="none";
}