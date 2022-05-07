package com.sns.follow;

public class FollowVO {
	int fw_idx;
	String to_id;
	String from_id;
	/**
	 * @return the fw_idx
	 */
	public int getFw_idx() {
		return fw_idx;
	}
	/**
	 * @param fw_idx the fw_idx to set
	 */
	public void setFw_idx(int fw_idx) {
		this.fw_idx = fw_idx;
	}
	/**
	 * @return the to_id
	 */
	public String getTo_id() {
		return to_id;
	}
	/**
	 * @param to_id the to_id to set
	 */
	public void setTo_id(String to_id) {
		this.to_id = to_id;
	}
	/**
	 * @return the from_id
	 */
	public String getFrom_id() {
		return from_id;
	}
	/**
	 * @param from_id the from_id to set
	 */
	public void setFrom_id(String from_id) {
		this.from_id = from_id;
	}
	@Override
	public String toString() {
		return "FollowVO [fw_idx=" + fw_idx + ", to_id=" + to_id + ", from_id=" + from_id + "]";
	}
	
	
}
