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
		System.out.println("uid : " + uId);
		System.out.println("upwd : " + upwd);
		
		UserVO vo = FeedDAO.loginRight(uId, upwd);
		System.out.println("command 실행~~");
		System.out.println(vo);
		System.out.println("vo 출력 후");
		String logChk = "null";
		HttpSession session = request.getSession();
		if(vo != null) { //-- 로그인 가능 : id와 u_idx를 저장 
			logChk = "ok";
			result = "main_feed.jsp";
			session.setAttribute("uIdx", vo.getU_idx());
		} else { 
			logChk = "fail";
			result = "loginFail.jsp";
		}
		System.out.println("logChk 설정 전");
		session.setAttribute("logChk", logChk);
		System.out.println("logChk 설정 후");
		return result;
	}
	
	
}
