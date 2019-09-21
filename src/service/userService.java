package service;


import java.sql.ResultSet;
import java.sql.SQLException;

import bean.userBean;
import connect.ConnectDS;

public class userService {
	public boolean addUser(userBean user) throws ClassNotFoundException, SQLException {
		ConnectDS connect = new ConnectDS();
		
			
			String querySql = "select * from user_info where user_name='"+user.getUserName()+"'";
			
			ResultSet rs = connect.query(querySql);
			
			if(rs.next()){
				return false;
			}else{
				String sql  = "insert into user_info(user_name,email,user_pwd,user_repwd,address,select_address,mobile,head_pic,sex,real_name)"
						+ "value('"+user.getUserName()+"','"+user.getEmail()+"','"+user.getUserPwd()+"','"
						+user.getUserRePwd()+"','"+user.getAddress()+"','"+user.getSelectAddress()+"','"
						+user.getMobile()+"','"+user.getHeadPic()+"','"+user.getSex()+"','"
						+user.getRealName()+"')";
				System.out.println(sql);
				return connect.update(sql);
			
			}
			
		
	}
	public userBean loginUser(userBean user)  throws ClassNotFoundException, SQLException{
		ConnectDS connect = new ConnectDS();
		
		String querySql = "select * from user_info where (user_name='"+user.getUserName()+"') or (email='"+user.getUserName()+"') or (mobile= '"+user.getUserName()+"')";
		
		ResultSet rs = connect.query(querySql);
		
		if(rs.next()){
			String PWD=user.getUserPwd();
			
			if(PWD.equals(rs.getString("user_pwd"))){
				user.setUserName(rs.getString("user_name"));
				return user;
			}
			else{
				
				return null;
			}
		}
		else{
			System.out.println("<script language='javascript'>alert('您输入的用户名或密码错误!');window.location.href='login.jsp';</script>");	
			return null;
		}

		
		
		}
		
	
}
	
