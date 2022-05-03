package com.sns.feed.db;

import org.apache.ibatis.session.SqlSession;

import com.sns.mybatis.DBService;

public class FeedDAO {

	// 게시물 등록
	public static int insert(FeedVO fvo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("post.insert", fvo);
		ss.close();
		return result;
	}
}







