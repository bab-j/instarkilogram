package com.sns.feed.db;

import org.apache.ibatis.session.SqlSession;

import com.sns.mybatis.DBService;

public class FeedDAO {

	public static void insert(FeedVO fvo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.insert("post.insertPost", fvo);
		ss.close();
	}
}







