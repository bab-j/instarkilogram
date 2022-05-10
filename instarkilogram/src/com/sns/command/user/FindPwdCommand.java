package com.sns.command.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sns.user.db.UserDAO;
import com.sns.user.db.UserVO;

public class FindPwdCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UserDAO dao = new UserDAO();
		UserVO vo = new UserVO();
		int check = 0;
		vo.setU_id(request.getParameter("uid"));
		vo.setEmail(request.getParameter("email"));
		vo.setPhone(request.getParameter("phone"));
		vo.setBirth(request.getParameter("birth"));
		
		String pwd = dao.findPWD(vo);
		if (pwd == null) {
			check = 1;
		}
		request.setAttribute("findPwd", pwd);
		request.setAttribute("check", check);
		return "findPwdOk.jsp";
	}

}
