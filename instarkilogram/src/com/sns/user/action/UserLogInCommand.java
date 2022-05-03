package com.sns.user.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

import com.sns.feed.db.FeedDAO;
import com.sns.user.db.UserVO;

public class UserLogInCommand implements Command{

	String logChk = "null";
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String result;
		String uId = request.getParameter("uid");
		String upwd = request.getParameter("upwd");
		
		HttpSession session = request.getSession();
		UserVO vo = FeedDAO.loginRight(uId, upwd);
		System.out.println("userVO vo : " + vo);
		
		if(vo != null) { //-- 로그인 가능 : id와 u_idx를 저장 
			System.out.println("vo 있을 有");
			logChk = "ok";
			result = "tempUser.jsp";
			System.out.println("getU_idx : " + vo.getU_idx());
			session.setAttribute("u_idx", vo.getU_idx());
			System.out.println("u_idx 세션 설정 후");
		} else { 
			System.out.println("vo 없을 無");
			logChk = "fail";
			result = "login.jsp";
		}
		session.setAttribute("logChk", logChk);
		return result;
	}
	
	
}
