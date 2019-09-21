
/**
 * 商品信息选择检查
 */
var radio_tag1;  //尺码radio选择
var radio_tag2;  //颜色radio选择
var value1;  //尺码值
var value2;  //颜色值
var value3;  //数量值
var form;  //整个表单

/*表单调用主方法*/
function checkForm(){
	form=document.getElementById("form_check");
	textValue();
	
	//clickCheck();
	if(clickCheck()!=false&&checkshopcar()!=false){
		console.log(getColorValue());
		form.submit();
	}
	
	
}

/**
 * 获取input = radio 单选框中选中的值
 * @param size color radio组中input的name属性值
 * return 返回被选中radio的值
 */
function getSizeValue(){
   radio_tag1 = document.getElementsByName("size");
    for(var i=0;i<4;i++){     	
        if(radio_tag1[i].checked){         	
            value1 = radio_tag1[i].value; 
      /*      document.getElementById("sizeResult").value = value1;*/
            return value1;            
        }       
    } 
}

function getColorValue(){
   radio_tag2 = document.getElementsByName("color");
    for(var i=0;i<radio_tag2.length;i++){ 
        if(radio_tag2[i].checked){ 
            value2 = radio_tag2[i].value;              
      /*      document.getElementById("colorResult").value = value2;*/
            return value2;
        } 
    }
}

/*获取商品数量*/
function textValue(){
	value3 = document.getElementById("number21").value;
/*	document.getElementById("numResult").value = value3;*/
	return value3;	
}

/*加入购物车之前检查是否漏选*/
function clickCheck(){
	if(getSizeValue() != null && getColorValue() != null && value3 != null){
		//alert("加入购物车成功！");
		return true;
	}
	else if(getSizeValue() == null){
		alert("请选择尺码！");
		return false;
	}
	else if(getColorValue() == null){
		alert("请选择颜色！");
		return false;
	}	
}
//检测是否登陆
function checkshopcar() {
	var name=form.userName.value;
	//alert(name);
	if(form.userName.value!=" "){
		alert("加入购物车成功！");
		return true;
	}
	else{
		alert("请登录...");
		window.location.href="./login.jsp";
		return false;
	}
}

