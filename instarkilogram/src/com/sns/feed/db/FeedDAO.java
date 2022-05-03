package com.sns.feed.db;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.sns.mybatis.DBService;
import com.sns.user.db.UserVO;

public class FeedDAO {

	// 게시물 등록
	public static int insert(FeedVO fvo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("post.insert", fvo);
		ss.close();
		return result;
	}
	
	//user로 옮겨~~~~~~~~~
	// id와 pwd가 매칭되는 데이터 갯수~~
	public static UserVO loginRight(String u_id, String pwd) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("u_id", u_id);
		map.put("pwd", pwd);
		
		UserVO vo = new UserVO();
		SqlSession ss = DBService.getFactory().openSession();
		vo = ss.selectOne("post.login",map);
		ss.close();
		return vo;
	}
}







