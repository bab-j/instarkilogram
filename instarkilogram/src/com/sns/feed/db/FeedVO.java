package com.sns.feed.db;

public class FeedVO {	
	private int f_idx;
	private String regdate;
	private String content;
	private int u_idx;
	private int u_like;
	private String f_pic;
	
	public int getF_idx() {
		return f_idx;
	}
	public void setF_idx(int f_idx) {
		this.f_idx = f_idx;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getU_idx() {
		return u_idx;
	}
	public void setU_idx(int u_idx) {
		this.u_idx = u_idx;
	}
	public int getU_like() {
		return u_like;
	}
	public void setU_like(int u_like) {
		this.u_like = u_like;
	}
	public String getF_pic() {
		return f_pic;
	}
	public void setF_pic(String f_pic) {
		this.f_pic = f_pic;
	}

}
