package com.sns.user.db;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import org.apache.ibatis.session.SqlSession;

import com.sns.mybatis.DBService;
import com.sun.org.apache.xpath.internal.SourceTree;

public class UserDAO {
	
	
	// 회원정보 수정
	public static void updatePro(UserVO uv) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.update("user.updateProfile", uv);
		ss.close();
	}
	
	
	// LIKE 삭제
	public static void deleteLike(String u_id) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.delete("user.delLike", u_id);
		ss.close();
	}
	
	
	// comment 삭제
	public static void deleteComment(String u_id) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.delete("user.delComm", u_id);
		ss.close();
	}
	
	
	// feed 삭제
	public static void deleteFeed(String u_id) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.delete("user.delFeed", u_id);
		ss.close();
	}
	
	// follow 삭제
	public static void deleteFollow(String u_id) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.delete("user.delFollow", u_id);
		ss.close();
	}
	
	// 검색 id, bio
	public static List<UserVO> searchid(String id) {
		SqlSession ss = DBService.getFactory().openSession();
		List<UserVO> list =ss.selectList("feed.select_id_bio",id);
		System.out.println(list);
		ss.close();
		return list;//dao
	}
	
	//delete
	public static void delete(String u_id, String delkeyword) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("u_id",u_id);
		map.put("delkeyword", delkeyword);
		
		SqlSession ss= DBService.getFactory().openSession(true);
		ss.delete("user.delete",map);//반환값이 없으므로 안담음
		ss.close();
		
	}
	
	public boolean checkId (String uid) {
		boolean exist; 
		SqlSession ss = DBService.getFactory().openSession();
		int num = ss.selectOne("user.exist", uid);
		if (num == 1) {
			exist = true;
		} else {
			exist = false;
		}
		ss.close();
		return exist;
	}
	
	public int signUp (UserVO vo) {
		int result = 0;
		SqlSession ss = DBService.getFactory().openSession(true);
		result = ss.insert("user.signUp", vo);
		ss.close();
		return result;
	}
	
	public String findID (UserVO vo) {
		String id = "";
		SqlSession ss = DBService.getFactory().openSession();
		id = ss.selectOne("user.findID", vo);
		ss.close();
		return id;
	}
	public String findPWD (UserVO vo) {
		String id = "";
		SqlSession ss = DBService.getFactory().openSession();
		id = ss.selectOne("user.findPWD", vo);
		ss.close();
		return id;
	}
	
	// id와 pwd가 매칭되는 데이터 갯수~~
	public static UserVO loginRight(String u_id, String pwd) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("u_id", u_id);
		map.put("pwd", pwd);
		
		UserVO vo = new UserVO();
		SqlSession ss = DBService.getFactory().openSession();
		vo = ss.selectOne("feed.login",map);
		ss.close();
		return vo;
	}
	
	
}
