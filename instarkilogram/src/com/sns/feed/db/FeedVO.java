package com.sns.feed.db;

public class FeedVO {	
	private int f_idx;
	private String regdate;
	private String content;
	private String u_id;
	private String u_pic;
	private int f_like;
	private String f_pic;
	/**
	 * @return the f_idx
	 */
	public int getF_idx() {
		return f_idx;
	}
	/**
	 * @param f_idx the f_idx to set
	 */
	public void setF_idx(int f_idx) {
		this.f_idx = f_idx;
	}
	/**
	 * @return the regdate
	 */
	public String getRegdate() {
		return regdate;
	}
	/**
	 * @param regdate the regdate to set
	 */
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	/**
	 * @return the content
	 */
	public String getContent() {
		return content;
	}
	/**
	 * @param content the content to set
	 */
	public void setContent(String content) {
		this.content = content;
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
	 * @return the f_like
	 */
	public int getF_like() {
		return f_like;
	}
	/**
	 * @param f_like the f_like to set
	 */
	public void setF_like(int f_like) {
		this.f_like = f_like;
	}
	/**
	 * @return the f_pic
	 */
	public String getF_pic() {
		return f_pic;
	}
	/**
	 * @param f_pic the f_pic to set
	 */
	public void setF_pic(String f_pic) {
		this.f_pic = f_pic;
	}
	@Override
	public String toString() {
		return "FeedVO [f_idx=" + f_idx + ", regdate=" + regdate + ", content=" + content + ", u_id=" + u_id
				+ ", u_pic=" + u_pic + ", f_like=" + f_like + ", f_pic=" + f_pic + "]";
	}
	
	
	
	
	
}
