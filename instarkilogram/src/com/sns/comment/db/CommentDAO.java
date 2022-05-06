package com.sns.comment.db;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.sns.mybatis.DBService;

public class CommentDAO {
	//댓글 DB에 삽입 ----->>>> 메인피드에서 게시물 클릭하고 게시물 상세 페이지로 오면 게시물 idx 넘겨 받아서 댓글 입력, 화면출력
	public static int insertComm(CommentVO vo) {
		int result = 0;
		
		SqlSession ss = DBService.getFactory().openSession(true);
		result = ss.insert("comment.insertComm", vo);
		
		ss.close();
		
		return result;
	}
	
	//댓글 화면 출력
	public static List<CommentVO> showComm(int idx) {
		List<CommentVO> list = new ArrayList<CommentVO>();
		
		SqlSession ss = DBService.getFactory().openSession();
		list = ss.selectList("comment.showComm", idx);
		
		ss.close();
		
		return list;
	}
}
