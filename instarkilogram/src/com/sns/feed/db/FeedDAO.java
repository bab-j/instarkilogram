package com.sns.feed.db;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.sns.comment.db.CommentVO;
import com.sns.follow.FollowVO;
import com.sns.mybatis.DBService;
import com.sns.user.db.UserVO;

public class FeedDAO {

	
	// 내용검색
	public static List<FeedVO> searchFeed(String content){
		SqlSession ss = DBService.getFactory().openSession();
		List<FeedVO> list = ss.selectList("feed.searchContent", content);
		ss.close();
		return list;
	}
	
	
	// comment 입력하기
	public static void insertComment(CommentVO cv ) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.insert("feed.wrtComment", cv);
		ss.close();
	}
	
	
	//f_idx로 commentVO 가져오기
	public static List<CommentVO> postComments(int f_idx){
		SqlSession ss = DBService.getFactory().openSession();
		List<CommentVO> list = ss.selectList("feed.getComment", f_idx);
		ss.close();
		return list;
	}
	
	
	
	
	
	// 언팔로우
	public static void deleteFollow(String u_id, String f_id) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("u_id", u_id);
		map.put("f_id", f_id);
		
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.delete("feed.unFollow", map);
		ss.close();
	}
	
	
	// 팔로우 입력
	public static void insertFollow(String u_id, String f_id) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("u_id", u_id);
		map.put("f_id", f_id);
		
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.insert("feed.followGo",map);
		ss.close();
	}
	
	
	// 팔로우 상태(버튼)
	public static FollowVO followChk(String u_id, String f_id) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("u_id", u_id);
		map.put("f_id", f_id);
		
		SqlSession ss = DBService.getFactory().openSession();
		FollowVO result = ss.selectOne("feed.followCheck",map);
		ss.close();
		return result;
	}
	
	
	// 유저의 팔로잉 목록
	public static List<FollowVO> followingList(String f_id) {
		SqlSession ss = DBService.getFactory().openSession();
		List<FollowVO> list = ss.selectList("feed.myFollowing", f_id);
		ss.close();
		return list;
	}
	
	
	// 유저의 팔로워 목록
	public static List<FollowVO> followerList(String f_id){
		SqlSession ss = DBService.getFactory().openSession();
		List<FollowVO> list = ss.selectList("feed.myFollower", f_id);
		ss.close();
		return list;
	}
	
	
	// f_id로 본인 작성 게시글 리스트 조회
	public static List<FeedVO> whosePosts(String f_id){
		SqlSession ss = DBService.getFactory().openSession();
		List<FeedVO> list = ss.selectList("feed.getPosts", f_id);
		ss.close();
		return list;
	}
	
	
	// f_idx(글번호)로 게시물 조회 
	public static FeedVO mainToIdvPost(int f_idx) {
		SqlSession ss = DBService.getFactory().openSession();
		FeedVO vo = ss.selectOne("feed.idvPost", f_idx);
		ss.close();
		return vo;
	}
	
	
	// 메인 피드 게시물 총 수량 (리스트로)ok
	public static List<FeedVO> CntMain(String u_id){
		SqlSession ss = DBService.getFactory().openSession();
		List<FeedVO> list = ss.selectList("feed.totalCountMain",u_id);
		ss.close();
		return list;
	}
	
	
	
	// 한 페이지에서 보이는 게시물 불러오기 ok
	public static List<FeedVO> mainList(String u_id, String begin, String end){
		Map<String, String> map = new HashMap<String, String>();
		map.put("u_id", u_id);
		map.put("begin", begin);
		map.put("end",end);
		
		SqlSession ss = DBService.getFactory().openSession();
		List<FeedVO> list = ss.selectList("feed.mainFeed",map );
		ss.close();
		return list;
	}
	
	
	
	// 게시물 등록ok
	public static int insert(FeedVO fvo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		int result = ss.insert("feed.insert", fvo);
		ss.close();
		return result;
	}
	
	//u_id로 유저정보 조회
	public static UserVO getOtherUser(String f_id) {
		SqlSession ss = DBService.getFactory().openSession();
		UserVO uv = ss.selectOne("feed.otherUser", f_id);
		ss.close();
		return uv;
	}
	
	//------------------------------------------------내가 고친거
	
	//좋아요 데이터 존재여부 가져오기
	public static int likeOk(FeedVO fvo) {
		int result = 0;
		SqlSession ss = DBService.getFactory().openSession();
		result = ss.selectOne("feed.likeOk", fvo);
		ss.close();
		return result;
	}
	//좋아요 클릭시 테이블에 데이터 추가(like의 경우)
	public static void addLike(FeedVO fvo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.insert("feed.addLike", fvo);
		ss.close();
		
	}
	//좋아요 클릭시 테이블에 데이터 삭제(unlike의 경우)
	public static void delLike(FeedVO fvo) {
		SqlSession ss = DBService.getFactory().openSession(true);
		ss.delete("feed.delLike", fvo);
		ss.close();
	}
	//좋아요 갯수 카운트해서 출력
	public static int countLike(int f_idx) {
		SqlSession ss = DBService.getFactory().openSession();
		int result = ss.selectOne("feed.countLike", f_idx);
		ss.close();
		return result;
	}
}







