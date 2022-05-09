package com.sns.comment.db;

public class CommentVO {
	private int co_idx;
	private String u_id;
	private String regdate;
	private String comm;
	private int f_idx;
	
	
	

	public CommentVO() {
		super();
	}

	public CommentVO(int co_idx, String u_id, String regdate, String comm, int f_idx) {
		super();
		this.co_idx = co_idx;
		this.u_id = u_id;
		this.regdate = regdate;
		this.comm = comm;
		this.f_idx = f_idx;
	}

	public CommentVO(String u_id, String comm, int f_idx) {
		super();
		this.u_id = u_id;
		this.comm = comm;
		this.f_idx = f_idx;
	}

	@Override
	public String toString() {
		return "CommentVO [co_idx=" + co_idx + ", u_id=" + u_id + ", regdate=" + regdate + ", comm=" + comm + ", f_idx="
				+ f_idx + "]";
	}

	/**
	 * @return the co_idx
	 */
	public int getCo_idx() {
		return co_idx;
	}

	/**
	 * @param co_idx the co_idx to set
	 */
	public void setCo_idx(int co_idx) {
		this.co_idx = co_idx;
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
	 * @return the comm
	 */
	public String getComm() {
		return comm;
	}

	/**
	 * @param comm the comm to set
	 */
	public void setComm(String comm) {
		this.comm = comm;
	}

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
	
	
}
