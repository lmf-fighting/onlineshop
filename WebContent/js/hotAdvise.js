/**
 *所有的推荐商品数据 
 */
var JSONData = {
		name:"热门推荐",
		srcPath:"photo/shopshow/",
		data:[{href:"#",src:" ",price:56.00},
			  {href:"#",src:" ",price:70.00},
			  {href:"#",src:" ",price:95.00},
			  {href:"#",src:" ",price:69.00},
			  {href:"#",src:" ",price:79.00},
			  {href:"#",src:" ",price:78.00},
			  {href:"#",src:" ",price:109.00},
			  {href:"#",src:" ",price:190.00},
			  {href:"#",src:" ",price:98.00},
			  {href:"#",src:" ",price:99.00},
			  {href:"#",src:" ",price:256.00},
			  {href:"#",src:" ",price:306.00},
			  {href:"#",src:" ",price:156.00},
			  {href:"#",src:" ",price:79.00}]
};

//指定窗口加载完毕时调用的函数
window.onload = showHotAdvise;

//设置定时器，定时更新热门推荐信息
window.setInterval("showHotAdvise()", 2000);

//显示热门推荐信息
function showHotAdvise(){
	var adviseContent = '<h1 class="notice_title">'
		+ JSONData.name + '</h1><ul class="pic_list3">';
	var turnShow = getRandomNum(9,0,14);
	for(var i=0;i<turnShow.length;i++){
		var index = turnShow[i];
		adviseContent = adviseContent + '<li><a href="' + JSONData.data[index].href
		    + '"><img src="' + JSNOData.srcPath + JSONData.data[index].src
		    + '" width="80" height="80"/></a><p class="price2">￥'
		    +JSONData.data[index].price + '元</p></li>';
	}
	adviseContent = adviseContent + '</ul>';
	document.getElementsByClassName("right_nav")[0].innerHTML = adviseContent;	
}

//返回num个不重复的随机数，范围在minNum~maxNum之间
function getRandomNum(num,minNum,maxNum){
	var array = new Array();
	for(var i=0;i<num;i++){
		do{
			var randomNum = Math.fround(Math.random()*maxNum+minNum);
			if(!checkNum(array,randomNum)){
				array.push(randomNum);
				break;
			}
		}while(true);
	}
	return array;
}

//数组array中包含num时返回true，否则返回false
function checkNum(array,num){
	for(var i=0;i<array.length;i++){
		if(array[i] == num){
			return true;
		}
	}
	return false;
}









