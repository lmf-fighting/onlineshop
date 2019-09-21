/**
 * 购物车操作
 */

        function decrease(id){
            var buynum=document.getElementById("buynum"+id).value;
            var delimit=document.getElementById("delimit").value;
            var price=parseFloat(document.getElementById("price").value);
            var total=parseFloat(document.getElementById("total").value);
            buynum--;
            if(buynum <= 0){
                buynum = 1;
            }
            if(buynum < delimit){
                alert("最少购买"+delimit+"件！");
                buynum = delimit;
               
            }
            var pay = (((price*buynum+0.05)*10))/10;
            total += pay;
            document.getElementById("buynum"+id).value=buynum;
            document.getElementById("total").value=total;
        }
        
        //增加购买量
        function increase(id){
            var buynum=document.getElementById("buynum"+id).value;
            var inlimit=document.getElementById("inlimit").value;
            var total=parseFloat(document.getElementById("total").value);
            var price=parseFloat(document.getElementById("price").value);
            
            buynum++;
            if(buynum <= 0){
                buynum = 1;
            }
            if(buynum > inlimit){
                alert("最多只能购买"+inlimit+"件！");
                buynum = inlimit;
            }
            var pay = (((price*buynum+0.05)*10))/10;
            total += pay;
            console.log(typeof price);
            console.log(typeof buynum);
            console.log(total);
            document.getElementById("buynum"+id).value=buynum;
            document.getElementById("total").value=total;
        }
        
        //判断购买量是否符合限制条件
        function itembuy(id){
            var buynum=parseInt(document.getElementById("buynum"+id).value);
            var inlimit=parseInt(document.getElementById("inlimit").value);
            if(buynum < 0){
                buynum = 0;
            }
            else if(buynum > inlimit){
                alert("最多只能购买"+inlimit+"件！");
                buynum = inlimit;
            }
            document.getElementById("buynum"+id).value=buynum;
            location.href="cartProcess.java?action=buy&id="+id+"&buynum="+buynum;
        }
        
        function CartSubmit(item){
        	var method = document.getElementById("method");
        	method.value = item;
        	showcart.submit();        	
        }