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
	private String birth;
	@Override
	public String toString() {
		return "UserVO [u_idx=" + u_idx + ", u_id=" + u_id + ", pwd=" + pwd + ", phone=" + phone + ", email=" + email
				+ ", bio=" + bio + ", name=" + name + ", u_pic=" + u_pic + ", birth=" + birth + "]";
	}
	
	
	public UserVO() {
		super();
	}

	public UserVO(String u_id, String pwd, String phone, String email, String bio, String u_pic) {
		super();
		this.u_id = u_id;
		this.pwd = pwd;
		this.phone = phone;
		this.email = email;
		this.bio = bio;
		this.u_pic = u_pic;
	}


	/**
	 * @return the u_idx
	 */
	public int getU_idx() {
		return u_idx;
	}
	/**
	 * @param u_idx the u_idx to set
	 */
	public void setU_idx(int u_idx) {
		this.u_idx = u_idx;
	}
	/**
	 * @return the u_id
	 */
	public String getU_id() {
		return u_id;
	}
	/**
	 * @param u_id the u_id to set
	 */
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	/**
	 * @return the pwd
	 */
	public String getPwd() {
		return pwd;
	}
	/**
	 * @param pwd the pwd to set
	 */
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	/**
	 * @return the phone
	 */
	public String getPhone() {
		return phone;
	}
	/**
	 * @param phone the phone to set
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the bio
	 */
	public String getBio() {
		return bio;
	}
	/**
	 * @param bio the bio to set
	 */
	public void setBio(String bio) {
		this.bio = bio;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the u_pic
	 */
	public String getU_pic() {
		return u_pic;
	}
	/**
	 * @param u_pic the u_pic to set
	 */
	public void setU_pic(String u_pic) {
		this.u_pic = u_pic;
	}
	/**
	 * @return the birth
	 */
	public String getBirth() {
		return birth;
	}
	/**
	 * @param birth the birth to set
	 */
	public void setBirth(String birth) {
		this.birth = birth;
	}
	
	
	
}
