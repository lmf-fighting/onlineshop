/**
 * 图片轮播效果
 * 用于识别当前轮播到第几幅图片
 */
var sign = 2;
//显示轮播图片
function showPic(index){
	//轮播效果中，当前显示图片
	var focusImg = document.getElementById("focusImg");
	//图片路径
	var imgsrc = "photo/index/pic";
	imgSrc = imgSrc + index + ".jpg";
	//更换轮播图片
	focusImg.src = imgSrc;
	//获取原点列表
	var lis = document.getElementsByClassName("focusBox")[0].getElementsByTagName("li");
	//移除所有的轮播按钮的css样式
	for(var i=0;i<lis.length;i++){
		lis[i].className = "";
	}
	//设置轮播图片对应的轮播按钮样式
	lis[index-1].className = "cur";
}

//对轮播图片进行计算处理
function setCurrentPic(){
	showPic(sign);
	sign++;
	if(sign==4){
		sign = 1;
	}
}

//窗体加载完时指定显示的图片
window.onload = function(){
	showPic(1);
}

//设置定时器
window.setInterval("setCurrentPic()", 1000);