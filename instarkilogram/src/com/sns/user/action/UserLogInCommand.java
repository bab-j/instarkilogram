package com.sns.user.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sns.feed.db.FeedDAO;
import com.sns.user.db.UserVO;

public class UserLogInCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String result;
		String uId = request.getParameter("uid");
		String upwd = request.getParameter("upwd");
		
		UserVO vo = FeedDAO.loginRight(uId, upwd);
		HttpSession session = null;
		if(vo != null) { //-- 로그인 가능 : id와 u_idx를 저장 
			session.setAttribute("u_id",vo.getU_id());
			session.setAttribute("u_idx",vo.getU_idx());
			result = "tempo.jsp";
		} else {
			result = "login.jsp";
		}
		
		return result;
	}
	
	
}
