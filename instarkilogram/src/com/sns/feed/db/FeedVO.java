package com.sns.feed.db;

public class FeedVO {	
	private int fIdx;
	private String regdate;
	private String content;
	private int uIdx;
	private int uLike;
	private String fPic;
	
	
	public int getfIdx() {
		return fIdx;
	}
	public void setfIdx(int fIdx) {
		this.fIdx = fIdx;
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
	public int getuIdx() {
		return uIdx;
	}
	public void setuIdx(int uIdx) {
		this.uIdx = uIdx;
	}
	public int getuLike() {
		return uLike;
	}
	public void setuLike(int uLike) {
		this.uLike = uLike;
	}
	public String getfPic() {
		return fPic;
	}
	public void setfPic(String fPic) {
		this.fPic = fPic;
	}
	@Override
	public String toString() {
		return "FeedVO [fIdx=" + fIdx + ", regdate=" + regdate + ", content=" + content + ", uIdx=" + uIdx + ", uLike="
				+ uLike + ", fPic=" + fPic + "]";
	}
	
	
	
	
}
