package bean;

public class goodsBean {
/*	private int[] goodsId = {1,2,3,4};     //��Ʒid 
	//��Ʒ��
	private String[] goodsName = {"��������2018�¿�Ů���享�����<br/>ѧ��ins������������׳��ﶬ��",
	                              "����Ʒ�����ۺϹ���750gװ��<br/>ÿ�ռ��30����ϸɹ��и���ʳ�����",
	                              "ŷ��ԭװ������ά�Ű�������ĭ<br/>��ԡĽ˹��������",
	                              "ƽ��������ȫ����·ң��ͼ�鼮ȫ��������<br/>é����ѧ����Ʒ���䵱����ѧС˵"};
	//��ƷͼƬ·��
	private String[] goodsPic = {"photo/girl3.jpg",
			                     "photo/showdetail/snack7.jpg",
			                     "photo/showdetail/use6.jpg",
			                     "photo/showdetail/book1.jpg"};     
	//�۸�
	private double[] goodsPrice = {109.00,125.00,35.80, 27.50};     
	//����
	private int[] goodsNum = {1,1,1,1};      
	//����
	private String[][] goodsSize = {{"M","L","XL","2XL"},
			                        {"","","",""},{"","","",""},{"50ml"}};   
	//�·���ɫ
	private String[] goodsColor = {"��ɫ","��ɫ","��ɫ"};    
	*/
	private int goodsId;     //��Ʒid 	
	private String goodsName;   //��Ʒ��	
	private String goodsPic;   //��ƷͼƬ·��  	
	private double goodsPrice;   //�۸�  	
	private int goodsNum;   //����   
	private String goodsSize; //����  
	private String goodsColor;//�·���ɫ
	
	public goodsBean() {
        super();
        // TODO Auto-generated constructor stub
    }
/*    public goodsBean(int goodsId, String goodsName, String goodsPic, double goodsPrice, int goodsNum,String goodsSize,String goodsColor) { 
		 super(); 
		 this.goodsId = goodsId; 
		 this.goodsPic = goodsPic;
		 this.goodsName = goodsName; 
		 this.goodsPrice = goodsPrice;
		 this.goodsNum = goodsNum; 
		 this.goodsSize = goodsSize;
		 this.goodsColor = goodsColor;
    }*/

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getGoodsPic() {
		return goodsPic;
	}

	public void setGoodsPic(String goodsPic) {
		this.goodsPic = goodsPic;
	}

	public double getGoodsPrice() {
		return goodsPrice;
	}

	public void setGoodsPrice(double goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	public int getGoodsNum() {
		return goodsNum;
	}

	public void setGoodsNum(int goodsNum) {
		this.goodsNum = goodsNum;
	}

	public String getGoodsSize() {
		return goodsSize;
	}

	public void setGoodsSize(String goodsSize) {
		this.goodsSize = goodsSize;
	}

	public String getGoodsColor() {
		return goodsColor;
	}

	public void setGoodsColor(String goodsColor) {
		this.goodsColor = goodsColor;
	}



}