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
		System.out.println("userVO vo : " + vo);
		String guid = vo.getU_id();
		int num;
		if(vo != null) { //-- 로그인 가능 : id와 u_idx를 저장 
			System.out.println("책갈피1-1");
			num = 1;
			result = "tempo.jsp";
		} else {
			num = 0;
			result = "login.jsp";
		}
		request.setAttribute("logChk", num);
		return result;
	}
	
	
}
