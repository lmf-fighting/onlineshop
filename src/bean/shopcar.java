package bean;

import java.util.List;

import javax.swing.JOptionPane;

public class shopcar {
	private List<Object> buylist;

	public List<Object> getBuylist() {
		return buylist;
	}
	
	public void setBuylist(List<Object> buylist) {
		this.buylist = buylist;
	}
	
	//向购物车添加商品
	public void additem(goodsBean single,int buynum,String size,String color) {
		if(single!=null){//购买了商品
			//如果购物车为空，则直接将该商品放入购物车
			if(buylist.size()==0){
				//创建临时对象temp存放该商品的信息
				goodsBean temp = new goodsBean();
				temp.setGoodsId(single.getGoodsId());
				temp.setGoodsPic(single.getGoodsPic());
				temp.setGoodsName(single.getGoodsName());
				temp.setGoodsPrice(single.getGoodsPrice());
				temp.setGoodsNum(buynum);
				temp.setGoodsSize(size);
				temp.setGoodsColor(color);
				//将该商品加入购物车
				buylist.add(temp);
			}
			//如果购物车不为空
			else{
				int i=0;
				//查找购物车里是否有当前要添加的商品
				for(;i<buylist.size();i++){
					goodsBean temp=(goodsBean)buylist.get(i);
					//如果购物车已有此种商品，则修改它的库存量和购买量即可
					if(temp.getGoodsName().equals(single.getGoodsName())){
						//JOptionPane.showMessageDialog(null, "要添加的商品名："+single.getName());
						temp.setGoodsNum(temp.getGoodsNum()+buynum);
						//JOptionPane.showMessageDialog(null, "shopcar.java：购物车不空，已有商品名·："+single.getName());
						break;
					}
				}
				
				//购物车里没有当前要添加的商品，则将该商品添加进购物车，以下代码和购物车为空时添加商品的代码相同
				if(i>=buylist.size()){
					goodsBean temp=new goodsBean();
					temp.setGoodsId(single.getGoodsId());
					temp.setGoodsName(single.getGoodsName());
					temp.setGoodsPic(single.getGoodsPic());					
					temp.setGoodsPrice(single.getGoodsPrice());
					temp.setGoodsNum(single.getGoodsNum());
					temp.setGoodsSize(single.getGoodsSize());
					temp.setGoodsColor(single.getGoodsColor());
					//将该商品加入购物车
					buylist.add(temp);
				}
			}
		}

	}
	
	//修改商品数量
	public void changebuynum(int id,int buynum){
		int i=0;
		//在购物车里查找该商品
		for(;i<buylist.size();i++){
			goodsBean temp=(goodsBean)buylist.get(i);
			//若购物车里已有此种商品，则修改其购买量
			if(temp.getGoodsId()==id){
				temp.setGoodsNum(buynum);
				break;
			}
		}
	}
	
	//删除商品
	public void removeitem(String name){
		//
		for(int i=0;i<buylist.size();i++){
			goodsBean temp=(goodsBean)buylist.get(i);
			//
			if(temp.getGoodsName().equals(mytools.tochinese(name))){
				int ans=JOptionPane.showConfirmDialog(null,"您确定要·删除该商品吗？","删除提示",JOptionPane.YES_NO_OPTION);
				if(ans==JOptionPane.YES_NO_OPTION){
					buylist.remove(i);
				}
			}
		}
	}
	//清空购物车
	public void clearcart(){
		buylist.clear();
	}

}
