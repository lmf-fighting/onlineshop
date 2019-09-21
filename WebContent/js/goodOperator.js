//切换商品展示区的图像
function changeGoodsImage(thumb){
	//设置缩略图在商品展示区显示对应的大图
	var showGoodPicture=document.getElementById("showGoodPicture");
	showGoodPicture.src=thumb.src;
	//获取商品缩略图对应的li元素集合
	var goodsList=document.getElementById("goodsList");
	var items=goodsList.getElementByTagName("li");
	//遍历li集合
	for(var i=0;i<items.length;i++){
		var thumbImage=item[i].getElementByTagName("img");
		thumbImage[0].style.borderColor="";
	}
	//设置当前缩略图为选中状态
	thumb.style.borderColor="red";
}
//Tab标签的切换
function changeGoodsInfo(obj){
	var currentSelect=0;
	var goodsTabs=document.getElementById("goodsTabs");
	//获得商品标签
	var goodsTitles=goodsTabs.getElementsByTagName("li");
	for(var i=0;i<goodsTitles.length;i++){
		goodsTitles[i].className="";
		if(obj==goodsTitles[i]){
			currentSelect=i;
		}
	}
	
	//当前标签处于激活状态
	obj.className="tab_active";
	//设置标签对应的内容
	var middleDiv=document.getElementsByClassName("middle");
	var tabCotents=middleDiv[0].getElementsByTagName("article");
	for(var j=0;j<tabContents.length;j++){
		if(currentSelect==j){
			tabContents[j].className="tab_content"+(j);
		}else{
			tabContents[j].className="none tab_content"+(j);	
		}
		console.log(tabcontent[j].className);
	}
}

//放大镜效果
//获取元素纵坐标
function getTop(e){
	var offset=e.offsetTop;
	if(e.offsetParent!=null){
		offset+=getTop(e.offsetParent);
	}
	return offset;
}
//获取横坐标
function getLeft(e){
	var offset=e.offsetLeft;
	if(e.offsetParent!=null){
		offset+=getLeft(e.offsetParent);
	}
	return offset;
}
//图片放大效果
function zoomPicture(){
	var box=document.getElementById("box");
	var showGoodsPicture=document.getElementById("showGoodsPicture");
	var canvas=document.getElementById("canvas");
	var shade=document.getElementById("shade");
	if(showGoodsPicture==null){
		return false;
	}
	//绑定鼠标移出所触发的事件
	box.onmouseout=function(){
	shade.style.display="none";
	canvas.style.display="none";
	document.body.style.cursor="default";	
	};
	//绑定鼠标移动所触发的事件
	box.onmousemove=function(){
		//设定鼠标样式
		document.body.style.cursor="move";
		var box=document.getElementById("box");
		var shadeX,shadeY;
		//获取box对象的左侧到浏览器窗口的距离
		var boxX=getLeft(box);
		//获取box对象的顶部到浏览器窗口顶部的距离
      var boxY=getTop(box);
      //计算阴影区域的左上角的X坐标
      shadeX=ev.pageX-boxX-100;
    //计算阴影区域的左上角的Y坐标
      shadeY=ev.pageY-boxY-100;
      //防止阴影区域移到图片之外
      if(shadeX<0){
    	  shadeX=0;
      }
      else if(shadeX>200){
    	  shadeX=200;
      }
     if(shadeY<0){
   	  shadeY=0;
     }
     else if(shadeY>200){
   	  shadeY=200;
     }
      //使用canvas绘制遮罩区域，并放大
     var context=canvas.getContext("2d");
     shade.style.display="block";
     shade.style.left=shadeX+"px";
     shade.style.top=shadeY+"px";
     canvas.style.display="inlink";
     context.clearRect(0,0,400,400);
     var image=new Image();
     image.src=showGoodsPicture.src;
     context.drawImage(image,(shade.offsetLeft)*2,(shade.offsetTop)*2,
    	400,400,0,0,400,400);
	}
	
}



//在商品详情页面加载时进行事件绑定
window.onload=function(){
	var goodsList=document.getElementById("goodsList");
	var thumb_images=goodsList.getElementByTagName("li")[0]
	.getElementsByTagName("img");
	changeGoodsImage(thumb_images[0]);
    zoomPicture();
};
