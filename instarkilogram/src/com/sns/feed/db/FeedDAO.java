package com.sns.feed.db;

import java.util.ArrayList;
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
	
	// 메인 피드 불러오기
	public static List<FeedVO> selectMain(int u_idx){
		SqlSession ss = DBService.getFactory().openSession();
		ss.selectList("post.mainFeed")
		
		return
	}
	
	
	//user로 옮겨~~~~~~~~~
	// id와 pwd가 매칭되는 데이터 갯수~~
	public static UserVO loginRight(String uId, String pwd) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("uId", uId);
		map.put("pwd", pwd);
		
		UserVO vo = new UserVO();
		SqlSession ss = DBService.getFactory().openSession();
		vo = ss.selectOne("post.login",map);
		ss.close();
		return vo;
	}
}







