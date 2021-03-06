package com.sns.command.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

import com.sns.feed.db.FeedDAO;
import com.sns.user.db.UserDAO;
import com.sns.user.db.UserVO;

public class UserLogInCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String result;
		String u_id = request.getParameter("uid");
		String pwd = request.getParameter("upwd");
		System.out.println("u_id : " + u_id);
		System.out.println("pwd : " + pwd);
		
		UserVO vo = UserDAO.loginRight(u_id, pwd);
		System.out.println(vo);
		
		
		HttpSession session = request.getSession();
		if(vo != null) { //-- 로그인 가능 : id와 u_idx를 저장 
			session.setAttribute("u_id", vo.getU_id());
			session.setAttribute("u_pic", vo.getU_pic());
			UserVO uv = FeedDAO.getOtherUser(u_id);
			request.setAttribute("uv", uv);
			result = "mainFeed.jsp";
		} else { 
			result = "loginFail.jsp";
		}
		return result;
	}
	
	
}
