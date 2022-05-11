package com.sns.command.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.PageContext;

import com.sns.user.db.UserDAO;

public class UserIdChkCommand implements Command{
	UserDAO udao = new UserDAO();
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int login = 43;
		String uid = request.getParameter("uid").trim();
		
		if(uid.equals("")){
			login = 1;
			request.setAttribute("login", login);
			return "signUp.jsp";
			
		}
		if(udao.checkId(uid)) {
			//System.out.println("아이디가 존재합니다");
			login = 1;
		} else {
			//System.out.println("사용 가능한 아이디입니다");
			login = 0;
		}
		request.setAttribute("login", login);
		request.setAttribute("uid", uid);
		return "signUp.jsp";
	}

}
