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
	
	//���ﳵ�����Ʒ
	public void additem(goodsBean single,int buynum,String size,String color) {
		if(single!=null){//��������Ʒ
			//������ﳵΪ�գ���ֱ�ӽ�����Ʒ���빺�ﳵ
			if(buylist.size()==0){
				//������ʱ����temp��Ÿ���Ʒ����Ϣ
				goodsBean temp = new goodsBean();
				temp.setGoodsId(single.getGoodsId());
				temp.setGoodsPic(single.getGoodsPic());
				temp.setGoodsName(single.getGoodsName());
				temp.setGoodsPrice(single.getGoodsPrice());
				temp.setGoodsNum(buynum);
				temp.setGoodsSize(size);
				temp.setGoodsColor(color);
				//������Ʒ���빺�ﳵ
				buylist.add(temp);
			}
			//������ﳵ��Ϊ��
			else{
				int i=0;
				//���ҹ��ﳵ���Ƿ��е�ǰҪ��ӵ���Ʒ
				for(;i<buylist.size();i++){
					goodsBean temp=(goodsBean)buylist.get(i);
					//������ﳵ���д�����Ʒ�����޸����Ŀ�����͹���������
					if(temp.getGoodsName().equals(single.getGoodsName())){
						//JOptionPane.showMessageDialog(null, "Ҫ��ӵ���Ʒ����"+single.getName());
						temp.setGoodsNum(temp.getGoodsNum()+buynum);
						//JOptionPane.showMessageDialog(null, "shopcar.java�����ﳵ���գ�������Ʒ������"+single.getName());
						break;
					}
				}
				
				//���ﳵ��û�е�ǰҪ��ӵ���Ʒ���򽫸���Ʒ��ӽ����ﳵ�����´���͹��ﳵΪ��ʱ�����Ʒ�Ĵ�����ͬ
				if(i>=buylist.size()){
					goodsBean temp=new goodsBean();
					temp.setGoodsId(single.getGoodsId());
					temp.setGoodsName(single.getGoodsName());
					temp.setGoodsPic(single.getGoodsPic());					
					temp.setGoodsPrice(single.getGoodsPrice());
					temp.setGoodsNum(single.getGoodsNum());
					temp.setGoodsSize(single.getGoodsSize());
					temp.setGoodsColor(single.getGoodsColor());
					//������Ʒ���빺�ﳵ
					buylist.add(temp);
				}
			}
		}

	}
	
	//�޸���Ʒ����
	public void changebuynum(int id,int buynum){
		int i=0;
		//�ڹ��ﳵ����Ҹ���Ʒ
		for(;i<buylist.size();i++){
			goodsBean temp=(goodsBean)buylist.get(i);
			//�����ﳵ�����д�����Ʒ�����޸��乺����
			if(temp.getGoodsId()==id){
				temp.setGoodsNum(buynum);
				break;
			}
		}
	}
	
	//ɾ����Ʒ
	public void removeitem(String name){
		//
		for(int i=0;i<buylist.size();i++){
			goodsBean temp=(goodsBean)buylist.get(i);
			//
			if(temp.getGoodsName().equals(mytools.tochinese(name))){
				int ans=JOptionPane.showConfirmDialog(null,"��ȷ��Ҫ��ɾ������Ʒ��","ɾ����ʾ",JOptionPane.YES_NO_OPTION);
				if(ans==JOptionPane.YES_NO_OPTION){
					buylist.remove(i);
				}
			}
		}
	}
	//��չ��ﳵ
	public void clearcart(){
		buylist.clear();
	}

}
