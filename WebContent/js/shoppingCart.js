/**
 * 购物车的显示与隐藏
 */
	
	function showCart(){
		var shopCar=document.getElementsByClassName("dropdown")[0];
		var rightNav=document.getElementsByClassName("rightNav")[0];
		switch(shopCar.style.display){
			case "":
			case"none":
			shopCar.style.display="block";
			rightNav.style.position="relative";
			//下移热门推荐模块
			shopCar.innerHTML=loadCar();
			break;
			case"block":
			shopCar.style.display="none";
			rightNav.style.position="static";
			break;
		}
	}
	//定义一个商品对象
		var goods={goodsSrc: null,gooodsNum:1};
		//设置拖拽效果
		function drag(e){
			e=e||event;
			e.dataTransfer.setData.effectAllowed="copy";
			//e.dataTransfer.setData(text",e.target.src);//IE兼容写法
			//e.dataTransfer.setData(text/plain",e.target.src);

		}
		//拖拽释放效果
		function drop(e){
			allowDrop(e);
			//从拖拽时间中获取数据
			var data =e.dataTransfer.getData("text");

			if(e.target.id=="dropdown"|| e.target.parentNode.id=="dropdown"
				|| e.target.parentNode.parentNode.id=="dropdown"
				|| e.target.parentNode.parentNode.parentNode.id=="dropdown"
				||e.target.parentNode.parentNode.parentNode.parentNode.id=="dropdown"){
				//从localStorage中尝试根据src获取数据
				var newGoods=readFormStorage(data);
				//如果localStorage中存在当前商品，则在此基础上加1
				if(newGoods!=null){
					for(var i=0;i<localStorge.length;i++){
						if(data==newGoods.goodsSrc){
							newGoods.gooodsNum+=1;
							goods=newGoods;
							break;
						}
					}
				}
				else{
					//若localStorage中没有该商品，则创建一个新对象，且商品数量为1
					goods.goodsSrc=data;
					goods.gooodsNum=1;
				}
				//把处理后的商品信息存到localStorage
				localStorge.setItem(data,JSON.stringify(goods));
				//重新加载并刷新页面中的购物车
				document.getElementsByClassName("dropdown")[0].innerHTML=loadCar();
			}
		}
		//阻止被拖拽的图片在新窗口打开
		function alloDrop(e){
			e.preventDefault();//通知浏览器不在执行时间相关的默认动作
			e.stopPropagation;//阻止事件冒泡

		}
		//根据key读取localStorage的值并封装成JSON
		function readFromStorage(key){
			var jsonStr=localStorge.getItem(key);
			var newGoods=JSON.parse(jsonStr);
			return newGoods;
		}
		//加载购物车
		function loadCar(){
			//localStorage不为空时，将购物车中的信息读取出来并显示到页面
			if(localStorge.length!=0){
				var ulObject=document.createElement("ul");
				ulObject.className="shop_pic";
				for(var i=0;i<localStorge.length;i++){
					var key=localStorge.key(i);
					if(goods!=null){
						var liObject=document.createElement("li");
						liObject.innerHTML='<a href="#"><img src="'+goods.goodsSrc
						+'"width="80px" height="96px"/></a><p>'+goods.gooodsNum
						+'件<a href="javascript:void(0)" onclick="delStorage(this)"><span class="orange floatr">删除</span></a></p>';
						
					}
					ulObject.appendChild(liObject);
				}
				return ulObject.outerHTML;
			}
			return "购物车还是空的，赶快加点东西吧~";
		}
		//从localStorage删除某个元素
		function delStorage(element){
			//
			var targetSrc=element.parentNode.parentNode.childNodes[0].childNodes[0].src;
			//根据src属性读取localStorage中的商品
			var delGoods=readFromStorage(targetSrc);
			delGoods.gooodsNum-=1;
			//商品数量==0，删除该商品
			if(delGoods.gooodsNum==0){
				localStorge.removeItem(targetSrc);
			}
			else{
				//若大于0则将修改后的信息保存到localstorage
				localStorge.setItem(targetSrc,JSON.stringify(delGoods));
			}
			//删除成功后，重新加载并更新页面中的购物车
			document.getElementsByClassName("dropdown")[0].innerHTML=loadCar();
		}
		//窗口加载时，为允许拖拽的图片添加draggable属性和ondragstart事件
		window.onLoad=function(){
			var pic_list=document.getElementsByClassName("pic_list")[0];
			var pic_list_div=pic_list.getElementsByTagName("div");
			for(var i=0;i<pic_list_div.length;i++){
				var image=pic_list_div[i].getElementsByTagName("img")[0];
				image.setAttribute("draggable",true);
				image.ondragstart=drag;
			}
		}
