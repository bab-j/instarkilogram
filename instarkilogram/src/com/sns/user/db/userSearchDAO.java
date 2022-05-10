package com.sns.user.db;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import org.apache.ibatis.session.SqlSession;

import com.sns.mybatis.DBService;
import com.sun.org.apache.xpath.internal.SourceTree;

public class userSearchDAO {

	// LIKE 삭제
	public static void deleteLike(String u_id) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.delete("usersearch.delLike", u_id);
		ss.close();
	}
	
	
	// comment 삭제
	public static void deleteComment(String u_id) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.delete("usersearch.delComm", u_id);
		ss.close();
	}
	
	
	// feed 삭제
	public static void deleteFeed(String u_id) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.delete("usersearch.delFeed", u_id);
		ss.close();
	}
	
	// follow 삭제
	public static void deleteFollow(String u_id) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.delete("usersearch.delFollow", u_id);
		ss.close();
	}
	
	
	public static List<UserVO> searchid(String id) {
		
		SqlSession ss = DBService.getFactory().openSession();
		List<UserVO> list =ss.selectList("usersearch.select_id_bio",id);
		System.out.println(list);
		ss.close();
		System.out.println("dao.searchid 실행");
		
		return list;//dao
	}
	
	//delete
	public static void delete(String u_id, String delkeyword) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("u_id",u_id);
		map.put("delkeyword", delkeyword);
		
		SqlSession ss= DBService.getFactory().openSession(true);
		ss.delete("usersearch.delete",map);//반환값이 없으므로 안담음
		ss.close();
		
	}
	
	
}
