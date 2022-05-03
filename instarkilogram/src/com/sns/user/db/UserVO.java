package com.sns.user.db;

public class UserVO {
	private int u_idx;
	private String u_id;
	private String pwd;
	private String phone;
	private String email;
	private String bio;
	private String name;
	private String u_pic;
	
	public int getU_idx() {
		return u_idx;
	}
	public void setU_idx(int u_idx) {
		this.u_idx = u_idx;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBio() {
		return bio;
	}
	public void setBio(String bio) {
		this.bio = bio;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getU_pic() {
		return u_pic;
	}
	public void setU_pic(String u_pic) {
		this.u_pic = u_pic;
	}
	@Override
	public String toString() {
		return "UserVO [u_idx=" + u_idx + ", u_id=" + u_id + ", pwd=" + pwd + ", phone=" + phone + ", email=" + email
				+ ", bio=" + bio + ", name=" + name + ", u_pic=" + u_pic + "]";
	}
	
	
}
