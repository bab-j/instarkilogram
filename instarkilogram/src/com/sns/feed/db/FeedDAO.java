package com.sns.feed.db;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.sns.mybatis.DBService;
import com.sns.user.db.UserVO;

public class FeedDAO {

	
	
	// 메인 피드 게시물 총 수량 (리스트로)ok
	public static List<FeedVO> CntMain(String u_id){
		SqlSession ss = DBService.getFactory().openSession();
		List<FeedVO> list = ss.selectList("post.totalCountMain",u_id);
		ss.close();
		return list;
	}
	
	
	
	// 한 페이지에서 보이는 게시물 불러오기 ok
	//public static List<FeedVO> mainList(String u_id){
	public static List<FeedVO> mainList(String u_id, String begin, String end){
		Map<String, String> map = new HashMap<String, String>();
		map.put("u_id", u_id);
		map.put("begin", begin);
		map.put("end",end);
		
		SqlSession ss = DBService.getFactory().openSession();
		List<FeedVO> list = ss.selectList("post.mainFeed",map );
		ss.close();
		return list;
	}
	
	
	
	// 게시물 등록ok
	public static int insert(FeedVO fvo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("post.insert", fvo);
		ss.close();
		return result;
	}
	
	//user로 옮겨~~~~~~~~~------------------------------------
	// id와 pwd가 매칭되는 데이터 갯수~~
	public static UserVO loginRight(String u_id, String pwd) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("u_id", u_id);
		map.put("pwd", pwd);
		
		UserVO vo = new UserVO();
		SqlSession ss = DBService.getFactory().openSession();
		vo = ss.selectOne("post.login",map);
		System.out.println("feedDAO.loginRight() 실행완");
		ss.close();
		return vo;
	}
}







