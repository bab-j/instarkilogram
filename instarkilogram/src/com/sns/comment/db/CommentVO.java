package com.sns.comment.db;

public class CommentVO {
	private int co_idx;
	private String regdate;
	private String comm;
	private int f_idx;
	
	public int getCo_idx() {
		return co_idx;
	}
	public void setCo_idx(int co_idx) {
		this.co_idx = co_idx;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getComm() {
		return comm;
	}
	public void setComm(String comm) {
		this.comm = comm;
	}
	public int getF_idx() {
		return f_idx;
	}
	public void setF_idx(int f_idx) {
		this.f_idx = f_idx;
	}
	
}
