package com.sns.user.db;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.sns.mybatis.DBService;

public class UserDAO {
	
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
	
	
	
	
}









