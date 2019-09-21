package com.toolsbean;

public class PageBar {
	private int allR;				//所有记录数
	private int perR;				//每页显示记录数
	private int perP;				//每页显示页码数
	private int allP;				//共有页数
	private int allG;				//共有组数	
	private int currentP=1;			//当前页码
	private int currentG=1;			//当前组号	
	private String pageLink;		//分页导航栏信息
	
	public PageBar(){
		allR=0;				
		perR=12;				
		perP=3;				
		currentP=1;
		currentG=1;
		pageLink="";
	}
	
	/** ①-设置总记录数 */
	public void setAllR(int allR){
		this.allR=allR;
	}
	/** ②-设置每页显示记录数 */
	public void setPerR(int perR){
		this.perR=perR;
	}	
	/** ②-设置每页显示页码数 */
	public void setPerP(int perP){
		this.perP=perP;
	}
	/** ③-生成分页栏 */
	public void setPageBar(String strcurrentP,String strcurrentG,String goWhich){
		setAllP();								//设置总记录数
		setAllG();								//设置总组数
		setCurrentP(strcurrentP);				//设置当前页
		setCurerntG(strcurrentG);				//设置当前组
		setCurrent();							//计算最终的当前页和当前组
		setPageLink(goWhich);					//生成分页导航栏
	}
	/** ①-计算总页数 */
	private void setAllP(){
		allP=(allR%perR==0)?(allR/perR):(allR/perR+1);
	}
	/** ②-计算总组数 */
	private void setAllG(){
		allG=(allP%perP==0)?(allP/perP):(allP/perP+1);
	}
	/** ③-设置当前页码 */
	private void setCurrentP(String currentP) {		
		try{
			this.currentP=Integer.parseInt(currentP);
		}catch(NumberFormatException e){
			this.currentP=-1;
		}	
	}
	/** ③-设置当前组号 */
	private void setCurerntG(String currentG){
		try{
			this.currentG=Integer.parseInt(currentG);
		}catch(Exception e){
			this.currentG=-1;
		}
	}
	/** ④-计算最终的当前页和当前组 */
	private void setCurrent(){
		if(currentP==-1&&currentG==-1){
			currentP=1;
			currentG=1;
		}
		else if(currentP!=-1&&currentG!=-1){
			currentP=1;
			currentG=1;
		}		
		else if(currentP!=-1){
			if(currentP>allP)
				currentP=allP;
			currentG=currentP/perP+1;
		}
		else if(currentG!=-1){
			if(currentG>allG)
				currentG=allG;
			currentP=(currentG-1)*perP+1;
		}
	}
    /** ⑤-设置分页导航栏信息 */
	private void setPageLink(String goWhich){
		pageLink="<table width='100%' border='0' cellpadding='2' cellspacing='0'>";
		pageLink+="<tr class='pager'>";
		pageLink+="<td>";
		pageLink+="共("+allR+")记录&nbsp;&nbsp;&nbsp;共("+allP+")页&nbsp;&nbsp;&nbsp;";
		pageLink+="</td>";
		
		if(goWhich==null)goWhich="";
		if(goWhich.indexOf("?")>=0)
			goWhich+="&";
		else
			goWhich+="?";		
		
		pageLink+="<td align='right'>[";

		if(currentG>1)
			pageLink+="<a href='"+goWhich+"currentG="+(currentG-1)+"' class='pagertext'>上"+perP+"页</a> ";
		if(currentP>1){
			pageLink+="<a href='"+goWhich+"currentP=1'>首页</a> ";
			pageLink+="<a href='"+goWhich+"currentP="+(currentP-1)+"'>上一页</a> | ";
		}
		
		if(currentP%perP==0)
			pageLink+="<a class='pagerCurrentP'>"+currentP+"</a>&nbsp;&nbsp;";
		
		int temp=currentG;
		int start=(currentG-1)*perP+1;
		for(int i=0;((i<perP)&&((start+i)<=allP));i++){
			if((start+i)%perP==0)
				temp++;
			else
				temp=currentG;
			if((start+i)==currentP)
				pageLink+="<a class='pagerCurrentP'>"+(start+i)+"</a>&nbsp;&nbsp;";
			else
				pageLink+="<a href='"+goWhich+"currentP="+(start+i)+"' class='pagerline'>"+(start+i)+"</a>&nbsp;&nbsp;";
		}		
		
		if(currentP<allP){
			pageLink+="| <a href='"+goWhich+"currentP="+(currentP+1)+"'>下一页</a>";
			pageLink+=" <a href='"+goWhich+"currentP="+allP+"#listtop'>尾页</a>";
		}		
		if(currentG<allG)
			pageLink+=" <a href='"+goWhich+"currentG="+(currentG+1)+"' class='pagertext'>下"+perP+"页</a>";
		
		pageLink+="]</td>";		
		pageLink+="</tr></table>";	
	}

	public int getAllR() {
		return allR;
	}
	public int getPerR() {
		return perR;
	}
	public int getPerP() {
		return perP;
	}
	public int getAllP() {
		return allP;
	}
	public int getAllG() {
		return allG;
	}
	public int getCurrentP() {
		return currentP;
	}
	public int getCurrentG() {
		return currentG;
	}
	public String getPageLink() {
		return pageLink;
	}	
}
