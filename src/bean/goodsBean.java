package bean;

public class goodsBean {
/*	private int[] goodsId = {1,2,3,4};     //商品id 
	//商品名
	private String[] goodsName = {"早秋卫衣2018新款女长袖韩版宽松<br/>学生ins超火的上衣外套潮秋冬季",
	                              "【良品铺子综合果仁750g装】<br/>每日坚果30包混合干果孕妇零食大礼包",
	                              "欧洲原装进口妮维雅氨基酸泡沫<br/>沐浴慕斯无皂基添加",
	                              "平凡的世界全三册路遥著图书籍全套完整版<br/>茅盾文学奖作品经典当代文学小说"};
	//商品图片路径
	private String[] goodsPic = {"photo/girl3.jpg",
			                     "photo/showdetail/snack7.jpg",
			                     "photo/showdetail/use6.jpg",
			                     "photo/showdetail/book1.jpg"};     
	//价格
	private double[] goodsPrice = {109.00,125.00,35.80, 27.50};     
	//数量
	private int[] goodsNum = {1,1,1,1};      
	//尺码
	private String[][] goodsSize = {{"M","L","XL","2XL"},
			                        {"","","",""},{"","","",""},{"50ml"}};   
	//衣服颜色
	private String[] goodsColor = {"绿色","杏色","黑色"};    
	*/
	private int goodsId;     //商品id 	
	private String goodsName;   //商品名	
	private String goodsPic;   //商品图片路径  	
	private double goodsPrice;   //价格  	
	private int goodsNum;   //数量   
	private String goodsSize; //尺码  
	private String goodsColor;//衣服颜色
	
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