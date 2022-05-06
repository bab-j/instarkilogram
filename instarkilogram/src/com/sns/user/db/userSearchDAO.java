package com.sns.user.db;

import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import org.apache.ibatis.session.SqlSession;

import com.sns.mybatis.DBService;
import com.sun.org.apache.xpath.internal.SourceTree;

public class userSearchDAO {

	public static List<String> searchid(String id) {
		
		SqlSession ss = DBService.getFactory().openSession();
		List<String> list =ss.selectList("usersearch.select_id_bio",id);
		System.out.println(list);
		ss.close();
		System.out.println("dao.searchid 실행");
		
		return list;
	}
}
