package bean;

public class mytools {

	public static int strtoint(String str) {
	    if(str==null || str.equals("")) {
	        str="0";	
	    }
        int i=0;
    
        try {
	        i=Integer.parseInt(str);
        }catch(Exception e) {
	        i=0;
	        e.printStackTrace();
        }
        return i;
    }

    public static String tochinese(String str) {
	    if(str==null) {
		    str="";
	    }
	    try {
		    str=new String(str.getBytes("ISO-8859-1"),"UTF-8");	
    	}catch(Exception e) {
	    	str="";
		    e.printStackTrace();
	    }
	    return str;
    }
}
