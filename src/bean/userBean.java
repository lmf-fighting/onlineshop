package bean;

public class userBean {
	private String userName = "";
	private String email = "";
	private String userPwd = "";
	private String userRePwd = "";
	private String selectAddress = "";

	private String address = "";
	private String mobile = "";
	private String headPic = "";
	private String sex = "";
	private String realName = "";

	public String getSelectAddress() {
		return selectAddress;
	}

	public void setSelectAddress(String selectAddress) {
		this.selectAddress = selectAddress;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getHeadPic() {
		return headPic;
	}

	public void setHeadPic(String headPic) {
		this.headPic = headPic;
	}

	public String getUserRePwd() {
		return userRePwd;
	}

	public void setUserRePwd(String userRePwd) {
		this.userRePwd = userRePwd;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "userBean [userName=" + userName + ", email=" + email + ", userPwd=" + userPwd + ", userRePwd="
				+ userRePwd + ", selectAddress=" + selectAddress + ", address=" + address + ", mobile=" + mobile
				+ ", headPic=" + headPic + ", sex=" + sex + ", realName=" + realName + "]";
	}
}
