package com.toolsbean;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class StringHandler {
	public static String delBlank(String str){
		if(str!=null)
			return str.replace(" ","");
		return null;
	}
	public static Integer strToint(String str){
		if(str!=null&&!str.equals("")){
			try{
				return Integer.parseInt(str);
			}catch(NumberFormatException e){
				e.printStackTrace();
				return null;
			}
		}
		return null;
	}
	public static String timeTostr(Date date){
		String strDate="";
		if(date!=null){
			SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			strDate=format.format(date);		
		}
		return strDate;
	}
	public static String getSerial(Date date){
		SimpleDateFormat fm=new SimpleDateFormat("MMddyyyyHHmmssSS");
		String serials=fm.format(date);
		return serials;
	}
	public static int[] changeToIntArray(String[] strs){
		int[] nums=null;
		if(strs!=null){
			nums=new int[strs.length];
			for(int i=0;i<strs.length;i++)
				nums[i]=Integer.parseInt(strs[i]);
		}
		return nums;
	}
	public static String cookieEnCode(String str){
		String change="";
		if(str!=null){
			try {
				change=URLEncoder.encode(str,"UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		return change;
	}
	public static String cookieDecCode(String str){
		String change="";
		if(str!=null){
			try {
				change=URLDecoder.decode(str,"UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		return change;
	}
	public static List StringToList(String str){
		String[] arraystrs=null;
		List liststrs=null;
		       
		if(str!=null&&!str.equals("")){
			liststrs=new ArrayList();
			arraystrs=str.split("\r\n");
			for(int i=0;i<arraystrs.length;i++){
				if(arraystrs[i]!=null&&!arraystrs[i].equals(""))
					liststrs.add(arraystrs[i]);
			}
		}
		return liststrs;
	}
	public static String ArrayToString(String[] array){
		String str="";
		if(array!=null&&array.length!=0){
			for(int i=0;i<array.length;i++)
				str+=array[i]+",";
		}
		str=str.substring(0,str.lastIndexOf(","));
		return str;
	}
}
