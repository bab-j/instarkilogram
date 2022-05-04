package com.sns.user.db;

import org.apache.ibatis.session.SqlSession;

import com.sns.mybatis.DBService;

public class userSearchDAO {

	public String searchid(String uid) {
		String result=null;
		SqlSession ss = DBService.getFactory().openSession();
		String search1 =ss.selectOne("user.search",uid);
		ss.close();
		
		return result;
	}
}
