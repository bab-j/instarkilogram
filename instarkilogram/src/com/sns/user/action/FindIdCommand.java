package com.sns.user.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sns.user.db.UserDAO;
import com.sns.user.db.UserVO;

public class FindIdCommand implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UserDAO dao = new UserDAO();
		UserVO vo = new UserVO();
		int check = 0;
		vo.setEmail(request.getParameter("email"));
		vo.setPhone(request.getParameter("phone"));
		vo.setBirth(request.getParameter("birth"));
		
		String id = dao.findID(vo);
		if (id == null) {
			check = 1;
		}
		request.setAttribute("findId", id);
		request.setAttribute("check", check);
		return "findIdOk.jsp";
	}

}
