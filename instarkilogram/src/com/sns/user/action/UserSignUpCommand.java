package com.sns.user.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sns.user.db.UserDAO;
import com.sns.user.db.UserVO;

public class UserSignUpCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserVO vo = new UserVO();
		UserDAO uDao = new UserDAO();
		vo.setuId(request.getParameter("uID"));
		vo.setPwd(request.getParameter("upwd"));
		vo.setEmail(request.getParameter("email"));
		vo.setName(request.getParameter("name"));
		vo.setPhone(request.getParameter("phone"));
		vo.setBirth(request.getParameter("birth"));
		
		int result = uDao.signUp(vo);
		
		System.out.println("result : " + result);
		
		return "login.jsp";
	}

}
